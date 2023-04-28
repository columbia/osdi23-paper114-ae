; ModuleID = 'arch/arm64/kernel/cpufeature.c'
source_filename = "arch/arm64/kernel/cpufeature.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpufeature__378_1348_aarch32_el0_sysfs_init6:\09\09\09"
module asm ".long\09aarch32_el0_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4s.init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpufeature__380_2982_init_32bit_el0_mask4s:\09\09\09"
module asm ".long\09init_32bit_el0_mask - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_cpufeature__382_3090_enable_mrs_emulation1:\09\09\09"
module asm ".long\09enable_mrs_emulation - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.arm64_ftr_override = type { i64, i64 }
%struct.arm64_ftr_bits = type { i8, i8, i8, i32, i8, i8, i64 }
%struct.arm64_ftr_reg = type { i8*, i64, i64, i64, i64, %struct.arm64_ftr_override*, %struct.arm64_ftr_bits* }
%struct.cpumask = type { [4 x i64] }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.arm64_cpu_capabilities = type { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, %union.anon.73, %struct.arm64_cpu_capabilities* }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.midr_range, %struct.arm64_midr_revidr* }
%struct.midr_range = type { i32, i32, i32 }
%struct.arm64_midr_revidr = type { i32, i32 }
%struct.__ftr_reg_entry = type { i32, %struct.arm64_ftr_reg* }
%struct.anon.75 = type { i32, i8, i8, i8, i8, i64 }
%struct.pgd_t = type { i64 }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.page = type { i64, %union.anon.2, %union.anon.67, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.72, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.55, %struct.list_head, %struct.list_head, %union.anon.56 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.53, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.38, %union.anon.39, i32 }
%struct.request_queue = type opaque
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.52, i32, [12 x i8] }
%union.anon.52 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.54, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.54 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.70 = type { %struct.callback_head }
%union.anon.71 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.57 }
%union.anon.57 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.58, %union.anon.59 }
%union.anon.58 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.59 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.63 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.61, %struct.qspinlock }
%union.anon.61 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.63 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [48 x i8] }
%struct.anon.34 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.68, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.68 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type opaque
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_attribute = type { %struct.attribute, {}*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.secondary_data = type { %struct.task_struct*, i64 }
%struct.cpuinfo_arm64 = type { %struct.cpu, %struct.kobject, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.cpuinfo_32bit, i64 }
%struct.cpu = type { i32, i32, %struct.device }
%struct.cpuinfo_32bit = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.undef_hook = type { %struct.list_head, i32, i32, i64, i64, i32 (%struct.pt_regs*, i32)* }
%struct.pt_regs = type { %union.anon.76, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.76 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@arm64_use_ng_mappings = dso_local local_unnamed_addr global i8 0, align 4
@arm64_mismatched_32bit_el0 = dso_local global %struct.static_key_false zeroinitializer, align 4
@arm64_const_caps_ready = dso_local global %struct.static_key_false zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"\010CPU features: 0x%*pb\0A\00", align 1
@cpu_hwcaps = dso_local global [1 x i64] zeroinitializer, align 8
@cpu_hwcap_keys = dso_local global [61 x %struct.static_key_false] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SYS_CTR_EL0\00", align 1
@no_override = internal global %struct.arm64_ftr_override zeroinitializer, section ".data..ro_after_init", align 8
@ftr_ctr = internal constant [9 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 0, i8 31, i8 1, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 29, i8 1, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 28, i8 1, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 3, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 3, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 16, i8 4, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 0, i32 0, i8 14, i8 2, i64 2 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@arm64_ftr_reg_ctrel0 = dso_local global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_ctr, i32 0, i32 0) }, align 8
@update_cpu_features.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\014CPU features: Unsupported CPU feature variation detected.\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [4 x i64]], align 8
@cpu_32bit_el0_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__setup_str_parse_32bit_el0_param = internal constant [27 x i8] c"allow_mismatched_32bit_el0\00", section ".init.rodata", align 1
@__setup_parse_32bit_el0_param = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__setup_str_parse_32bit_el0_param, i32 0, i32 0), i32 (i8*)* @parse_32bit_el0_param, i32 1 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_aarch32_el0_sysfs_init379 = internal global i8* bitcast (i32 ()* @aarch32_el0_sysfs_init to i8*), section ".discard.addressable", align 8
@__setup_str_parse_kpti = internal constant [5 x i8] c"kpti\00", section ".init.rodata", align 1
@__setup_parse_kpti = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__setup_str_parse_kpti, i32 0, i32 0), i32 (i8*)* @parse_kpti, i32 1 }, section ".init.setup", align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_hwcaps_ptrs = internal unnamed_addr global [61 x %struct.arm64_cpu_capabilities*] zeroinitializer, section ".data..ro_after_init", align 8
@elf_hwcap = internal unnamed_addr global i64 0, section ".data..read_mostly", align 8
@compat_elf_hwcaps = internal constant [1 x %struct.arm64_cpu_capabilities] zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"\014CPU features: No Cache Writeback Granule information, assuming %d\0A\00", align 1
@__UNIQUE_ID___addressable_init_32bit_el0_mask381 = internal global i8* bitcast (i32 ()* @init_32bit_el0_mask to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_enable_mrs_emulation383 = internal global i8* bitcast (i32 ()* @enable_mrs_emulation to i8*), section ".discard.addressable", align 8
@__meltdown_safe = internal unnamed_addr global i1 false, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Mitigation: PTI\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Vulnerable\0A\00", align 1
@boot_capabilities = dso_local global [1 x i64] zeroinitializer, align 8
@id_aa64mmfr1_override = dso_local global %struct.arm64_ftr_override zeroinitializer, section ".data..ro_after_init", align 8
@id_aa64pfr1_override = dso_local global %struct.arm64_ftr_override zeroinitializer, section ".data..ro_after_init", align 8
@id_aa64isar1_override = dso_local global %struct.arm64_ftr_override zeroinitializer, section ".data..ro_after_init", align 8
@arm64_ftr_regs = internal constant [36 x %struct.__ftr_reg_entry] [%struct.__ftr_reg_entry { i32 1573120, %struct.arm64_ftr_reg* @.compoundliteral }, %struct.__ftr_reg_entry { i32 1573152, %struct.arm64_ftr_reg* @.compoundliteral.12 }, %struct.__ftr_reg_entry { i32 1573184, %struct.arm64_ftr_reg* @.compoundliteral.14 }, %struct.__ftr_reg_entry { i32 1573248, %struct.arm64_ftr_reg* @.compoundliteral.16 }, %struct.__ftr_reg_entry { i32 1573280, %struct.arm64_ftr_reg* @.compoundliteral.18 }, %struct.__ftr_reg_entry { i32 1573312, %struct.arm64_ftr_reg* @.compoundliteral.20 }, %struct.__ftr_reg_entry { i32 1573344, %struct.arm64_ftr_reg* @.compoundliteral.22 }, %struct.__ftr_reg_entry { i32 1573376, %struct.arm64_ftr_reg* @.compoundliteral.24 }, %struct.__ftr_reg_entry { i32 1573408, %struct.arm64_ftr_reg* @.compoundliteral.26 }, %struct.__ftr_reg_entry { i32 1573440, %struct.arm64_ftr_reg* @.compoundliteral.28 }, %struct.__ftr_reg_entry { i32 1573472, %struct.arm64_ftr_reg* @.compoundliteral.30 }, %struct.__ftr_reg_entry { i32 1573504, %struct.arm64_ftr_reg* @.compoundliteral.32 }, %struct.__ftr_reg_entry { i32 1573536, %struct.arm64_ftr_reg* @.compoundliteral.34 }, %struct.__ftr_reg_entry { i32 1573568, %struct.arm64_ftr_reg* @.compoundliteral.36 }, %struct.__ftr_reg_entry { i32 1573600, %struct.arm64_ftr_reg* @.compoundliteral.38 }, %struct.__ftr_reg_entry { i32 1573632, %struct.arm64_ftr_reg* @.compoundliteral.40 }, %struct.__ftr_reg_entry { i32 1573664, %struct.arm64_ftr_reg* @.compoundliteral.42 }, %struct.__ftr_reg_entry { i32 1573696, %struct.arm64_ftr_reg* @.compoundliteral.44 }, %struct.__ftr_reg_entry { i32 1573760, %struct.arm64_ftr_reg* @.compoundliteral.46 }, %struct.__ftr_reg_entry { i32 1573792, %struct.arm64_ftr_reg* @.compoundliteral.48 }, %struct.__ftr_reg_entry { i32 1573824, %struct.arm64_ftr_reg* @.compoundliteral.50 }, %struct.__ftr_reg_entry { i32 1573888, %struct.arm64_ftr_reg* @.compoundliteral.52 }, %struct.__ftr_reg_entry { i32 1573920, %struct.arm64_ftr_reg* @.compoundliteral.54 }, %struct.__ftr_reg_entry { i32 1574016, %struct.arm64_ftr_reg* @.compoundliteral.56 }, %struct.__ftr_reg_entry { i32 1574144, %struct.arm64_ftr_reg* @.compoundliteral.58 }, %struct.__ftr_reg_entry { i32 1574176, %struct.arm64_ftr_reg* @.compoundliteral.60 }, %struct.__ftr_reg_entry { i32 1574400, %struct.arm64_ftr_reg* @.compoundliteral.62 }, %struct.__ftr_reg_entry { i32 1574432, %struct.arm64_ftr_reg* @.compoundliteral.64 }, %struct.__ftr_reg_entry { i32 1574656, %struct.arm64_ftr_reg* @.compoundliteral.66 }, %struct.__ftr_reg_entry { i32 1574688, %struct.arm64_ftr_reg* @.compoundliteral.68 }, %struct.__ftr_reg_entry { i32 1574720, %struct.arm64_ftr_reg* @.compoundliteral.70 }, %struct.__ftr_reg_entry { i32 1577472, %struct.arm64_ftr_reg* @.compoundliteral.72 }, %struct.__ftr_reg_entry { i32 1638528, %struct.arm64_ftr_reg* @.compoundliteral.74 }, %struct.__ftr_reg_entry { i32 1769504, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0 }, %struct.__ftr_reg_entry { i32 1769696, %struct.arm64_ftr_reg* @.compoundliteral.76 }, %struct.__ftr_reg_entry { i32 1826816, %struct.arm64_ftr_reg* @.compoundliteral.78 }], align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"%s has invalid feature at shift %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s has feature overlap at shift %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((0) << 5))\00", align 1
@ftr_id_pfr0 = internal constant [7 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([7 x %struct.arm64_ftr_bits], [7 x %struct.arm64_ftr_bits]* @ftr_id_pfr0, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((1) << 5))\00", align 1
@ftr_id_pfr1 = internal constant [9 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.12 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_id_pfr1, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((2) << 5))\00", align 1
@ftr_id_dfr0 = internal constant [8 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 1, i8 0, i8 1, i32 1, i8 24, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.14 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([8 x %struct.arm64_ftr_bits], [8 x %struct.arm64_ftr_bits]* @ftr_id_dfr0, i32 0, i32 0) }, align 8
@.str.15 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((4) << 5))\00", align 1
@ftr_id_mmfr0 = internal constant [9 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 1, i8 0, i8 1, i32 1, i8 28, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 1, i8 0, i8 1, i32 1, i8 8, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.16 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_id_mmfr0, i32 0, i32 0) }, align 8
@.str.17 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((5) << 5))\00", align 1
@ftr_generic_32bits = internal constant [9 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.18 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.19 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((6) << 5))\00", align 1
@.compoundliteral.20 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.21 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((7) << 5))\00", align 1
@.compoundliteral.22 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.21, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((0) << 5))\00", align 1
@ftr_id_isar0 = internal constant [8 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.24 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([8 x %struct.arm64_ftr_bits], [8 x %struct.arm64_ftr_bits]* @ftr_id_isar0, i32 0, i32 0) }, align 8
@.str.25 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((1) << 5))\00", align 1
@.compoundliteral.26 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.27 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((2) << 5))\00", align 1
@.compoundliteral.28 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.27, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.29 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((3) << 5))\00", align 1
@.compoundliteral.30 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.31 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((4) << 5))\00", align 1
@ftr_id_isar4 = internal constant [9 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.32 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_id_isar4, i32 0, i32 0) }, align 8
@.str.33 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((5) << 5))\00", align 1
@ftr_id_isar5 = internal constant [7 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.34 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([7 x %struct.arm64_ftr_bits], [7 x %struct.arm64_ftr_bits]* @ftr_id_isar5, i32 0, i32 0) }, align 8
@.str.35 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((6) << 5))\00", align 1
@ftr_id_mmfr4 = internal constant [9 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 2, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.36 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.35, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_id_mmfr4, i32 0, i32 0) }, align 8
@.str.37 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((7) << 5))\00", align 1
@ftr_id_isar6 = internal constant [8 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.38 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.37, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([8 x %struct.arm64_ftr_bits], [8 x %struct.arm64_ftr_bits]* @ftr_id_isar6, i32 0, i32 0) }, align 8
@.str.39 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((0) << 5))\00", align 1
@.compoundliteral.40 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.41 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((1) << 5))\00", align 1
@.compoundliteral.42 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.41, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([9 x %struct.arm64_ftr_bits], [9 x %struct.arm64_ftr_bits]* @ftr_generic_32bits, i32 0, i32 0) }, align 8
@.str.43 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((2) << 5))\00", align 1
@ftr_mvfr2 = internal constant [3 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.44 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.43, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([3 x %struct.arm64_ftr_bits], [3 x %struct.arm64_ftr_bits]* @ftr_mvfr2, i32 0, i32 0) }, align 8
@.str.45 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((4) << 5))\00", align 1
@ftr_id_pfr2 = internal constant [3 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.46 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.45, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([3 x %struct.arm64_ftr_bits], [3 x %struct.arm64_ftr_bits]* @ftr_id_pfr2, i32 0, i32 0) }, align 8
@.str.47 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((5) << 5))\00", align 1
@ftr_id_dfr1 = internal constant [2 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 1, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.48 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.47, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([2 x %struct.arm64_ftr_bits], [2 x %struct.arm64_ftr_bits]* @ftr_id_dfr1, i32 0, i32 0) }, align 8
@.str.49 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((6) << 5))\00", align 1
@ftr_id_mmfr5 = internal constant [2 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.50 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([2 x %struct.arm64_ftr_bits], [2 x %struct.arm64_ftr_bits]* @ftr_id_mmfr5, i32 0, i32 0) }, align 8
@.str.51 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((0) << 5))\00", align 1
@ftr_id_aa64pfr0 = internal constant [16 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 60, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 56, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 48, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 44, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 40, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 36, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 1, i8 1, i8 1, i32 1, i8 20, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 1, i8 1, i8 1, i32 1, i8 16, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 4, i8 4, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 0, i8 4, i64 1 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.52 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.51, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([16 x %struct.arm64_ftr_bits], [16 x %struct.arm64_ftr_bits]* @ftr_id_aa64pfr0, i32 0, i32 0) }, align 8
@.str.53 = private unnamed_addr constant [20 x i8] c"SYS_ID_AA64PFR1_EL1\00", align 1
@ftr_id_aa64pfr1 = internal constant [6 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 0, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.54 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @id_aa64pfr1_override, %struct.arm64_ftr_bits* getelementptr inbounds ([6 x %struct.arm64_ftr_bits], [6 x %struct.arm64_ftr_bits]* @ftr_id_aa64pfr1, i32 0, i32 0) }, align 8
@.str.55 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((4) << 5))\00", align 1
@ftr_id_aa64zfr0 = internal constant [10 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 56, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 52, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 44, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 40, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.56 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.55, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([10 x %struct.arm64_ftr_bits], [10 x %struct.arm64_ftr_bits]* @ftr_id_aa64zfr0, i32 0, i32 0) }, align 8
@.str.57 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((5) << 8) | ((0) << 5))\00", align 1
@ftr_id_aa64dfr0 = internal constant [8 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 1, i8 0, i8 1, i32 1, i8 36, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 1, i8 0, i8 0, i32 0, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 0, i8 0, i8 4, i64 6 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.58 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.57, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([8 x %struct.arm64_ftr_bits], [8 x %struct.arm64_ftr_bits]* @ftr_id_aa64dfr0, i32 0, i32 0) }, align 8
@.str.59 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((5) << 8) | ((1) << 5))\00", align 1
@ftr_raz = internal constant [1 x %struct.arm64_ftr_bits] zeroinitializer, align 8
@.compoundliteral.60 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.59, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([1 x %struct.arm64_ftr_bits], [1 x %struct.arm64_ftr_bits]* @ftr_raz, i32 0, i32 0) }, align 8
@.str.61 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((6) << 8) | ((0) << 5))\00", align 1
@ftr_id_aa64isar0 = internal constant [15 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 60, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 56, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 52, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 48, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 44, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 40, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 36, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.62 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.61, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([15 x %struct.arm64_ftr_bits], [15 x %struct.arm64_ftr_bits]* @ftr_id_aa64isar0, i32 0, i32 0) }, align 8
@.str.63 = private unnamed_addr constant [21 x i8] c"SYS_ID_AA64ISAR1_EL1\00", align 1
@ftr_id_aa64isar1 = internal constant [15 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 52, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 48, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 44, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 40, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 36, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 0, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 0, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.64 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @id_aa64isar1_override, %struct.arm64_ftr_bits* getelementptr inbounds ([15 x %struct.arm64_ftr_bits], [15 x %struct.arm64_ftr_bits]* @ftr_id_aa64isar1, i32 0, i32 0) }, align 8
@.str.65 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((0) << 5))\00", align 1
@ftr_id_aa64mmfr0 = internal constant [15 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 60, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 56, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 44, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 0, i8 40, i8 4, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 0, i8 36, i8 4, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 0, i8 32, i8 4, i64 1 }, %struct.arm64_ftr_bits { i8 1, i8 0, i8 0, i32 1, i8 28, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 1, i8 0, i8 0, i32 1, i8 24, i8 4, i64 15 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.66 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.65, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([15 x %struct.arm64_ftr_bits], [15 x %struct.arm64_ftr_bits]* @ftr_id_aa64mmfr0, i32 0, i32 0) }, align 8
@.str.67 = private unnamed_addr constant [21 x i8] c"SYS_ID_AA64MMFR1_EL1\00", align 1
@ftr_id_aa64mmfr1 = internal constant [11 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 36, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 2, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.68 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @id_aa64mmfr1_override, %struct.arm64_ftr_bits* getelementptr inbounds ([11 x %struct.arm64_ftr_bits], [11 x %struct.arm64_ftr_bits]* @ftr_id_aa64mmfr1, i32 0, i32 0) }, align 8
@.str.69 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((2) << 5))\00", align 1
@ftr_id_aa64mmfr2 = internal constant [16 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 60, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 56, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 52, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 48, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 40, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 36, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 32, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 28, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 24, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 20, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 16, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 12, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 8, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 4, i8 4, i64 0 }, %struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.70 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.69, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([16 x %struct.arm64_ftr_bits], [16 x %struct.arm64_ftr_bits]* @ftr_id_aa64mmfr2, i32 0, i32 0) }, align 8
@.str.71 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((0) << 16) | ((1) << 12) | ((2) << 8) | ((0) << 5))\00", align 1
@ftr_zcr = internal constant [2 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 0, i32 1, i8 0, i8 9, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.72 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.71, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([2 x %struct.arm64_ftr_bits], [2 x %struct.arm64_ftr_bits]* @ftr_zcr, i32 0, i32 0) }, align 8
@.str.73 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((1) << 16) | ((0) << 12) | ((0) << 8) | ((4) << 5))\00", align 1
@ftr_gmid = internal constant [2 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.74 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.73, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([2 x %struct.arm64_ftr_bits], [2 x %struct.arm64_ftr_bits]* @ftr_gmid, i32 0, i32 0) }, align 8
@.str.75 = private unnamed_addr constant [68 x i8] c"(((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((7) << 5))\00", align 1
@ftr_dczid = internal constant [3 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 0, i8 4, i8 1, i64 1 }, %struct.arm64_ftr_bits { i8 0, i8 1, i8 1, i32 1, i8 0, i8 4, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.76 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.75, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([3 x %struct.arm64_ftr_bits], [3 x %struct.arm64_ftr_bits]* @ftr_dczid, i32 0, i32 0) }, align 8
@.str.77 = private unnamed_addr constant [69 x i8] c"(((3) << 19) | ((3) << 16) | ((14) << 12) | ((0) << 8) | ((0) << 5))\00", align 1
@ftr_single32 = internal constant [2 x %struct.arm64_ftr_bits] [%struct.arm64_ftr_bits { i8 0, i8 0, i8 1, i32 0, i8 0, i8 32, i64 0 }, %struct.arm64_ftr_bits zeroinitializer], align 8
@.compoundliteral.78 = internal global %struct.arm64_ftr_reg { i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.77, i32 0, i32 0), i64 0, i64 0, i64 0, i64 0, %struct.arm64_ftr_override* @no_override, %struct.arm64_ftr_bits* getelementptr inbounds ([2 x %struct.arm64_ftr_bits], [2 x %struct.arm64_ftr_bits]* @ftr_single32, i32 0, i32 0) }, align 8
@.str.79 = private unnamed_addr constant [18 x i8] c"ignoring override\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"already set\00", align 1
@.str.82 = private unnamed_addr constant [39 x i8] c"\014CPU features: %s[%d:%d]: %s to %llx\0A\00", align 1
@.str.83 = private unnamed_addr constant [57 x i8] c"\014CPU features: %s[%d:%d]: impossible override, ignored\0A\00", align 1
@arm64_errata = external dso_local constant [0 x %struct.arm64_cpu_capabilities], align 8
@.str.84 = private unnamed_addr constant [23 x i8] c"Invalid capability %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"Duplicate entry for capability %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"GIC system register CPU interface\00", align 1
@.str.88 = private unnamed_addr constant [32 x i8] c"Software prefetching using PRFM\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"Virtualization Host Extensions\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"Kernel page table isolation (KPTI)\00", align 1
@.str.91 = private unnamed_addr constant [59 x i8] c"Data cache clean to the PoU not required for I/D coherence\00", align 1
@.str.92 = private unnamed_addr constant [62 x i8] c"Instruction cache invalidation not required for I/D coherence\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"Stage-2 Force Write-Back\00", align 1
@.str.94 = private unnamed_addr constant [32 x i8] c"ARMv8.4 Translation Table Level\00", align 1
@.str.95 = private unnamed_addr constant [35 x i8] c"TLB range maintenance instructions\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"CRC32 instructions\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"Speculative Store Bypassing Safe (SSBS)\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"Speculation barrier (SB)\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"RCpc load-acquire (LDAPR)\00", align 1
@arm64_features = internal constant <{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities }> <{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.87, i32 0, i32 0), i16 29, i16 68, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_useable_gicv3_cpuif, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 24, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, %struct.arm64_cpu_capabilities { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.88, i32 0, i32 0), i16 23, i16 49, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_no_hw_prefetch, void (%struct.arm64_cpu_capabilities*)* null, %union.anon.73 zeroinitializer, %struct.arm64_cpu_capabilities* null }, %struct.arm64_cpu_capabilities { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.89, i32 0, i32 0), i16 31, i16 68, i1 (%struct.arm64_cpu_capabilities*, i32)* @runs_at_el2, void (%struct.arm64_cpu_capabilities*)* @cpu_copy_el2regs, %union.anon.73 zeroinitializer, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* null, i16 1, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_32bit_el0, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 0, i8 2, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.90, i32 0, i32 0), i16 41, i16 33, i1 (%struct.arm64_cpu_capabilities*, i32)* @unmap_kernel_at_el0, void (%struct.arm64_cpu_capabilities*)* @kpti_install_ng_mappings, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 60, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* null, i16 22, i16 33, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_no_fpsimd, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 zeroinitializer, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, %struct.arm64_cpu_capabilities { i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.91, i32 0, i32 0), i16 9, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cache_idc, void (%struct.arm64_cpu_capabilities*)* @cpu_emulate_effective_ctr, %union.anon.73 zeroinitializer, %struct.arm64_cpu_capabilities* null }, %struct.arm64_cpu_capabilities { i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.92, i32 0, i32 0), i16 8, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cache_dic, void (%struct.arm64_cpu_capabilities*)* null, %union.anon.73 zeroinitializer, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i32 0, i32 0), i16 28, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* @cpu_has_fwb, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574720, i8 40, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.94, i32 0, i32 0), i16 7, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574720, i8 48, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.95, i32 0, i32 0), i16 30, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 56, i8 2, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i16 11, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 16, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.97, i32 0, i32 0), i16 39, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573920, i8 4, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.98, i32 0, i32 0), i16 27, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 36, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0), i16 20, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 20, i8 1, i8 0, i8 0, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, %struct.arm64_cpu_capabilities zeroinitializer }>, align 8
@has_useable_gicv3_cpuif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.101 = private unnamed_addr constant [67 x i8] c"\014CPU features: %s present but disabled by higher exception level\0A\00", align 1
@allow_mismatched_32bit_el0 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.102 = private unnamed_addr constant [46 x i8] c"\016CPU features: detected: 32-bit EL0 Support\0A\00", align 1
@unmap_kernel_at_el0.kpti_safe_list = internal constant [16 x %struct.midr_range] [%struct.midr_range { i32 1125059312, i32 0, i32 15728655 }, %struct.midr_range { i32 1108300128, i32 0, i32 15728655 }, %struct.midr_range { i32 1108283392, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555392, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555376, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555408, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555440, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555456, i32 0, i32 15728655 }, %struct.midr_range { i32 1091555472, i32 0, i32 15728655 }, %struct.midr_range { i32 1208995856, i32 0, i32 15728655 }, %struct.midr_range { i32 1309605952, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970304, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970320, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970352, i32 0, i32 15728655 }, %struct.midr_range { i32 1359970384, i32 0, i32 15728655 }, %struct.midr_range zeroinitializer], align 4
@.str.103 = private unnamed_addr constant [25 x i8] c"kpti command line option\00", align 1
@.str.104 = private unnamed_addr constant [30 x i8] c"ARM64_WORKAROUND_CAVIUM_27456\00", align 1
@__kpti_forced = internal unnamed_addr global i32 0, align 4
@.str.106 = private unnamed_addr constant [16 x i8] c"mitigations=off\00", align 1
@unmap_kernel_at_el0.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.107 = private unnamed_addr constant [61 x i8] c"\016CPU features: kernel page table isolation forced %s by %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@idmap_t0sz = external dso_local local_unnamed_addr global i64, align 8
@idmap_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@.str.110 = private unnamed_addr constant [95 x i8] c"\014CPU features: SANITY CHECK: Unexpected variation in %s. Boot CPU: %#016llx, CPU%d: %#016llx\0A\00", align 1
@lazy_init_32bit_cpu_features.boot_cpu_32bit_regs_overridden = internal unnamed_addr global i1 false, align 1
@cpu_subsys = external dso_local local_unnamed_addr global %struct.bus_type, align 8
@.str.111 = private unnamed_addr constant [12 x i8] c"aarch32_el0\00", align 1
@dev_attr_aarch32_el0 = internal constant { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* } { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @aarch32_el0_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.113 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.114 = private unnamed_addr constant [86 x i8] c"\012CPU features: CPU%d: Detected conflict for capability %d (%s), System: %d, CPU: %d\0A\00", align 1
@secondary_data = external dso_local global %struct.secondary_data, align 8
@.str.115 = private unnamed_addr constant [30 x i8] c"\016CPU features: detected: %s\0A\00", align 1
@.str.116 = private unnamed_addr constant [69 x i8] c"\014CPU features: Attempt to set an illegal CPU capability (%d >= %d)\0A\00", align 1
@.str.117 = private unnamed_addr constant [42 x i8] c"\012CPU features: CPU%d: missing HWCAP: %s\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.119 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_PMULL\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"KERNEL_HWCAP_AES\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_SHA1\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_SHA2\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"KERNEL_HWCAP_SHA512\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_CRC32\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"KERNEL_HWCAP_ATOMICS\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"KERNEL_HWCAP_ASIMDRDM\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_SHA3\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"KERNEL_HWCAP_SM3\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"KERNEL_HWCAP_SM4\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"KERNEL_HWCAP_ASIMDDP\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"KERNEL_HWCAP_ASIMDFHM\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_FLAGM\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"KERNEL_HWCAP_FLAGM2\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"KERNEL_HWCAP_RNG\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"KERNEL_HWCAP_FP\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_FPHP\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_ASIMD\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"KERNEL_HWCAP_ASIMDHP\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"KERNEL_HWCAP_DIT\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_DCPOP\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"KERNEL_HWCAP_DCPODP\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_JSCVT\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_FCMA\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_LRCPC\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"KERNEL_HWCAP_ILRCPC\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_FRINT\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"KERNEL_HWCAP_SB\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_BF16\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"KERNEL_HWCAP_DGH\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_I8MM\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"KERNEL_HWCAP_USCAT\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"KERNEL_HWCAP_SSBS\00", align 1
@arm64_elf_hwcaps = internal constant <{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities }> <{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 4, i8 2, i8 1, i8 0, i64 4 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.121, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 4, i8 1, i8 1, i8 0, i64 3 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.122, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 8, i8 1, i8 1, i8 0, i64 5 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 12, i8 1, i8 1, i8 0, i64 6 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.124, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 12, i8 2, i8 1, i8 0, i64 21 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.125, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 16, i8 1, i8 1, i8 0, i64 7 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.126, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 20, i8 2, i8 1, i8 0, i64 8 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.127, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 28, i8 1, i8 1, i8 0, i64 12 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.128, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 32, i8 1, i8 1, i8 0, i64 17 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 36, i8 1, i8 1, i8 0, i64 18 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.130, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 40, i8 1, i8 1, i8 0, i64 19 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.131, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 44, i8 1, i8 1, i8 0, i64 20 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.132, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 48, i8 1, i8 1, i8 0, i64 23 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 52, i8 1, i8 1, i8 0, i64 27 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.134, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 52, i8 2, i8 1, i8 0, i64 39 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.135, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574400, i8 60, i8 1, i8 1, i8 0, i64 48 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 16, i8 0, i8 1, i8 1, i64 0 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 16, i8 1, i8 1, i8 1, i64 9 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 20, i8 0, i8 1, i8 1, i64 1 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.139, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 20, i8 1, i8 1, i8 1, i64 10 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573888, i8 48, i8 1, i8 1, i8 1, i64 24 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.141, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 0, i8 1, i8 1, i8 0, i64 16 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 0, i8 2, i8 1, i8 0, i64 32 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.143, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 12, i8 1, i8 1, i8 0, i64 13 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 16, i8 1, i8 1, i8 0, i64 14 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 20, i8 1, i8 1, i8 0, i64 15 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.146, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 20, i8 2, i8 1, i8 0, i64 26 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.147, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 32, i8 1, i8 1, i8 0, i64 40 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 36, i8 1, i8 1, i8 0, i64 29 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.149, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 44, i8 1, i8 1, i8 0, i64 46 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.150, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 48, i8 1, i8 1, i8 0, i64 47 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.151, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574432, i8 52, i8 1, i8 1, i8 0, i64 45 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1574720, i8 32, i8 1, i8 1, i8 0, i64 25 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* } { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.153, i32 0, i32 0), i16 0, i16 18, i1 (%struct.arm64_cpu_capabilities*, i32)* @has_cpuid_feature, void (%struct.arm64_cpu_capabilities*)* null, { %struct.anon.75, [8 x i8] } { %struct.anon.75 { i32 1573920, i8 4, i8 2, i8 1, i8 0, i64 28 }, [8 x i8] undef }, %struct.arm64_cpu_capabilities* null }, %struct.arm64_cpu_capabilities zeroinitializer }>, align 8
@.str.155 = private unnamed_addr constant [34 x i8] c"arm64/mismatched_32bit_el0:online\00", align 1
@enable_mismatched_32bit_el0.lucky_winner = internal unnamed_addr global i32 -1, align 4
@cpu_data = external dso_local global %struct.cpuinfo_arm64, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@__cpu_active_mask = external dso_local global %struct.cpumask, align 8
@.str.156 = private unnamed_addr constant [101 x i8] c"\016CPU features: Asymmetric 32-bit EL0 support detected on CPU %u; CPU hot-unplug disabled on CPU %u\0A\00", align 1
@mrs_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 -65536, i32 -717750272, i64 31, i64 0, i32 (%struct.pt_regs*, i32)* @emulate_mrs }, align 8
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_aarch32_el0_sysfs_init379 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_enable_mrs_emulation383 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_32bit_el0_mask381 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_parse_32bit_el0_param to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_parse_kpti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dump_cpu_features() local_unnamed_addr #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 61, [1 x i64]* noundef nonnull @cpu_hwcaps) #20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @init_cpu_features(%struct.cpuinfo_arm64* noundef %info) local_unnamed_addr #2 section ".init.text" {
entry:
  call fastcc void @sort_ftr_regs() #21
  %reg_ctr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 2
  %0 = load i64, i64* %reg_ctr, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1769504, i64 noundef %0) #22
  %reg_dczid = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 4
  %1 = load i64, i64* %reg_dczid, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1769696, i64 noundef %1) #22
  %reg_cntfrq = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 3
  %2 = load i64, i64* %reg_cntfrq, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1826816, i64 noundef %2) #22
  %reg_id_aa64dfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 8
  %3 = load i64, i64* %reg_id_aa64dfr0, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574144, i64 noundef %3) #22
  %reg_id_aa64dfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 9
  %4 = load i64, i64* %reg_id_aa64dfr1, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574176, i64 noundef %4) #22
  %reg_id_aa64isar0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 10
  %5 = load i64, i64* %reg_id_aa64isar0, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574400, i64 noundef %5) #22
  %reg_id_aa64isar1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 11
  %6 = load i64, i64* %reg_id_aa64isar1, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574432, i64 noundef %6) #22
  %reg_id_aa64mmfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 12
  %7 = load i64, i64* %reg_id_aa64mmfr0, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574656, i64 noundef %7) #22
  %reg_id_aa64mmfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 13
  %8 = load i64, i64* %reg_id_aa64mmfr1, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574688, i64 noundef %8) #22
  %reg_id_aa64mmfr2 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 14
  %9 = load i64, i64* %reg_id_aa64mmfr2, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574720, i64 noundef %9) #22
  %reg_id_aa64pfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 15
  %10 = load i64, i64* %reg_id_aa64pfr0, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573888, i64 noundef %10) #22
  %reg_id_aa64pfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 16
  %11 = load i64, i64* %reg_id_aa64pfr1, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573920, i64 noundef %11) #22
  %reg_id_aa64zfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 17
  %12 = load i64, i64* %reg_id_aa64zfr0, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1574016, i64 noundef %12) #22
  %13 = load i64, i64* %reg_id_aa64pfr0, align 8
  %call = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %13) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %aarch32 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 18
  call fastcc void @init_32bit_cpu_features(%struct.cpuinfo_32bit* noundef %aarch32) #22
  %.pre = load i64, i64* %reg_id_aa64pfr0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = phi i64 [ %.pre, %if.then ], [ %13, %entry ]
  %call3 = call fastcc i1 @id_aa64pfr0_sve(i64 noundef %14) #22
  br i1 %call3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %reg_zcr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 19
  %15 = load i64, i64* %reg_zcr, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1577472, i64 noundef %15) #22
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %16 = load i64, i64* %reg_id_aa64pfr1, align 8
  %call7 = call fastcc i1 @id_aa64pfr1_mte(i64 noundef %16) #22
  br i1 %call7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %reg_gmid = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 7
  %17 = load i64, i64* %reg_gmid, align 8
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1638528, i64 noundef %17) #22
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  call fastcc void @init_cpu_hwcaps_indirect_list() #21
  call fastcc void @setup_boot_cpu_capabilities() #21
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @sort_ftr_regs() unnamed_addr #2 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %cleanup118
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cleanup118 ]
  %reg = getelementptr [36 x %struct.__ftr_reg_entry], [36 x %struct.__ftr_reg_entry]* @arm64_ftr_regs, i64 0, i64 %indvars.iv, i32 1
  %0 = load %struct.arm64_ftr_reg*, %struct.arm64_ftr_reg** %reg, align 8
  %ftr_bits2 = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %0, i64 0, i32 6
  %1 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %ftr_bits2, align 8
  %width156 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %1, i64 0, i32 5
  %2 = load i8, i8* %width156, align 1
  %cmp5.not157 = icmp eq i8 %2, 0
  br i1 %cmp5.not157, label %for.end, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.body
  %name = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %0, i64 0, i32 0
  br label %for.body7

for.body7:                                        ; preds = %cleanup.for.body7_crit_edge, %for.body7.lr.ph
  %3 = phi i8 [ %2, %for.body7.lr.ph ], [ %.pre165, %cleanup.for.body7_crit_edge ]
  %4 = phi %struct.arm64_ftr_bits* [ %1, %for.body7.lr.ph ], [ %.pre, %cleanup.for.body7_crit_edge ]
  %j.0159 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %cleanup.for.body7_crit_edge ]
  %ftr_bits.0158 = phi %struct.arm64_ftr_bits* [ %1, %for.body7.lr.ph ], [ %incdec.ptr, %cleanup.for.body7_crit_edge ]
  %idxprom10 = zext i32 %j.0159 to i64
  %conv13 = zext i8 %3 to i32
  %shift17 = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %4, i64 %idxprom10, i32 4
  %5 = load i8, i8* %shift17, align 8
  %conv18 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv18, %conv13
  %cmp19 = icmp ugt i32 %add, 64
  br i1 %cmp19, label %do.end, label %if.end, !prof !8

do.end:                                           ; preds = %for.body7
  %6 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* noundef %6, i32 noundef %conv18) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 763; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body7
  %cmp41 = icmp eq i32 %j.0159, 0
  br i1 %cmp41, label %cleanup, label %if.end44

if.end44:                                         ; preds = %if.end
  %7 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %ftr_bits2, align 8
  %sub = add i32 %j.0159, -1
  %idxprom46 = zext i32 %sub to i64
  %shift48 = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %7, i64 %idxprom46, i32 4
  %8 = load i8, i8* %shift48, align 8
  %conv49 = zext i8 %8 to i32
  %cmp52 = icmp ugt i32 %add, %conv49
  br i1 %cmp52, label %do.end70, label %cleanup, !prof !8

do.end70:                                         ; preds = %if.end44
  %9 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef %9, i32 noundef %conv18) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 775; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !10
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end70, %if.end
  %inc = add i32 %j.0159, 1
  %width = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftr_bits.0158, i64 1, i32 5
  %10 = load i8, i8* %width, align 1
  %cmp5.not = icmp eq i8 %10, 0
  br i1 %cmp5.not, label %for.end, label %cleanup.for.body7_crit_edge

cleanup.for.body7_crit_edge:                      ; preds = %cleanup
  %incdec.ptr = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftr_bits.0158, i64 1
  %.pre = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %ftr_bits2, align 8
  %idxprom10.phi.trans.insert = zext i32 %inc to i64
  %width12.phi.trans.insert = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %.pre, i64 %idxprom10.phi.trans.insert, i32 5
  %.pre165 = load i8, i8* %width12.phi.trans.insert, align 1
  br label %for.body7

for.end:                                          ; preds = %cleanup, %for.body
  %cmp88 = icmp eq i64 %indvars.iv, 0
  br i1 %cmp88, label %cleanup118, label %do.body92

do.body92:                                        ; preds = %for.end
  %sys_id = getelementptr [36 x %struct.__ftr_reg_entry], [36 x %struct.__ftr_reg_entry]* @arm64_ftr_regs, i64 0, i64 %indvars.iv, i32 0
  %11 = load i32, i32* %sys_id, align 8
  %12 = add nuw i64 %indvars.iv, 4294967295
  %idxprom96 = and i64 %12, 4294967295
  %sys_id98 = getelementptr [36 x %struct.__ftr_reg_entry], [36 x %struct.__ftr_reg_entry]* @arm64_ftr_regs, i64 0, i64 %idxprom96, i32 0
  %13 = load i32, i32* %sys_id98, align 8
  %cmp99 = icmp ult i32 %11, %13
  br i1 %cmp99, label %do.body109, label %cleanup118, !prof !8

do.body109:                                       ; preds = %do.body92
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 789; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !11
  unreachable

cleanup118:                                       ; preds = %do.body92, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 36
  br i1 %exitcond.not, label %for.end125, label %for.body

for.end125:                                       ; preds = %cleanup118
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_cpu_ftr_reg(i32 noundef %sys_reg, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg(i32 noundef %sys_reg) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ftr_bits = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 6
  %0 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %ftr_bits, align 8
  %width150 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %0, i64 0, i32 5
  %1 = load i8, i8* %width150, align 1
  %tobool1.not151 = icmp eq i8 %1, 0
  br i1 %tobool1.not151, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %override = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 5
  %name50 = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 0
  %user_val = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end74
  %width159 = phi i8* [ %width150, %for.body.lr.ph ], [ %width, %if.end74 ]
  %val.0158 = phi i64 [ 0, %for.body.lr.ph ], [ %call62, %if.end74 ]
  %strict_mask.0157 = phi i64 [ -1, %for.body.lr.ph ], [ %strict_mask.1, %if.end74 ]
  %ftrp.0154 = phi %struct.arm64_ftr_bits* [ %0, %for.body.lr.ph ], [ %incdec.ptr, %if.end74 ]
  %valid_mask.0153 = phi i64 [ 0, %for.body.lr.ph ], [ %or, %if.end74 ]
  %user_mask.0152 = phi i64 [ 0, %for.body.lr.ph ], [ %user_mask.1, %if.end74 ]
  %call2 = call fastcc i64 @arm64_ftr_mask(%struct.arm64_ftr_bits* noundef %ftrp.0154) #22
  %call3 = call fastcc i64 @arm64_ftr_value(%struct.arm64_ftr_bits* noundef %ftrp.0154, i64 noundef %new) #22
  %2 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %val4 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %2, i64 0, i32 0
  %3 = load i64, i64* %val4, align 8
  %call5 = call fastcc i64 @arm64_ftr_value(%struct.arm64_ftr_bits* noundef %ftrp.0154, i64 noundef %3) #22
  %mask = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %2, i64 0, i32 1
  %4 = load i64, i64* %mask, align 8
  %and = and i64 %4, %call2
  %cmp = icmp eq i64 %and, %call2
  br i1 %cmp, label %if.then7, label %if.else35

if.then7:                                         ; preds = %for.body
  %call8 = call fastcc i64 @arm64_ftr_safe_value(%struct.arm64_ftr_bits* noundef %ftrp.0154, i64 noundef %call5, i64 noundef %call3) #22
  %cmp9.not = icmp eq i64 %call5, %call8
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then7
  %neg = xor i64 %call2, -1
  %5 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %mask12 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %5, i64 0, i32 1
  %6 = load i64, i64* %mask12, align 8
  %and13 = and i64 %6, %neg
  store i64 %and13, i64* %mask12, align 8
  %7 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %val16 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %7, i64 0, i32 0
  %8 = load i64, i64* %val16, align 8
  %and17 = and i64 %8, %neg
  store i64 %and17, i64* %val16, align 8
  br label %do.end

if.else:                                          ; preds = %if.then7
  %cmp18.not = icmp eq i64 %call3, %call5
  %spec.select149 = select i1 %cmp18.not, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i64 0, i64 0)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then10
  %ftr_new.0 = phi i64 [ %call3, %if.then10 ], [ %call5, %if.else ]
  %str.0 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i64 0, i64 0), %if.then10 ], [ %spec.select149, %if.else ]
  %9 = load i8*, i8** %name50, align 8
  %shift = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 0, i32 4
  %10 = load i8, i8* %shift, align 8
  %conv = zext i8 %10 to i32
  %11 = load i8, i8* %width159, align 1
  %conv30 = zext i8 %11 to i32
  %add = add nsw i32 %conv, -1
  %sub = add nsw i32 %add, %conv30
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.82, i64 0, i64 0), i8* noundef %9, i32 noundef %sub, i32 noundef %conv, i8* noundef nonnull %str.0, i64 noundef %call5) #20
  br label %if.end61

if.else35:                                        ; preds = %for.body
  %and38 = and i64 %3, %call2
  %cmp39 = icmp eq i64 %and38, %call2
  br i1 %cmp39, label %if.then41, label %if.end61

if.then41:                                        ; preds = %if.else35
  %neg42 = xor i64 %call2, -1
  %and45 = and i64 %3, %neg42
  store i64 %and45, i64* %val4, align 8
  %12 = load i8*, i8** %name50, align 8
  %shift51 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 0, i32 4
  %13 = load i8, i8* %shift51, align 8
  %conv52 = zext i8 %13 to i32
  %14 = load i8, i8* %width159, align 1
  %conv54 = zext i8 %14 to i32
  %add55 = add nsw i32 %conv52, -1
  %sub56 = add nsw i32 %add55, %conv54
  %call59 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.83, i64 0, i64 0), i8* noundef %12, i32 noundef %sub56, i32 noundef %conv52) #20
  br label %if.end61

if.end61:                                         ; preds = %do.end, %if.else35, %if.then41
  %ftr_new.1 = phi i64 [ %call3, %if.then41 ], [ %call3, %if.else35 ], [ %ftr_new.0, %do.end ]
  %call62 = call fastcc i64 @arm64_ftr_set_value(%struct.arm64_ftr_bits* noundef %ftrp.0154, i64 noundef %val.0158, i64 noundef %ftr_new.1) #22
  %or = or i64 %call2, %valid_mask.0153
  %strict = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 0, i32 2
  %15 = load i8, i8* %strict, align 2, !range !12
  %tobool63.not = icmp eq i8 %15, 0
  %neg65 = xor i64 %call2, -1
  %and66 = select i1 %tobool63.not, i64 %neg65, i64 -1
  %strict_mask.1 = and i64 %and66, %strict_mask.0157
  %visible = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 0, i32 1
  %16 = load i8, i8* %visible, align 1, !range !12
  %tobool68.not = icmp eq i8 %16, 0
  br i1 %tobool68.not, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.end61
  %or70 = or i64 %call2, %user_mask.0152
  br label %if.end74

if.else71:                                        ; preds = %if.end61
  %17 = load i64, i64* %user_val, align 8
  %safe_val = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 0, i32 6
  %18 = load i64, i64* %safe_val, align 8
  %call72 = call fastcc i64 @arm64_ftr_set_value(%struct.arm64_ftr_bits* noundef %ftrp.0154, i64 noundef %17, i64 noundef %18) #22
  store i64 %call72, i64* %user_val, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.then69
  %user_mask.1 = phi i64 [ %or70, %if.then69 ], [ %user_mask.0152, %if.else71 ]
  %incdec.ptr = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 1
  %width = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.0154, i64 1, i32 5
  %19 = load i8, i8* %width, align 1
  %tobool1.not = icmp eq i8 %19, 0
  br i1 %tobool1.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end74
  %20 = and i64 %call62, %or
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %user_mask.0.lcssa = phi i64 [ 0, %if.end ], [ %user_mask.1, %for.end.loopexit ]
  %strict_mask.0.lcssa = phi i64 [ -1, %if.end ], [ %strict_mask.1, %for.end.loopexit ]
  %and75 = phi i64 [ 0, %if.end ], [ %20, %for.end.loopexit ]
  %sys_val = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 3
  store i64 %and75, i64* %sys_val, align 8
  %strict_mask76 = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 1
  store i64 %strict_mask.0.lcssa, i64* %strict_mask76, align 8
  %user_mask77 = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 2
  store i64 %user_mask.0.lcssa, i64* %user_mask77, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %pfr0) unnamed_addr #3 {
entry:
  %conv.i.i2 = and i64 %pfr0, 15
  %cmp = icmp eq i64 %conv.i.i2, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_32bit_cpu_features(%struct.cpuinfo_32bit* noundef readonly %info) unnamed_addr #0 {
entry:
  %reg_id_dfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 0
  %0 = load i32, i32* %reg_id_dfr0, align 4
  %conv = zext i32 %0 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573184, i64 noundef %conv) #22
  %reg_id_dfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 1
  %1 = load i32, i32* %reg_id_dfr1, align 4
  %conv1 = zext i32 %1 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573792, i64 noundef %conv1) #22
  %reg_id_isar0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 2
  %2 = load i32, i32* %reg_id_isar0, align 4
  %conv2 = zext i32 %2 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573376, i64 noundef %conv2) #22
  %reg_id_isar1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 3
  %3 = load i32, i32* %reg_id_isar1, align 4
  %conv3 = zext i32 %3 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573408, i64 noundef %conv3) #22
  %reg_id_isar2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 4
  %4 = load i32, i32* %reg_id_isar2, align 4
  %conv4 = zext i32 %4 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573440, i64 noundef %conv4) #22
  %reg_id_isar3 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 5
  %5 = load i32, i32* %reg_id_isar3, align 4
  %conv5 = zext i32 %5 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573472, i64 noundef %conv5) #22
  %reg_id_isar4 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 6
  %6 = load i32, i32* %reg_id_isar4, align 4
  %conv6 = zext i32 %6 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573504, i64 noundef %conv6) #22
  %reg_id_isar5 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 7
  %7 = load i32, i32* %reg_id_isar5, align 4
  %conv7 = zext i32 %7 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573536, i64 noundef %conv7) #22
  %reg_id_isar6 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 8
  %8 = load i32, i32* %reg_id_isar6, align 4
  %conv8 = zext i32 %8 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573600, i64 noundef %conv8) #22
  %reg_id_mmfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 9
  %9 = load i32, i32* %reg_id_mmfr0, align 4
  %conv9 = zext i32 %9 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573248, i64 noundef %conv9) #22
  %reg_id_mmfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 10
  %10 = load i32, i32* %reg_id_mmfr1, align 4
  %conv10 = zext i32 %10 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573280, i64 noundef %conv10) #22
  %reg_id_mmfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 11
  %11 = load i32, i32* %reg_id_mmfr2, align 4
  %conv11 = zext i32 %11 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573312, i64 noundef %conv11) #22
  %reg_id_mmfr3 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 12
  %12 = load i32, i32* %reg_id_mmfr3, align 4
  %conv12 = zext i32 %12 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573344, i64 noundef %conv12) #22
  %reg_id_mmfr4 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 13
  %13 = load i32, i32* %reg_id_mmfr4, align 4
  %conv13 = zext i32 %13 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573568, i64 noundef %conv13) #22
  %reg_id_mmfr5 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 14
  %14 = load i32, i32* %reg_id_mmfr5, align 4
  %conv14 = zext i32 %14 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573824, i64 noundef %conv14) #22
  %reg_id_pfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 15
  %15 = load i32, i32* %reg_id_pfr0, align 4
  %conv15 = zext i32 %15 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573120, i64 noundef %conv15) #22
  %reg_id_pfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 16
  %16 = load i32, i32* %reg_id_pfr1, align 4
  %conv16 = zext i32 %16 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573152, i64 noundef %conv16) #22
  %reg_id_pfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 17
  %17 = load i32, i32* %reg_id_pfr2, align 4
  %conv17 = zext i32 %17 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573760, i64 noundef %conv17) #22
  %reg_mvfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 18
  %18 = load i32, i32* %reg_mvfr0, align 4
  %conv18 = zext i32 %18 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573632, i64 noundef %conv18) #22
  %reg_mvfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 19
  %19 = load i32, i32* %reg_mvfr1, align 4
  %conv19 = zext i32 %19 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573664, i64 noundef %conv19) #22
  %reg_mvfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 20
  %20 = load i32, i32* %reg_mvfr2, align 4
  %conv20 = zext i32 %20 to i64
  call fastcc void @init_cpu_ftr_reg(i32 noundef 1573696, i64 noundef %conv20) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr0_sve(i64 noundef %pfr0) unnamed_addr #3 {
entry:
  %0 = and i64 %pfr0, 64424509440
  %cmp = icmp ne i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr1_mte(i64 noundef %pfr1) unnamed_addr #3 {
entry:
  %0 = and i64 %pfr1, 3584
  %cmp = icmp ne i64 %0, 0
  ret i1 %cmp
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_cpu_hwcaps_indirect_list() unnamed_addr #2 section ".init.text" {
entry:
  call fastcc void @init_cpu_hwcaps_indirect_list_from_array(%struct.arm64_cpu_capabilities* noundef bitcast (<{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities }>* @arm64_features to %struct.arm64_cpu_capabilities*)) #21
  call fastcc void @init_cpu_hwcaps_indirect_list_from_array(%struct.arm64_cpu_capabilities* noundef getelementptr inbounds ([0 x %struct.arm64_cpu_capabilities], [0 x %struct.arm64_cpu_capabilities]* @arm64_errata, i64 0, i64 0)) #21
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @setup_boot_cpu_capabilities() unnamed_addr #2 section ".init.text" {
entry:
  call fastcc void @update_cpu_capabilities(i16 noundef 5) #22
  call fastcc void @enable_cpu_capabilities(i16 noundef 4) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_cpu_features(i32 noundef %cpu, %struct.cpuinfo_arm64* noundef %info, %struct.cpuinfo_arm64* noundef %boot) local_unnamed_addr #0 {
entry:
  %reg_ctr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 2
  %0 = load i64, i64* %reg_ctr, align 8
  %reg_ctr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 2
  %1 = load i64, i64* %reg_ctr1, align 8
  %call = call fastcc i32 @check_update_ftr_reg(i32 noundef 1769504, i32 noundef %cpu, i64 noundef %0, i64 noundef %1) #22
  %reg_dczid = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 4
  %2 = load i64, i64* %reg_dczid, align 8
  %reg_dczid2 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 4
  %3 = load i64, i64* %reg_dczid2, align 8
  %call3 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1769696, i32 noundef %cpu, i64 noundef %2, i64 noundef %3) #22
  %or4 = or i32 %call3, %call
  %reg_cntfrq = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 3
  %4 = load i64, i64* %reg_cntfrq, align 8
  %reg_cntfrq5 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 3
  %5 = load i64, i64* %reg_cntfrq5, align 8
  %call6 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1826816, i32 noundef %cpu, i64 noundef %4, i64 noundef %5) #22
  %or7 = or i32 %or4, %call6
  %reg_id_aa64dfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 8
  %6 = load i64, i64* %reg_id_aa64dfr0, align 8
  %reg_id_aa64dfr08 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 8
  %7 = load i64, i64* %reg_id_aa64dfr08, align 8
  %call9 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574144, i32 noundef %cpu, i64 noundef %6, i64 noundef %7) #22
  %or10 = or i32 %or7, %call9
  %reg_id_aa64dfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 9
  %8 = load i64, i64* %reg_id_aa64dfr1, align 8
  %reg_id_aa64dfr111 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 9
  %9 = load i64, i64* %reg_id_aa64dfr111, align 8
  %call12 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574176, i32 noundef %cpu, i64 noundef %8, i64 noundef %9) #22
  %or13 = or i32 %or10, %call12
  %reg_id_aa64isar0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 10
  %10 = load i64, i64* %reg_id_aa64isar0, align 8
  %reg_id_aa64isar014 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 10
  %11 = load i64, i64* %reg_id_aa64isar014, align 8
  %call15 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574400, i32 noundef %cpu, i64 noundef %10, i64 noundef %11) #22
  %or16 = or i32 %or13, %call15
  %reg_id_aa64isar1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 11
  %12 = load i64, i64* %reg_id_aa64isar1, align 8
  %reg_id_aa64isar117 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 11
  %13 = load i64, i64* %reg_id_aa64isar117, align 8
  %call18 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574432, i32 noundef %cpu, i64 noundef %12, i64 noundef %13) #22
  %or19 = or i32 %or16, %call18
  %reg_id_aa64mmfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 12
  %14 = load i64, i64* %reg_id_aa64mmfr0, align 8
  %reg_id_aa64mmfr020 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 12
  %15 = load i64, i64* %reg_id_aa64mmfr020, align 8
  %call21 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574656, i32 noundef %cpu, i64 noundef %14, i64 noundef %15) #22
  %or22 = or i32 %or19, %call21
  %reg_id_aa64mmfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 13
  %16 = load i64, i64* %reg_id_aa64mmfr1, align 8
  %reg_id_aa64mmfr123 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 13
  %17 = load i64, i64* %reg_id_aa64mmfr123, align 8
  %call24 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574688, i32 noundef %cpu, i64 noundef %16, i64 noundef %17) #22
  %or25 = or i32 %or22, %call24
  %reg_id_aa64mmfr2 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 14
  %18 = load i64, i64* %reg_id_aa64mmfr2, align 8
  %reg_id_aa64mmfr226 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 14
  %19 = load i64, i64* %reg_id_aa64mmfr226, align 8
  %call27 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574720, i32 noundef %cpu, i64 noundef %18, i64 noundef %19) #22
  %or28 = or i32 %or25, %call27
  %reg_id_aa64pfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 15
  %20 = load i64, i64* %reg_id_aa64pfr0, align 8
  %reg_id_aa64pfr029 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 15
  %21 = load i64, i64* %reg_id_aa64pfr029, align 8
  %call30 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573888, i32 noundef %cpu, i64 noundef %20, i64 noundef %21) #22
  %or31 = or i32 %or28, %call30
  %reg_id_aa64pfr1 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 16
  %22 = load i64, i64* %reg_id_aa64pfr1, align 8
  %reg_id_aa64pfr132 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 16
  %23 = load i64, i64* %reg_id_aa64pfr132, align 8
  %call33 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573920, i32 noundef %cpu, i64 noundef %22, i64 noundef %23) #22
  %or34 = or i32 %or31, %call33
  %reg_id_aa64zfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 17
  %24 = load i64, i64* %reg_id_aa64zfr0, align 8
  %reg_id_aa64zfr035 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 17
  %25 = load i64, i64* %reg_id_aa64zfr035, align 8
  %call36 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1574016, i32 noundef %cpu, i64 noundef %24, i64 noundef %25) #22
  %or37 = or i32 %or34, %call36
  %26 = load i64, i64* %reg_id_aa64pfr0, align 8
  %call39 = call fastcc i1 @id_aa64pfr0_sve(i64 noundef %26) #22
  br i1 %call39, label %if.then, label %if.end47

if.then:                                          ; preds = %entry
  %reg_zcr = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 19
  %27 = load i64, i64* %reg_zcr, align 8
  %reg_zcr40 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 19
  %28 = load i64, i64* %reg_zcr40, align 8
  %call41 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1577472, i32 noundef %cpu, i64 noundef %27, i64 noundef %28) #22
  %or42 = or i32 %call41, %or37
  %call43 = call i64 @read_sanitised_ftr_reg(i32 noundef 1573888) #22
  %call44 = call fastcc i1 @id_aa64pfr0_sve(i64 noundef %call43) #22
  br i1 %call44, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then
  %call.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #23
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true, %if.then, %entry
  %taint.0 = phi i32 [ %or42, %if.then ], [ %or37, %entry ], [ %or42, %land.lhs.true ]
  %29 = load i64, i64* %reg_id_aa64pfr0, align 8
  %call49 = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %29) #22
  br i1 %call49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end47
  call fastcc void @lazy_init_32bit_cpu_features(%struct.cpuinfo_arm64* noundef %info, %struct.cpuinfo_arm64* noundef %boot) #22
  %aarch32 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 18
  %aarch3251 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 18
  %call52 = call fastcc i32 @update_32bit_cpu_features(i32 noundef %cpu, %struct.cpuinfo_32bit* noundef %aarch32, %struct.cpuinfo_32bit* noundef %aarch3251) #22
  %or53 = or i32 %call52, %taint.0
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end47
  %taint.1 = phi i32 [ %or53, %if.then50 ], [ %taint.0, %if.end47 ]
  %tobool.not = icmp eq i32 %taint.1, 0
  br i1 %tobool.not, label %if.end72, label %if.then55

if.then55:                                        ; preds = %if.end54
  %.b136 = load i1, i1* @update_cpu_features.__already_done, align 1
  br i1 %.b136, label %if.end63, label %if.then61, !prof !13

if.then61:                                        ; preds = %if.then55
  store i1 true, i1* @update_cpu_features.__already_done, align 1
  %call62 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0)) #20
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then55
  call void @add_taint(i32 noundef 2, i32 noundef 0) #23
  br label %if.end72

if.end72:                                         ; preds = %if.end63, %if.end54
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_update_ftr_reg(i32 noundef %sys_id, i32 noundef %cpu, i64 noundef %val, i64 noundef %boot) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg(i32 noundef %sys_id) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @update_cpu_ftr_reg(%struct.arm64_ftr_reg* noundef nonnull %call, i64 noundef %val) #22
  %strict_mask = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 1
  %0 = load i64, i64* %strict_mask, align 8
  %1 = xor i64 %boot, %val
  %2 = and i64 %0, %1
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %name = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.110, i64 0, i64 0), i8* noundef %3, i64 noundef %boot, i32 noundef %cpu, i64 noundef %val) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @read_sanitised_ftr_reg(i32 noundef %id) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg(i32 noundef %id) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sys_val = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 3
  %0 = load i64, i64* %sys_val, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %0, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lazy_init_32bit_cpu_features(%struct.cpuinfo_arm64* nocapture noundef readonly %info, %struct.cpuinfo_arm64* noundef %boot) unnamed_addr #0 {
entry:
  %.b9 = load i1, i1* @allow_mismatched_32bit_el0, align 1
  br i1 %.b9, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %.b810 = load i1, i1* @lazy_init_32bit_cpu_features.boot_cpu_32bit_regs_overridden, align 1
  br i1 %.b810, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %reg_id_aa64pfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 15
  %0 = load i64, i64* %reg_id_aa64pfr0, align 8
  %call = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %0) #22
  br i1 %call, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %aarch32 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %boot, i64 0, i32 18
  %aarch324 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %info, i64 0, i32 18
  %1 = bitcast %struct.cpuinfo_32bit* %aarch32 to i8*
  %2 = bitcast %struct.cpuinfo_32bit* %aarch324 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(84) %1, i8* noundef align 8 dereferenceable(84) %2, i64 84, i1 false)
  call fastcc void @init_32bit_cpu_features(%struct.cpuinfo_32bit* noundef %aarch32) #22
  store i1 true, i1* @lazy_init_32bit_cpu_features.boot_cpu_32bit_regs_overridden, align 1
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @update_32bit_cpu_features(i32 noundef %cpu, %struct.cpuinfo_32bit* noundef readonly %info, %struct.cpuinfo_32bit* noundef readonly %boot) unnamed_addr #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1573888) #22
  %call1 = call fastcc i1 @id_aa64pfr0_32bit_el1(i64 noundef %call) #22
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @relax_cpu_ftr_reg(i32 noundef 1573504, i32 noundef 12) #22
  call fastcc void @relax_cpu_ftr_reg(i32 noundef 1573152, i32 noundef 24) #22
  call fastcc void @relax_cpu_ftr_reg(i32 noundef 1573152, i32 noundef 20) #22
  call fastcc void @relax_cpu_ftr_reg(i32 noundef 1573152, i32 noundef 12) #22
  call fastcc void @relax_cpu_ftr_reg(i32 noundef 1573152, i32 noundef 4) #22
  call fastcc void @relax_cpu_ftr_reg(i32 noundef 1573152, i32 noundef 0) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %reg_id_dfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 0
  %0 = load i32, i32* %reg_id_dfr0, align 4
  %conv = zext i32 %0 to i64
  %reg_id_dfr02 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 0
  %1 = load i32, i32* %reg_id_dfr02, align 4
  %conv3 = zext i32 %1 to i64
  %call4 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573184, i32 noundef %cpu, i64 noundef %conv, i64 noundef %conv3) #22
  %reg_id_dfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 1
  %2 = load i32, i32* %reg_id_dfr1, align 4
  %conv5 = zext i32 %2 to i64
  %reg_id_dfr16 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 1
  %3 = load i32, i32* %reg_id_dfr16, align 4
  %conv7 = zext i32 %3 to i64
  %call8 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573792, i32 noundef %cpu, i64 noundef %conv5, i64 noundef %conv7) #22
  %or9 = or i32 %call8, %call4
  %reg_id_isar0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 2
  %4 = load i32, i32* %reg_id_isar0, align 4
  %conv10 = zext i32 %4 to i64
  %reg_id_isar011 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 2
  %5 = load i32, i32* %reg_id_isar011, align 4
  %conv12 = zext i32 %5 to i64
  %call13 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573376, i32 noundef %cpu, i64 noundef %conv10, i64 noundef %conv12) #22
  %or14 = or i32 %or9, %call13
  %reg_id_isar1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 3
  %6 = load i32, i32* %reg_id_isar1, align 4
  %conv15 = zext i32 %6 to i64
  %reg_id_isar116 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 3
  %7 = load i32, i32* %reg_id_isar116, align 4
  %conv17 = zext i32 %7 to i64
  %call18 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573408, i32 noundef %cpu, i64 noundef %conv15, i64 noundef %conv17) #22
  %or19 = or i32 %or14, %call18
  %reg_id_isar2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 4
  %8 = load i32, i32* %reg_id_isar2, align 4
  %conv20 = zext i32 %8 to i64
  %reg_id_isar221 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 4
  %9 = load i32, i32* %reg_id_isar221, align 4
  %conv22 = zext i32 %9 to i64
  %call23 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573440, i32 noundef %cpu, i64 noundef %conv20, i64 noundef %conv22) #22
  %or24 = or i32 %or19, %call23
  %reg_id_isar3 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 5
  %10 = load i32, i32* %reg_id_isar3, align 4
  %conv25 = zext i32 %10 to i64
  %reg_id_isar326 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 5
  %11 = load i32, i32* %reg_id_isar326, align 4
  %conv27 = zext i32 %11 to i64
  %call28 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573472, i32 noundef %cpu, i64 noundef %conv25, i64 noundef %conv27) #22
  %or29 = or i32 %or24, %call28
  %reg_id_isar4 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 6
  %12 = load i32, i32* %reg_id_isar4, align 4
  %conv30 = zext i32 %12 to i64
  %reg_id_isar431 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 6
  %13 = load i32, i32* %reg_id_isar431, align 4
  %conv32 = zext i32 %13 to i64
  %call33 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573504, i32 noundef %cpu, i64 noundef %conv30, i64 noundef %conv32) #22
  %or34 = or i32 %or29, %call33
  %reg_id_isar5 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 7
  %14 = load i32, i32* %reg_id_isar5, align 4
  %conv35 = zext i32 %14 to i64
  %reg_id_isar536 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 7
  %15 = load i32, i32* %reg_id_isar536, align 4
  %conv37 = zext i32 %15 to i64
  %call38 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573536, i32 noundef %cpu, i64 noundef %conv35, i64 noundef %conv37) #22
  %or39 = or i32 %or34, %call38
  %reg_id_isar6 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 8
  %16 = load i32, i32* %reg_id_isar6, align 4
  %conv40 = zext i32 %16 to i64
  %reg_id_isar641 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 8
  %17 = load i32, i32* %reg_id_isar641, align 4
  %conv42 = zext i32 %17 to i64
  %call43 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573600, i32 noundef %cpu, i64 noundef %conv40, i64 noundef %conv42) #22
  %or44 = or i32 %or39, %call43
  %reg_id_mmfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 9
  %18 = load i32, i32* %reg_id_mmfr0, align 4
  %conv45 = zext i32 %18 to i64
  %reg_id_mmfr046 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 9
  %19 = load i32, i32* %reg_id_mmfr046, align 4
  %conv47 = zext i32 %19 to i64
  %call48 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573248, i32 noundef %cpu, i64 noundef %conv45, i64 noundef %conv47) #22
  %or49 = or i32 %or44, %call48
  %reg_id_mmfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 10
  %20 = load i32, i32* %reg_id_mmfr1, align 4
  %conv50 = zext i32 %20 to i64
  %reg_id_mmfr151 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 10
  %21 = load i32, i32* %reg_id_mmfr151, align 4
  %conv52 = zext i32 %21 to i64
  %call53 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573280, i32 noundef %cpu, i64 noundef %conv50, i64 noundef %conv52) #22
  %or54 = or i32 %or49, %call53
  %reg_id_mmfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 11
  %22 = load i32, i32* %reg_id_mmfr2, align 4
  %conv55 = zext i32 %22 to i64
  %reg_id_mmfr256 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 11
  %23 = load i32, i32* %reg_id_mmfr256, align 4
  %conv57 = zext i32 %23 to i64
  %call58 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573312, i32 noundef %cpu, i64 noundef %conv55, i64 noundef %conv57) #22
  %or59 = or i32 %or54, %call58
  %reg_id_mmfr3 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 12
  %24 = load i32, i32* %reg_id_mmfr3, align 4
  %conv60 = zext i32 %24 to i64
  %reg_id_mmfr361 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 12
  %25 = load i32, i32* %reg_id_mmfr361, align 4
  %conv62 = zext i32 %25 to i64
  %call63 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573344, i32 noundef %cpu, i64 noundef %conv60, i64 noundef %conv62) #22
  %or64 = or i32 %or59, %call63
  %reg_id_mmfr4 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 13
  %26 = load i32, i32* %reg_id_mmfr4, align 4
  %conv65 = zext i32 %26 to i64
  %reg_id_mmfr466 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 13
  %27 = load i32, i32* %reg_id_mmfr466, align 4
  %conv67 = zext i32 %27 to i64
  %call68 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573568, i32 noundef %cpu, i64 noundef %conv65, i64 noundef %conv67) #22
  %or69 = or i32 %or64, %call68
  %reg_id_mmfr5 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 14
  %28 = load i32, i32* %reg_id_mmfr5, align 4
  %conv70 = zext i32 %28 to i64
  %reg_id_mmfr571 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 14
  %29 = load i32, i32* %reg_id_mmfr571, align 4
  %conv72 = zext i32 %29 to i64
  %call73 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573824, i32 noundef %cpu, i64 noundef %conv70, i64 noundef %conv72) #22
  %or74 = or i32 %or69, %call73
  %reg_id_pfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 15
  %30 = load i32, i32* %reg_id_pfr0, align 4
  %conv75 = zext i32 %30 to i64
  %reg_id_pfr076 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 15
  %31 = load i32, i32* %reg_id_pfr076, align 4
  %conv77 = zext i32 %31 to i64
  %call78 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573120, i32 noundef %cpu, i64 noundef %conv75, i64 noundef %conv77) #22
  %or79 = or i32 %or74, %call78
  %reg_id_pfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 16
  %32 = load i32, i32* %reg_id_pfr1, align 4
  %conv80 = zext i32 %32 to i64
  %reg_id_pfr181 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 16
  %33 = load i32, i32* %reg_id_pfr181, align 4
  %conv82 = zext i32 %33 to i64
  %call83 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573152, i32 noundef %cpu, i64 noundef %conv80, i64 noundef %conv82) #22
  %or84 = or i32 %or79, %call83
  %reg_id_pfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 17
  %34 = load i32, i32* %reg_id_pfr2, align 4
  %conv85 = zext i32 %34 to i64
  %reg_id_pfr286 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 17
  %35 = load i32, i32* %reg_id_pfr286, align 4
  %conv87 = zext i32 %35 to i64
  %call88 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573760, i32 noundef %cpu, i64 noundef %conv85, i64 noundef %conv87) #22
  %or89 = or i32 %or84, %call88
  %reg_mvfr0 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 18
  %36 = load i32, i32* %reg_mvfr0, align 4
  %conv90 = zext i32 %36 to i64
  %reg_mvfr091 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 18
  %37 = load i32, i32* %reg_mvfr091, align 4
  %conv92 = zext i32 %37 to i64
  %call93 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573632, i32 noundef %cpu, i64 noundef %conv90, i64 noundef %conv92) #22
  %or94 = or i32 %or89, %call93
  %reg_mvfr1 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 19
  %38 = load i32, i32* %reg_mvfr1, align 4
  %conv95 = zext i32 %38 to i64
  %reg_mvfr196 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 19
  %39 = load i32, i32* %reg_mvfr196, align 4
  %conv97 = zext i32 %39 to i64
  %call98 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573664, i32 noundef %cpu, i64 noundef %conv95, i64 noundef %conv97) #22
  %or99 = or i32 %or94, %call98
  %reg_mvfr2 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %info, i64 0, i32 20
  %40 = load i32, i32* %reg_mvfr2, align 4
  %conv100 = zext i32 %40 to i64
  %reg_mvfr2101 = getelementptr inbounds %struct.cpuinfo_32bit, %struct.cpuinfo_32bit* %boot, i64 0, i32 20
  %41 = load i32, i32* %reg_mvfr2101, align 4
  %conv102 = zext i32 %41 to i64
  %call103 = call fastcc i32 @check_update_ftr_reg(i32 noundef 1573696, i32 noundef %cpu, i64 noundef %conv100, i64 noundef %conv102) #22
  %or104 = or i32 %or99, %call103
  ret i32 %or104
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg(i32 noundef %sys_id) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg_nowarn(i32 noundef %sys_id) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 703; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.arm64_ftr_reg* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__read_sysreg_by_encoding(i32 noundef %sys_id) local_unnamed_addr #0 {
entry:
  switch i32 %sys_id, label %do.body [
    i32 1573120, label %sw.bb
    i32 1573152, label %sw.bb1
    i32 1573760, label %sw.bb4
    i32 1573184, label %sw.bb7
    i32 1573792, label %sw.bb10
    i32 1573248, label %sw.bb13
    i32 1573280, label %sw.bb16
    i32 1573312, label %sw.bb19
    i32 1573344, label %sw.bb22
    i32 1573568, label %sw.bb25
    i32 1573824, label %sw.bb28
    i32 1573376, label %sw.bb31
    i32 1573408, label %sw.bb34
    i32 1573440, label %sw.bb37
    i32 1573472, label %sw.bb40
    i32 1573504, label %sw.bb43
    i32 1573536, label %sw.bb46
    i32 1573600, label %sw.bb49
    i32 1573632, label %sw.bb52
    i32 1573664, label %sw.bb55
    i32 1573696, label %sw.bb58
    i32 1573888, label %sw.bb61
    i32 1573920, label %sw.bb64
    i32 1574016, label %sw.bb67
    i32 1574144, label %sw.bb70
    i32 1574176, label %sw.bb73
    i32 1574656, label %sw.bb76
    i32 1574688, label %sw.bb79
    i32 1574720, label %sw.bb82
    i32 1574400, label %sw.bb85
    i32 1574432, label %sw.bb88
    i32 1826816, label %sw.bb91
    i32 1769504, label %sw.bb94
    i32 1769696, label %sw.bb97
  ]

sw.bb:                                            ; preds = %entry
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !16
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %2 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !17
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %3 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !18
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %4 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !19
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %5 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !20
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %6 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !21
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %7 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !22
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %8 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((1) << 8) | ((7) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !23
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %9 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !24
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %10 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((6) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !25
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %11 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !26
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %12 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !27
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %13 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !28
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  %14 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((3) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !29
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  %15 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !30
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %16 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !31
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %17 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((2) << 8) | ((7) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !32
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  %18 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !33
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  %19 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !34
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %20 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((3) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !35
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  %21 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !36
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  %22 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !37
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  %23 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((4) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !38
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  %24 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((5) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !39
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %25 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((5) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !40
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  %26 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !41
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry
  %27 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !42
  br label %sw.epilog

sw.bb82:                                          ; preds = %entry
  %28 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((7) << 8) | ((2) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !43
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  %29 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !44
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry
  %30 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((6) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !45
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  %31 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((14) << 12) | ((0) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !46
  br label %sw.epilog

sw.bb94:                                          ; preds = %entry
  %32 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !47
  br label %sw.epilog

sw.bb97:                                          ; preds = %entry
  %33 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((7) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !48
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 1277; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !49
  unreachable

sw.epilog:                                        ; preds = %sw.bb97, %sw.bb94, %sw.bb91, %sw.bb88, %sw.bb85, %sw.bb82, %sw.bb79, %sw.bb76, %sw.bb73, %sw.bb70, %sw.bb67, %sw.bb64, %sw.bb61, %sw.bb58, %sw.bb55, %sw.bb52, %sw.bb49, %sw.bb46, %sw.bb43, %sw.bb40, %sw.bb37, %sw.bb34, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  %val.0 = phi i64 [ %33, %sw.bb97 ], [ %32, %sw.bb94 ], [ %31, %sw.bb91 ], [ %30, %sw.bb88 ], [ %29, %sw.bb85 ], [ %28, %sw.bb82 ], [ %27, %sw.bb79 ], [ %26, %sw.bb76 ], [ %25, %sw.bb73 ], [ %24, %sw.bb70 ], [ %23, %sw.bb67 ], [ %22, %sw.bb64 ], [ %21, %sw.bb61 ], [ %20, %sw.bb58 ], [ %19, %sw.bb55 ], [ %18, %sw.bb52 ], [ %17, %sw.bb49 ], [ %16, %sw.bb46 ], [ %15, %sw.bb43 ], [ %14, %sw.bb40 ], [ %13, %sw.bb37 ], [ %12, %sw.bb34 ], [ %11, %sw.bb31 ], [ %10, %sw.bb28 ], [ %9, %sw.bb25 ], [ %8, %sw.bb22 ], [ %7, %sw.bb19 ], [ %6, %sw.bb16 ], [ %5, %sw.bb13 ], [ %4, %sw.bb10 ], [ %3, %sw.bb7 ], [ %2, %sw.bb4 ], [ %1, %sw.bb1 ], [ %0, %sw.bb ]
  %call = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg(i32 noundef %sys_id) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %override = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 5
  %34 = load %struct.arm64_ftr_override*, %struct.arm64_ftr_override** %override, align 8
  %mask = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %34, i64 0, i32 1
  %35 = load i64, i64* %mask, align 8
  %neg = xor i64 %35, -1
  %and = and i64 %val.0, %neg
  %val104 = getelementptr inbounds %struct.arm64_ftr_override, %struct.arm64_ftr_override* %34, i64 0, i32 0
  %36 = load i64, i64* %val104, align 8
  %and107 = and i64 %36, %35
  %or = or i64 %and107, %and
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %val.1 = phi i64 [ %or, %if.then ], [ %val.0, %sw.epilog ]
  ret i64 %val.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.cpumask* @system_32bit_el0_cpumask() local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @system_supports_32bit_el0() #22
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_mismatched_32bit_el0, i64 0, i32 0)) #22
  %cmp = icmp sgt i32 %call1, 0
  %.__cpu_possible_mask = select i1 %cmp, %struct.cpumask* getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @cpu_32bit_el0_mask, i64 0, i64 0), %struct.cpumask* @__cpu_possible_mask, !prof !8
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi %struct.cpumask* [ bitcast ([65 x [4 x i64]]* @cpu_bit_bitmap to %struct.cpumask*), %entry ], [ %.__cpu_possible_mask, %if.end ]
  ret %struct.cpumask* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @system_supports_32bit_el0() unnamed_addr #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1573888) #22
  %call1 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_mismatched_32bit_el0, i64 0, i32 0)) #22
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %lor.end, label %lor.rhs, !prof !8

lor.rhs:                                          ; preds = %entry
  %call5 = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %call) #22
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call5, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #6 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @parse_32bit_el0_param(i8* nocapture noundef readnone %str) #7 section ".init.text" {
entry:
  store i1 true, i1* @allow_mismatched_32bit_el0, align 1
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @aarch32_el0_sysfs_init() #2 section ".init.text" {
entry:
  %.b1 = load i1, i1* @allow_mismatched_32bit_el0, align 1
  br i1 %.b1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.bus_type, %struct.bus_type* @cpu_subsys, i64 0, i32 2), align 8
  %call = call i32 @device_create_file(%struct.device* noundef %0, %struct.device_attribute* noundef bitcast ({ %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }* @dev_attr_aarch32_el0 to %struct.device_attribute*)) #23
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i1 @kaslr_requires_kpti() local_unnamed_addr #3 {
entry:
  ret i1 false
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @parse_kpti(i8* noundef %str) #2 section ".init.text" {
entry:
  %enabled = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %enabled) #24
  store i8 0, i8* %enabled, align 4, !annotation !50
  %call = call fastcc i32 @strtobool(i8* noundef %str, i8* noundef nonnull %enabled) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %enabled, align 4, !range !12
  %tobool1.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool1.not, i32 -1, i32 1
  store i32 %cond, i32* @__kpti_forced, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %enabled) #24
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @get_cpu_with_amu_feat() local_unnamed_addr #8 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @check_local_cpu_capabilities() local_unnamed_addr #0 {
entry:
  call fastcc void @check_early_cpu_features() #22
  %call.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #23
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @update_cpu_capabilities(i16 noundef 1) #22
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @verify_local_cpu_capabilities() #22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_early_cpu_features() unnamed_addr #0 {
entry:
  call void @verify_cpu_asid_bits() #23
  call fastcc void @verify_local_cpu_caps(i16 noundef 4) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_cpu_capabilities(i16 noundef %scope_mask) unnamed_addr #0 {
entry:
  %0 = and i16 %scope_mask, 7
  %1 = and i16 %scope_mask, 4
  %tobool22.not = icmp eq i16 %1, 0
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr [61 x %struct.arm64_cpu_capabilities*], [61 x %struct.arm64_cpu_capabilities*]* @cpu_hwcaps_ptrs, i64 0, i64 %indvars.iv
  %2 = load %struct.arm64_cpu_capabilities*, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  %tobool.not = icmp eq %struct.arm64_cpu_capabilities* %2, null
  br i1 %tobool.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 2
  %3 = load i16, i16* %type, align 2
  %and548 = and i16 %0, %3
  %tobool6.not = icmp eq i16 %and548, 0
  br i1 %tobool6.not, label %for.inc, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %capability = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 1
  %4 = load i16, i16* %capability, align 8
  %conv8 = zext i16 %4 to i32
  %call = call fastcc i1 @cpus_have_cap(i32 noundef %conv8) #22
  br i1 %call, label %for.inc, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %matches = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 3
  %5 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches, align 8
  %call11 = call fastcc i32 @cpucap_default_scope(%struct.arm64_cpu_capabilities* noundef nonnull %2) #22, !range !51
  %call12 = call i1 %5(%struct.arm64_cpu_capabilities* noundef nonnull %2, i32 noundef %call11) #23
  br i1 %call12, label %if.end, label %for.inc

if.end:                                           ; preds = %lor.lhs.false10
  %desc = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 0
  %6 = load i8*, i8** %desc, align 8
  %tobool13.not = icmp eq i8* %6, null
  br i1 %tobool13.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0), i8* noundef nonnull %6) #20
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end
  %7 = load i16, i16* %capability, align 8
  %conv19 = zext i16 %7 to i32
  call fastcc void @cpus_set_cap(i32 noundef %conv19) #22
  br i1 %tobool22.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end17
  %8 = load i16, i16* %type, align 2
  %9 = and i16 %8, 4
  %tobool26.not = icmp eq i16 %9, 0
  br i1 %tobool26.not, label %for.inc, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  %10 = load i16, i16* %capability, align 8
  %conv29 = zext i16 %10 to i64
  call fastcc void @set_bit(i64 noundef %conv29, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @boot_capabilities, i64 0, i64 0)) #22
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %land.lhs.true, %if.then27, %for.body, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 61
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @verify_local_cpu_capabilities() unnamed_addr #0 {
entry:
  call fastcc void @verify_local_cpu_caps(i16 noundef 3) #22
  call fastcc void @verify_local_elf_hwcaps() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @this_cpu_has_cap(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp ult i32 %n, 61
  br i1 %cmp, label %if.then12, label %return

if.then12:                                        ; preds = %entry
  %idxprom = zext i32 %n to i64
  %arrayidx = getelementptr [61 x %struct.arm64_cpu_capabilities*], [61 x %struct.arm64_cpu_capabilities*]* @cpu_hwcaps_ptrs, i64 0, i64 %idxprom
  %0 = load %struct.arm64_cpu_capabilities*, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  %tobool13.not = icmp eq %struct.arm64_cpu_capabilities* %0, null
  br i1 %tobool13.not, label %return, label %cleanup

cleanup:                                          ; preds = %if.then12
  %matches = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %0, i64 0, i32 3
  %1 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches, align 8
  %call = call i1 %1(%struct.arm64_cpu_capabilities* noundef nonnull %0, i32 noundef 1) #23
  br label %return

return:                                           ; preds = %if.then12, %entry, %cleanup
  %retval.1 = phi i1 [ %call, %cleanup ], [ false, %entry ], [ false, %if.then12 ]
  ret i1 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @cpu_set_feature(i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %num, 63
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 2866; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !52
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sh_prom = zext i32 %num to i64
  %shl = shl nuw i64 1, %sh_prom
  %0 = load i64, i64* @elf_hwcap, align 8
  %or = or i64 %0, %shl
  store i64 %or, i64* @elf_hwcap, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @cpu_have_feature(i32 noundef %num) local_unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %num, 63
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 2873; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !53
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load i64, i64* @elf_hwcap, align 8
  %sh_prom = zext i32 %num to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %0, %shl
  %tobool14 = icmp ne i64 %and, 0
  ret i1 %tobool14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @cpu_get_elf_hwcap() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* @elf_hwcap, align 8
  %conv1 = and i64 %0, 4294967295
  ret i64 %conv1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @cpu_get_elf_hwcap2() local_unnamed_addr #8 {
entry:
  %0 = load i64, i64* @elf_hwcap, align 8
  %shr = lshr i64 %0, 32
  ret i64 %shr
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_cpu_features() local_unnamed_addr #2 section ".init.text" {
entry:
  call fastcc void @setup_system_capabilities() #21
  call fastcc void @setup_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef bitcast (<{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities }>* @arm64_elf_hwcaps to %struct.arm64_cpu_capabilities*)) #22
  %call = call fastcc i1 @system_supports_32bit_el0() #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @setup_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef getelementptr inbounds ([1 x %struct.arm64_cpu_capabilities], [1 x %struct.arm64_cpu_capabilities]* @compat_elf_hwcaps, i64 0, i64 0)) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @minsigstksz_setup() #20
  call fastcc void @finalize_system_capabilities() #22
  %call5 = call fastcc i32 @cache_type_cwg() #22
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 noundef 128) #20
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @setup_system_capabilities() unnamed_addr #2 section ".init.text" {
entry:
  call fastcc void @update_cpu_capabilities(i16 noundef 2) #22
  call fastcc void @enable_cpu_capabilities(i16 noundef 3) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @setup_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef %hwcaps) unnamed_addr #0 {
entry:
  call void @cpu_set_feature(i32 noundef 11) #22
  %matches8 = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %hwcaps, i64 0, i32 3
  %0 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches8, align 8
  %tobool.not9 = icmp eq i1 (%struct.arm64_cpu_capabilities*, i32)* %0, null
  br i1 %tobool.not9, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i1 (%struct.arm64_cpu_capabilities*, i32)* [ %2, %for.inc ], [ %0, %entry ]
  %hwcaps.addr.010 = phi %struct.arm64_cpu_capabilities* [ %incdec.ptr, %for.inc ], [ %hwcaps, %entry ]
  %call = call fastcc i32 @cpucap_default_scope(%struct.arm64_cpu_capabilities* noundef %hwcaps.addr.010) #22, !range !51
  %call2 = call i1 %1(%struct.arm64_cpu_capabilities* noundef %hwcaps.addr.010, i32 noundef %call) #23
  br i1 %call2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call fastcc void @cap_set_elf_hwcap(%struct.arm64_cpu_capabilities* noundef %hwcaps.addr.010) #22
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %hwcaps.addr.010, i64 1
  %matches = getelementptr %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %hwcaps.addr.010, i64 1, i32 3
  %2 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches, align 8
  %tobool.not = icmp eq i1 (%struct.arm64_cpu_capabilities*, i32)* %2, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @minsigstksz_setup() local_unnamed_addr #1 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @finalize_system_capabilities() unnamed_addr #0 {
entry:
  call fastcc void @static_key_enable(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cache_type_cwg() unnamed_addr #9 {
entry:
  %call = call fastcc i32 @read_cpuid_cachetype() #25
  %shr = lshr i32 %call, 24
  %and = and i32 %shr, 15
  ret i32 %and
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_32bit_el0_mask() #2 section ".init.text" {
entry:
  %.b4 = load i1, i1* @allow_mismatched_32bit_el0, align 1
  br i1 %.b4, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @zalloc_cpumask_var() #22
  %call3 = call fastcc i32 @cpuhp_setup_state() #22
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_emulate_mrs(%struct.pt_regs* noundef %regs, i32 noundef %sys_reg, i32 noundef %rt) local_unnamed_addr #0 {
entry:
  %val = alloca i64, align 8
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #24
  store i64 0, i64* %val, align 8, !annotation !50
  %call = call fastcc i32 @emulate_sys_reg(i32 noundef %sys_reg, i64* noundef nonnull %val) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %val, align 8
  call fastcc void @pt_regs_write_reg(%struct.pt_regs* noundef %regs, i32 noundef %rt, i64 noundef %1) #22
  call void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef %regs, i64 noundef 4) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #24
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @emulate_sys_reg(i32 noundef %id, i64* nocapture noundef writeonly %valp) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @is_emulated(i32 noundef %id) #25
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i32 %id, 3840
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call fastcc i32 @emulate_id_reg(i32 noundef %id, i64* noundef %valp) #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg_nowarn(i32 noundef %id) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call4, null
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = call fastcc i64 @arm64_ftr_reg_user_value(%struct.arm64_ftr_reg* noundef nonnull %call4) #22
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  %storemerge = phi i64 [ %call6, %if.then5 ], [ 0, %if.end3 ]
  store i64 %storemerge, i64* %valp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end7, %if.then1
  %retval.0 = phi i32 [ %call2, %if.then1 ], [ 0, %if.end7 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pt_regs_write_reg(%struct.pt_regs* nocapture noundef writeonly %regs, i32 noundef %r, i64 noundef %val) unnamed_addr #10 {
entry:
  %cmp.not = icmp eq i32 %r, 31
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %r to i64
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 %idxprom
  store i64 %val, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_skip_faulting_instruction(%struct.pt_regs* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @enable_mrs_emulation() #2 section ".init.text" {
entry:
  call void @register_undef_hook(%struct.undef_hook* noundef nonnull @mrs_hook) #23
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @arm64_get_meltdown_state() local_unnamed_addr #6 {
entry:
  %.b = load i1, i1* @__meltdown_safe, align 1
  br i1 %.b, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i1 @arm64_kernel_unmapped_at_el0() #22
  %. = select i1 %call, i32 1, i32 2
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #6 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #23
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #23
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap(i32 noundef 41) #23
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @cpu_show_meltdown(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %call = call i32 @arm64_get_meltdown_state() #22
  %switch.selectcmp = icmp eq i32 %call, 1
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  %switch.selectcmp9 = icmp eq i32 %call, 0
  %switch.select10 = select i1 %switch.selectcmp9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %switch.select
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef %switch.select10) #23
  %retval.0 = sext i32 %call5 to i64
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @arm64_ftr_mask(%struct.arm64_ftr_bits* nocapture noundef readonly %ftrp) unnamed_addr #8 {
entry:
  %shift = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 4
  %0 = load i8, i8* %shift, align 8
  %conv = zext i8 %0 to i64
  %shl.neg = shl nsw i64 -1, %conv
  %width = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 5
  %1 = load i8, i8* %width, align 1
  %conv3 = zext i8 %1 to i64
  %2 = add nuw nsw i64 %conv, %conv3
  %sub6 = sub nsw i64 64, %2
  %sh_prom7 = and i64 %sub6, 4294967295
  %shr = lshr i64 -1, %sh_prom7
  %and = and i64 %shr, %shl.neg
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @arm64_ftr_value(%struct.arm64_ftr_bits* nocapture noundef readonly %ftrp, i64 noundef %val) unnamed_addr #8 {
entry:
  %shift = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 4
  %0 = load i8, i8* %shift, align 8
  %conv = zext i8 %0 to i32
  %width = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 5
  %1 = load i8, i8* %width, align 1
  %conv1 = zext i8 %1 to i32
  %sign = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 0
  %2 = load i8, i8* %sign, align 8, !range !12
  %tobool = icmp ne i8 %2, 0
  %call = call fastcc i32 @cpuid_feature_extract_field_width(i64 noundef %val, i32 noundef %conv, i32 noundef %conv1, i1 noundef %tobool) #25
  %conv2 = sext i32 %call to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arm64_ftr_safe_value(%struct.arm64_ftr_bits* nocapture noundef readonly %ftrp, i64 noundef %new, i64 noundef %cur) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 3
  %0 = load i32, i32* %type, align 4
  switch i32 %0, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb2
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %safe_val = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 6
  %1 = load i64, i64* %safe_val, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %cmp = icmp slt i64 %new, %cur
  %cond = select i1 %cmp, i64 %new, i64 %cur
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %tobool = icmp ne i64 %cur, 0
  %tobool3 = icmp ne i64 %new, 0
  %or.cond = and i1 %tobool3, %tobool
  br i1 %or.cond, label %sw.bb4, label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb2, %entry
  %cmp6 = icmp sgt i64 %new, %cur
  %cond10 = select i1 %cmp6, i64 %new, i64 %cur
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 737; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !54
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb4, %sw.bb1, %sw.bb
  %ret.0 = phi i64 [ %cond10, %sw.bb4 ], [ 0, %sw.bb2 ], [ %cond, %sw.bb1 ], [ %1, %sw.bb ]
  ret i64 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @arm64_ftr_set_value(%struct.arm64_ftr_bits* nocapture noundef readonly %ftrp, i64 noundef %reg, i64 noundef %ftr_val) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @arm64_ftr_mask(%struct.arm64_ftr_bits* noundef %ftrp) #22
  %neg = xor i64 %call, -1
  %and = and i64 %neg, %reg
  %shift = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp, i64 0, i32 4
  %0 = load i8, i8* %shift, align 8
  %sh_prom = zext i8 %0 to i64
  %shl = shl i64 %ftr_val, %sh_prom
  %and1 = and i64 %shl, %call
  %or = or i64 %and1, %and
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cpuid_feature_extract_field_width(i64 noundef %features, i32 noundef %field, i32 noundef %width, i1 noundef %sign) unnamed_addr #3 {
entry:
  br i1 %sign, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call fastcc i32 @cpuid_feature_extract_signed_field_width(i64 noundef %features, i32 noundef %field, i32 noundef %width) #25
  br label %cond.end

cond.false:                                       ; preds = %entry
  %sub.i = sub i32 64, %width
  %sub1.i = sub i32 %sub.i, %field
  %sh_prom.i = zext i32 %sub1.i to i64
  %shl.i = shl i64 %features, %sh_prom.i
  %sh_prom3.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %shl.i, %sh_prom3.i
  %conv.i = trunc i64 %shr.i to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv.i, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cpuid_feature_extract_signed_field_width(i64 noundef %features, i32 noundef %field, i32 noundef %width) unnamed_addr #3 {
entry:
  %sub = sub i32 64, %width
  %sub1 = sub i32 %sub, %field
  %sh_prom = zext i32 %sub1 to i64
  %shl = shl i64 %features, %sh_prom
  %sh_prom3 = zext i32 %sub to i64
  %shr = ashr i64 %shl, %sh_prom3
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_cpu_hwcaps_indirect_list_from_array(%struct.arm64_cpu_capabilities* noundef %caps) unnamed_addr #2 section ".init.text" {
entry:
  %matches81 = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps, i64 0, i32 3
  %0 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches81, align 8
  %tobool.not82 = icmp eq i1 (%struct.arm64_cpu_capabilities*, i32)* %0, null
  br i1 %tobool.not82, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %caps.addr.083 = phi %struct.arm64_cpu_capabilities* [ %incdec.ptr, %for.inc ], [ %caps, %entry ]
  %capability = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps.addr.083, i64 0, i32 1
  %1 = load i16, i16* %capability, align 8
  %cmp = icmp ugt i16 %1, 60
  br i1 %cmp, label %do.end, label %if.end27, !prof !8

do.end:                                           ; preds = %for.body
  %conv = zext i16 %1 to i32
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 877; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !55
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %idxprom = zext i16 %1 to i64
  %arrayidx = getelementptr [61 x %struct.arm64_cpu_capabilities*], [61 x %struct.arm64_cpu_capabilities*]* @cpu_hwcaps_ptrs, i64 0, i64 %idxprom
  %2 = load %struct.arm64_cpu_capabilities*, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  %tobool30.not = icmp eq %struct.arm64_cpu_capabilities* %2, null
  br i1 %tobool30.not, label %if.end66, label %do.end47, !prof !13

do.end47:                                         ; preds = %if.end27
  %conv49 = zext i16 %1 to i32
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv49) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 881; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !56
  br label %for.inc

if.end66:                                         ; preds = %if.end27
  store %struct.arm64_cpu_capabilities* %caps.addr.083, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %do.end47, %do.end, %if.end66
  %incdec.ptr = getelementptr %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps.addr.083, i64 1
  %matches = getelementptr %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps.addr.083, i64 1, i32 3
  %3 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches, align 8
  %tobool.not = icmp eq i1 (%struct.arm64_cpu_capabilities*, i32)* %3, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @has_useable_gicv3_cpuif(%struct.arm64_cpu_capabilities* nocapture noundef readonly %entry1, i32 noundef %scope) #0 {
entry:
  %call = call i1 @has_cpuid_feature(%struct.arm64_cpu_capabilities* noundef %entry1, i32 noundef %scope) #22
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @gic_enable_sre() #22
  br i1 %call2, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %.b25 = load i1, i1* @has_useable_gicv3_cpuif.__already_done, align 1
  br i1 %.b25, label %cleanup, label %if.then9, !prof !13

if.then9:                                         ; preds = %if.then3
  store i1 true, i1* @has_useable_gicv3_cpuif.__already_done, align 1
  %desc = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %entry1, i64 0, i32 0
  %0 = load i8*, i8** %desc, align 8
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.101, i64 0, i64 0), i8* noundef %0) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9, %if.then3, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %if.then3 ], [ false, %if.then9 ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal i1 @has_no_hw_prefetch(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %__unused) #9 {
entry:
  %call = call fastcc i32 @read_cpuid_id() #25
  %call2 = call fastcc i1 @midr_is_cpu_model_range(i32 noundef %call, i32 noundef 1125059088, i32 noundef 0, i32 noundef 1048591) #22
  ret i1 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @runs_at_el2(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %__unused) #0 {
entry:
  %call = call fastcc i1 @is_kernel_in_hyp_mode() #22
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_copy_el2regs(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) #0 {
entry:
  %call = call i1 @alternative_is_applied(i16 noundef 31) #23
  br i1 %call, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  %0 = call i64 asm sideeffect "mrs $0, tpidr_el1", "=r"() #24, !srcloc !57
  call void asm sideeffect "msr tpidr_el2, ${0:x}", "rZ"(i64 %0) #24, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @has_32bit_el0(%struct.arm64_cpu_capabilities* nocapture noundef readonly %entry1, i32 noundef %scope) #0 {
entry:
  %call = call i1 @has_cpuid_feature(%struct.arm64_cpu_capabilities* noundef %entry1, i32 noundef %scope) #22
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %.b6 = load i1, i1* @allow_mismatched_32bit_el0, align 1
  br label %return

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %scope, 2
  br i1 %cmp, label %do.end, label %return

do.end:                                           ; preds = %if.end
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.102, i64 0, i64 0)) #20
  br label %return

return:                                           ; preds = %if.end, %do.end, %if.then
  %retval.0 = phi i1 [ %.b6, %if.then ], [ true, %do.end ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @unmap_kernel_at_el0(%struct.arm64_cpu_capabilities* nocapture noundef readonly %entry1, i32 noundef %scope) #0 {
entry:
  %call = call fastcc i32 @read_cpuid_id() #25
  %call2 = call fastcc i1 @is_midr_in_range_list(i32 noundef %call) #22
  %call3 = call i1 @has_cpuid_feature(%struct.arm64_cpu_capabilities* noundef %entry1, i32 noundef %scope) #22
  %spec.select = select i1 %call3, i1 true, i1 %call2
  br i1 %spec.select, label %if.end5, label %if.then4

if.then4:                                         ; preds = %entry
  store i1 true, i1* @__meltdown_safe, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %entry
  %call6 = call i1 @this_cpu_has_cap(i32 noundef 51) #22
  br i1 %call6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 -1, i32* @__kpti_forced, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %str.0 = phi i8* [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.104, i64 0, i64 0), %if.then7 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.103, i64 0, i64 0), %if.end5 ]
  %call15 = call i1 @cpu_mitigations_off() #23
  %call15.not = xor i1 %call15, true
  %0 = load i32, i32* @__kpti_forced, align 4
  %tobool16 = icmp ne i32 %0, 0
  %or.cond = select i1 %call15.not, i1 true, i1 %tobool16
  br i1 %or.cond, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end8
  store i32 -1, i32* @__kpti_forced, align 4
  br label %if.then20

if.end18:                                         ; preds = %if.end8
  %tobool19.not = icmp eq i32 %0, 0
  br i1 %tobool19.not, label %if.end40, label %if.then20

if.then20:                                        ; preds = %if.end18.thread, %if.end18
  %str.252 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i64 0, i64 0), %if.end18.thread ], [ %str.0, %if.end18 ]
  %1 = phi i32 [ -1, %if.end18.thread ], [ %0, %if.end18 ]
  %.b49 = load i1, i1* @unmap_kernel_at_el0.__already_done, align 1
  br i1 %.b49, label %if.end29, label %if.then26, !prof !13

if.then26:                                        ; preds = %if.then20
  store i1 true, i1* @unmap_kernel_at_el0.__already_done, align 1
  %cmp = icmp sgt i32 %1, 0
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i64 0, i64 0)
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.107, i64 0, i64 0), i8* noundef %cond, i8* noundef %str.252) #20
  %.pre = load i32, i32* @__kpti_forced, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then20
  %2 = phi i32 [ %.pre, %if.then26 ], [ %1, %if.then20 ]
  %cmp38 = icmp sgt i32 %2, 0
  br label %cleanup

if.end40:                                         ; preds = %if.end18
  %lnot42 = xor i1 %spec.select, true
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end29
  %retval.0 = phi i1 [ %cmp38, %if.end29 ], [ %lnot42, %if.end40 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kpti_install_ng_mappings(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %2 = load i8, i8* @arm64_use_ng_mappings, align 4, !range !12
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint (void (i32, i32, i64)* @idmap_kpti_install_ng_mappings to i64), %3
  %4 = inttoptr i64 %sub to void (i32, i32, i64)*
  call fastcc void @cpu_install_idmap() #22
  %call5 = call fastcc i32 @num_online_cpus() #22
  %5 = load i64, i64* @kimage_voffset, align 8
  %sub9 = sub i64 ptrtoint ([512 x %struct.pgd_t]* @swapper_pg_dir to i64), %5
  call void %4(i32 noundef %1, i32 noundef %call5, i64 noundef %sub9) #23
  call fastcc void @cpu_uninstall_idmap() #22
  %tobool10.not = icmp eq i32 %1, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end
  store i8 1, i8* @arm64_use_ng_mappings, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @has_no_fpsimd(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %__unused) #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1573888) #22
  %call2 = call fastcc i32 @cpuid_feature_extract_signed_field(i64 noundef %call) #25
  %cmp = icmp slt i32 %call2, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @has_cache_idc(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %scope) #11 {
entry:
  %cmp = icmp eq i32 %scope, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 3), align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i32 @read_cpuid_effective_cachetype() #25
  %conv = zext i32 %call to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ctr.0 = phi i64 [ %0, %if.then ], [ %conv, %if.else ]
  %and = and i64 %ctr.0, 268435456
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_emulate_effective_ctr(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) #0 {
entry:
  %call = call fastcc i32 @read_cpuid_cachetype() #25
  %0 = and i32 %call, 268435456
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %1 = call i64 asm sideeffect "mrs $0, sctlr_el1", "=r"() #24, !srcloc !59
  %and1 = and i64 %1, -32769
  %cmp.not = icmp eq i64 %and1, %1
  br i1 %cmp.not, label %if.end8, label %do.body4

do.body4:                                         ; preds = %do.body
  call void asm sideeffect "msr sctlr_el1, ${0:x}", "rZ"(i64 %and1) #24, !srcloc !60
  br label %if.end8

if.end8:                                          ; preds = %do.body, %do.body4, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal i1 @has_cache_dic(%struct.arm64_cpu_capabilities* nocapture noundef readnone %entry1, i32 noundef %scope) #11 {
entry:
  %cmp = icmp eq i32 %scope, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct.arm64_ftr_reg, %struct.arm64_ftr_reg* @arm64_ftr_reg_ctrel0, i64 0, i32 3), align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i32 @read_cpuid_cachetype() #25
  %conv = zext i32 %call to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ctr.0 = phi i64 [ %0, %if.then ], [ %conv, %if.else ]
  %and = and i64 %ctr.0, 536870912
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @has_cpuid_feature(%struct.arm64_cpu_capabilities* nocapture noundef readonly %entry1, i32 noundef %scope) #0 {
entry:
  %cmp15 = icmp eq i32 %scope, 2
  %sys_reg = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %entry1, i64 0, i32 5, i32 0, i32 0, i32 0
  %0 = load i32, i32* %sys_reg, align 8
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %entry
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef %0) #22
  br label %if.end20

if.else:                                          ; preds = %entry
  %call19 = call i64 @__read_sysreg_by_encoding(i32 noundef %0) #22
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %val.0 = phi i64 [ %call, %if.then17 ], [ %call19, %if.else ]
  %call21 = call fastcc i1 @feature_matches(i64 noundef %val.0, %struct.arm64_cpu_capabilities* noundef %entry1) #22
  ret i1 %call21
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @cpu_has_fwb(%struct.arm64_cpu_capabilities* nocapture noundef readnone %__unused) #0 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((1) << 16) | ((0) << 12) | ((0) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !61
  %1 = and i64 %0, 954204160
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %if.end, label %if.then, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 1765; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @gic_enable_sre() unnamed_addr #0 {
entry:
  %call = call fastcc i32 @gic_read_sre() #22
  %and = and i32 %call, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %call, 1
  call fastcc void @gic_write_sre(i32 noundef %or) #22
  %call1 = call fastcc i32 @gic_read_sre() #22
  %and2 = and i32 %call1, 1
  %tobool3 = icmp ne i32 %and2, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @gic_read_sre() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !63
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @gic_write_sre(i32 noundef %val) unnamed_addr #0 {
entry:
  %conv = zext i32 %val to i64
  call void asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((12) << 12) | ((12) << 8) | ((5) << 5)), ${0:x}\0A\09.purgem\09msr_s\0A", "rZ"(i64 %conv) #24, !srcloc !64
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !65
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_id() unnamed_addr #9 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !66
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @midr_is_cpu_model_range(i32 noundef %midr, i32 noundef %model, i32 noundef %rv_min, i32 noundef %rv_max) unnamed_addr #3 {
entry:
  %and = and i32 %midr, -15728656
  %and1 = and i32 %midr, 15728655
  %cmp = icmp eq i32 %and, %model
  %cmp2.not = icmp uge i32 %and1, %rv_min
  %cmp3 = icmp ule i32 %and1, %rv_max
  %not.or.cond = and i1 %cmp, %cmp2.not
  %spec.select = and i1 %not.or.cond, %cmp3
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_kernel_in_hyp_mode() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, CurrentEL", "=r"() #24, !srcloc !67
  %cmp = icmp eq i64 %0, 8
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @alternative_is_applied(i16 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @is_midr_in_range_list(i32 noundef %midr) unnamed_addr #12 {
entry:
  %call = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 0)) #22
  br i1 %call, label %return, label %while.cond.1

while.cond.1:                                     ; preds = %entry
  %call.1 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 1)) #22
  br i1 %call.1, label %return, label %while.cond.2

while.cond.2:                                     ; preds = %while.cond.1
  %call.2 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 2)) #22
  br i1 %call.2, label %return, label %while.cond.3

while.cond.3:                                     ; preds = %while.cond.2
  %call.3 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 3)) #22
  br i1 %call.3, label %return, label %while.cond.4

while.cond.4:                                     ; preds = %while.cond.3
  %call.4 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 4)) #22
  br i1 %call.4, label %return, label %while.cond.5

while.cond.5:                                     ; preds = %while.cond.4
  %call.5 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 5)) #22
  br i1 %call.5, label %return, label %while.cond.6

while.cond.6:                                     ; preds = %while.cond.5
  %call.6 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 6)) #22
  br i1 %call.6, label %return, label %while.cond.7

while.cond.7:                                     ; preds = %while.cond.6
  %call.7 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 7)) #22
  br i1 %call.7, label %return, label %while.cond.8

while.cond.8:                                     ; preds = %while.cond.7
  %call.8 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 8)) #22
  br i1 %call.8, label %return, label %while.cond.9

while.cond.9:                                     ; preds = %while.cond.8
  %call.9 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 9)) #22
  br i1 %call.9, label %return, label %while.cond.10

while.cond.10:                                    ; preds = %while.cond.9
  %call.10 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 10)) #22
  br i1 %call.10, label %return, label %while.cond.11

while.cond.11:                                    ; preds = %while.cond.10
  %call.11 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 11)) #22
  br i1 %call.11, label %return, label %while.cond.12

while.cond.12:                                    ; preds = %while.cond.11
  %call.12 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 12)) #22
  br i1 %call.12, label %return, label %while.cond.13

while.cond.13:                                    ; preds = %while.cond.12
  %call.13 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 13)) #22
  br i1 %call.13, label %return, label %while.cond.14

while.cond.14:                                    ; preds = %while.cond.13
  %call.14 = call fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* noundef getelementptr inbounds ([16 x %struct.midr_range], [16 x %struct.midr_range]* @unmap_kernel_at_el0.kpti_safe_list, i64 0, i64 14)) #22
  br label %return

return:                                           ; preds = %while.cond.14, %while.cond.13, %while.cond.12, %while.cond.11, %while.cond.10, %while.cond.9, %while.cond.8, %while.cond.7, %while.cond.6, %while.cond.5, %while.cond.4, %while.cond.3, %while.cond.2, %while.cond.1, %entry
  %tobool.not.lcssa = phi i1 [ true, %entry ], [ true, %while.cond.1 ], [ true, %while.cond.2 ], [ true, %while.cond.3 ], [ true, %while.cond.4 ], [ true, %while.cond.5 ], [ true, %while.cond.6 ], [ true, %while.cond.7 ], [ true, %while.cond.8 ], [ true, %while.cond.9 ], [ true, %while.cond.10 ], [ true, %while.cond.11 ], [ true, %while.cond.12 ], [ true, %while.cond.13 ], [ %call.14, %while.cond.14 ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cpu_mitigations_off() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_midr_in_range(i32 noundef %midr, %struct.midr_range* nocapture noundef readonly %range) unnamed_addr #8 {
entry:
  %model = getelementptr inbounds %struct.midr_range, %struct.midr_range* %range, i64 0, i32 0
  %0 = load i32, i32* %model, align 4
  %rv_min = getelementptr inbounds %struct.midr_range, %struct.midr_range* %range, i64 0, i32 1
  %1 = load i32, i32* %rv_min, align 4
  %rv_max = getelementptr inbounds %struct.midr_range, %struct.midr_range* %range, i64 0, i32 2
  %2 = load i32, i32* %rv_max, align 4
  %call = call fastcc i1 @midr_is_cpu_model_range(i32 noundef %midr, i32 noundef %0, i32 noundef %1, i32 noundef %2) #22
  ret i1 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #13 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #26, !srcloc !68
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idmap_kpti_install_ng_mappings(i32 noundef, i32 noundef, i64 noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_install_idmap() unnamed_addr #0 {
entry:
  call fastcc void @cpu_set_reserved_ttbr0() #22
  call fastcc void @local_flush_tlb_all() #22
  %0 = load i64, i64* @idmap_t0sz, align 8
  call fastcc void @__cpu_set_tcr_t0sz(i64 noundef %0) #22
  %1 = load i64, i64* @kimage_voffset, align 8
  %2 = load i64, i64* @memstart_addr, align 8
  %3 = add i64 %1, %2
  %sub2 = sub i64 ptrtoint ([512 x %struct.pgd_t]* @idmap_pg_dir to i64), %3
  %or = or i64 %sub2, -549755813888
  %4 = inttoptr i64 %or to %struct.pgd_t*
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef nonnull %4, %struct.mm_struct* noundef nonnull @init_mm) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @num_online_cpus() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @__num_online_cpus, i64 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_uninstall_idmap() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #27, !srcloc !69
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %2 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  call fastcc void @cpu_set_reserved_ttbr0() #22
  call fastcc void @local_flush_tlb_all() #22
  %3 = load i64, i64* @vabits_actual, align 8
  %sub = sub i64 64, %3
  call fastcc void @__cpu_set_tcr_t0sz(i64 noundef %sub) #22
  %cmp.not = icmp eq %struct.mm_struct* %2, @init_mm
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %4 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %4, %struct.mm_struct* noundef %2) #22
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #24, !srcloc !70
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !71
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb nshst", "~{memory}"() #24, !srcloc !72
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #24, !srcloc !73
  call void asm sideeffect "dsb nsh", "~{memory}"() #24, !srcloc !74
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !75
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpu_set_tcr_t0sz(i64 noundef %t0sz) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, tcr_el1", "=r"() #24, !srcloc !76
  %and = and i64 %0, 63
  %cmp = icmp eq i64 %and, %t0sz
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i64 %0, -64
  %or = or i64 %and1, %t0sz
  call void asm sideeffect "msr tcr_el1, ${0:x}", "rZ"(i64 %or) #24, !srcloc !77
  call void asm sideeffect "isb", "~{memory}"() #24, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %pgd, %struct.mm_struct* noundef %mm) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pgd_t* %pgd, getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @swapper_pg_dir, i64 0, i64 0)
  br i1 %cmp, label %do.body2, label %do.end5, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/mmu_context.h\22; .popsection; .long 14472b - 14470b; .short 53; .short 0; .popsection; 14471: brk 0x800", ""() #24, !srcloc !79
  unreachable

do.end5:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #22
  %0 = bitcast %struct.pgd_t* %pgd to i8*
  %call = call fastcc i64 @virt_to_phys(i8* noundef %0) #22
  call void @cpu_do_switch_mm(i64 noundef %call, %struct.mm_struct* noundef %mm) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_do_switch_mm(i64 noundef, %struct.mm_struct* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cpuid_feature_extract_signed_field(i64 noundef %features) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cpuid_feature_extract_signed_field_width(i64 noundef %features, i32 noundef 16, i32 noundef 4) #25
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_effective_cachetype() unnamed_addr #9 {
entry:
  %call = call fastcc i32 @read_cpuid_cachetype() #25
  %0 = and i32 %call, 268435456
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %1 = call i64 asm sideeffect "mrs $0, clidr_el1", "=r"() #24, !srcloc !80
  %2 = and i64 %1, 117440512
  %cmp = icmp eq i64 %2, 0
  %3 = and i64 %1, 954204160
  %4 = icmp eq i64 %3, 0
  %or.cond = or i1 %cmp, %4
  %or = or i32 %call, 268435456
  %spec.select = select i1 %or.cond, i32 %or, i32 %call
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry
  %ctr.1 = phi i32 [ %call, %entry ], [ %spec.select, %if.then ]
  ret i32 %ctr.1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_cachetype() unnamed_addr #9 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((3) << 16) | ((0) << 12) | ((0) << 8) | ((1) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !81
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @feature_matches(i64 noundef %reg, %struct.arm64_cpu_capabilities* nocapture noundef readonly %entry1) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %entry1, i64 0, i32 5
  %1 = bitcast %union.anon.73* %0 to %struct.anon.75*
  %field_pos = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %entry1, i64 0, i32 5, i32 0, i32 0, i32 1
  %2 = bitcast i32* %field_pos to i8*
  %3 = load i8, i8* %2, align 4
  %conv = zext i8 %3 to i32
  %sign = getelementptr inbounds %struct.anon.75, %struct.anon.75* %1, i64 0, i32 4
  %4 = load i8, i8* %sign, align 1, !range !12
  %tobool = icmp ne i8 %4, 0
  %call = call fastcc i32 @cpuid_feature_extract_field(i64 noundef %reg, i32 noundef %conv, i1 noundef %tobool) #25
  %min_field_value = getelementptr inbounds %struct.anon.75, %struct.anon.75* %1, i64 0, i32 2
  %5 = load i8, i8* %min_field_value, align 1
  %conv2 = zext i8 %5 to i32
  %cmp = icmp sge i32 %call, %conv2
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @cpuid_feature_extract_field(i64 noundef %features, i32 noundef %field, i1 noundef %sign) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @cpuid_feature_extract_field_width(i64 noundef %features, i32 noundef %field, i32 noundef 4, i1 noundef %sign) #25
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_cpu_ftr_reg(%struct.arm64_ftr_reg* nocapture noundef %reg, i64 noundef %new) unnamed_addr #0 {
entry:
  %ftr_bits = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %reg, i64 0, i32 6
  %0 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %ftr_bits, align 8
  %width21 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %0, i64 0, i32 5
  %1 = load i8, i8* %width21, align 1
  %tobool.not22 = icmp eq i8 %1, 0
  br i1 %tobool.not22, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sys_val = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %reg, i64 0, i32 3
  %.pre = load i64, i64* %sys_val, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %2 = phi i64 [ %.pre, %for.body.lr.ph ], [ %4, %cleanup ]
  %ftrp.023 = phi %struct.arm64_ftr_bits* [ %0, %for.body.lr.ph ], [ %incdec.ptr, %cleanup ]
  %call = call fastcc i64 @arm64_ftr_value(%struct.arm64_ftr_bits* noundef %ftrp.023, i64 noundef %2) #22
  %call1 = call fastcc i64 @arm64_ftr_value(%struct.arm64_ftr_bits* noundef %ftrp.023, i64 noundef %new) #22
  %cmp = icmp eq i64 %call, %call1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %call2 = call fastcc i64 @arm64_ftr_safe_value(%struct.arm64_ftr_bits* noundef %ftrp.023, i64 noundef %call1, i64 noundef %call) #22
  %3 = load i64, i64* %sys_val, align 8
  %call4 = call fastcc i64 @arm64_ftr_set_value(%struct.arm64_ftr_bits* noundef %ftrp.023, i64 noundef %3, i64 noundef %call2) #22
  store i64 %call4, i64* %sys_val, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end
  %4 = phi i64 [ %2, %for.body ], [ %call4, %if.end ]
  %incdec.ptr = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.023, i64 1
  %width = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.023, i64 1, i32 5
  %5 = load i8, i8* %width, align 1
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @id_aa64pfr0_32bit_el1(i64 noundef %pfr0) unnamed_addr #3 {
entry:
  %0 = and i64 %pfr0, 240
  %cmp = icmp eq i64 %0, 32
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @relax_cpu_ftr_reg(i32 noundef %sys_id, i32 noundef %field) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg(i32 noundef %sys_id) #22
  %tobool.not = icmp eq %struct.arm64_ftr_reg* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ftr_bits = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 6
  %0 = load %struct.arm64_ftr_bits*, %struct.arm64_ftr_bits** %ftr_bits, align 8
  %width40 = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %0, i64 0, i32 5
  %1 = load i8, i8* %width40, align 1
  %tobool1.not41 = icmp eq i8 %1, 0
  br i1 %tobool1.not41, label %if.then17, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %ftrp.042 = phi %struct.arm64_ftr_bits* [ %incdec.ptr, %for.inc ], [ %0, %if.end ]
  %shift = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.042, i64 0, i32 4
  %2 = load i8, i8* %shift, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, %field
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.042, i64 1
  %width = getelementptr %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.042, i64 1, i32 5
  %3 = load i8, i8* %width, align 1
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then17, label %for.body

for.end:                                          ; preds = %for.body
  %width.le = getelementptr inbounds %struct.arm64_ftr_bits, %struct.arm64_ftr_bits* %ftrp.042, i64 0, i32 5
  %call4 = call fastcc i64 @arm64_ftr_mask(%struct.arm64_ftr_bits* noundef %ftrp.042) #22
  %neg = xor i64 %call4, -1
  %strict_mask = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %call, i64 0, i32 1
  %4 = load i64, i64* %strict_mask, align 8
  %and = and i64 %4, %neg
  store i64 %and, i64* %strict_mask, align 8
  %.pr = load i8, i8* %width.le, align 1
  %tobool7.not = icmp eq i8 %.pr, 0
  br i1 %tobool7.not, label %if.then17, label %cleanup, !prof !8

if.then17:                                        ; preds = %for.inc, %if.end, %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 1011; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.arm64_ftr_reg* @get_arm64_ftr_reg_nowarn(i32 noundef %sys_id) unnamed_addr #0 {
entry:
  %conv = zext i32 %sys_id to i64
  %0 = inttoptr i64 %conv to i8*
  %call = call i8* @bsearch(i8* noundef %0, i8* noundef bitcast ([36 x %struct.__ftr_reg_entry]* @arm64_ftr_regs to i8*), i64 noundef 36, i64 noundef 16, i32 (i8*, i8*)* noundef nonnull @search_cmp_ftr_reg) #23
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %reg = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %reg to %struct.arm64_ftr_reg**
  %2 = load %struct.arm64_ftr_reg*, %struct.arm64_ftr_reg** %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.arm64_ftr_reg* [ %2, %if.then ], [ null, %entry ]
  ret %struct.arm64_ftr_reg* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @bsearch(i8* noundef, i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @search_cmp_ftr_reg(i8* noundef %id, i8* nocapture noundef readonly %regp) #8 {
entry:
  %0 = ptrtoint i8* %id to i64
  %conv = trunc i64 %0 to i32
  %sys_id = bitcast i8* %regp to i32*
  %1 = load i32, i32* %sys_id, align 8
  %sub = sub i32 %conv, %1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(%struct.device* noundef, %struct.device_attribute* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @aarch32_el0_show(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %call = call %struct.cpumask* @system_32bit_el0_cpumask() #22
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %call, i64 0, i32 0, i64 0
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i64 0, i64 0), i32 noundef %0, i64* noundef %arraydecay) #23
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s, i8* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef %res) #23
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @verify_cpu_asid_bits() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @verify_local_cpu_caps(i16 noundef %scope_mask) unnamed_addr #0 {
entry:
  %0 = and i16 %scope_mask, 7
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr [61 x %struct.arm64_cpu_capabilities*], [61 x %struct.arm64_cpu_capabilities*]* @cpu_hwcaps_ptrs, i64 0, i64 %indvars.iv
  %1 = load %struct.arm64_cpu_capabilities*, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  %tobool.not = icmp eq %struct.arm64_cpu_capabilities* %1, null
  br i1 %tobool.not, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %1, i64 0, i32 2
  %2 = load i16, i16* %type, align 2
  %and590 = and i16 %0, %2
  %tobool6.not = icmp eq i16 %and590, 0
  br i1 %tobool6.not, label %for.inc, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %matches = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %1, i64 0, i32 3
  %3 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches, align 8
  %call = call i1 %3(%struct.arm64_cpu_capabilities* noundef nonnull %1, i32 noundef 1) #23
  %capability = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %1, i64 0, i32 1
  %4 = load i16, i16* %capability, align 8
  %conv7 = zext i16 %4 to i32
  %call8 = call fastcc i1 @cpus_have_cap(i32 noundef %conv7) #22
  br i1 %call8, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  br i1 %call, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11
  %call13 = call fastcc i1 @cpucap_late_cpu_optional(%struct.arm64_cpu_capabilities* noundef nonnull %1) #22
  br i1 %call13, label %if.end15, label %do.body30

if.end15:                                         ; preds = %land.lhs.true, %if.then11
  %cpu_enable = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %1, i64 0, i32 4
  %5 = load void (%struct.arm64_cpu_capabilities*)*, void (%struct.arm64_cpu_capabilities*)** %cpu_enable, align 8
  %tobool16.not = icmp eq void (%struct.arm64_cpu_capabilities*)* %5, null
  br i1 %tobool16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void %5(%struct.arm64_cpu_capabilities* noundef nonnull %1) #23
  br label %for.inc

if.else:                                          ; preds = %if.end
  br i1 %call, label %land.lhs.true22, label %for.inc

land.lhs.true22:                                  ; preds = %if.else
  %call23 = call fastcc i1 @cpucap_late_cpu_permitted(%struct.arm64_cpu_capabilities* noundef nonnull %1) #22
  br i1 %call23, label %for.inc, label %do.body30

for.inc:                                          ; preds = %if.then17, %if.end15, %land.lhs.true22, %if.else, %for.body, %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 61
  br i1 %exitcond.not, label %if.end47, label %for.body

do.body30:                                        ; preds = %land.lhs.true22, %land.lhs.true
  %capability.le = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %1, i64 0, i32 1
  %6 = xor i1 %call8, true
  %call35 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call35, ptrtoint (i32* @cpu_number to i64)
  %7 = inttoptr i64 %add to i32*
  %8 = load i32, i32* %7, align 4
  %9 = load i16, i16* %capability.le, align 8
  %conv37 = zext i16 %9 to i32
  %desc = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %1, i64 0, i32 0
  %10 = load i8*, i8** %desc, align 8
  %conv39 = zext i1 %call8 to i32
  %conv41 = zext i1 %6 to i32
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.114, i64 0, i64 0), i32 noundef %8, i32 noundef %conv37, i8* noundef %10, i32 noundef %conv39, i32 noundef %conv41) #20
  %call43 = call fastcc i1 @cpucap_panic_on_conflict(%struct.arm64_cpu_capabilities* noundef nonnull %1) #22
  br i1 %call43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %do.body30
  call fastcc void @cpu_panic_kernel() #22
  unreachable

if.else45:                                        ; preds = %do.body30
  call void @cpu_die_early() #23
  br label %if.end47

if.end47:                                         ; preds = %for.inc, %if.else45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i32 %num, 60
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div.i = lshr i32 %num, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr [1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %sh_prom.i = zext i32 %num to i64
  %1 = shl nuw nsw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cpucap_late_cpu_optional(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) unnamed_addr #8 {
entry:
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 2
  %0 = load i16, i16* %type, align 2
  %1 = and i16 %0, 32
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cpucap_late_cpu_permitted(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) unnamed_addr #8 {
entry:
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 2
  %0 = load i16, i16* %type, align 2
  %1 = and i16 %0, 16
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @cpucap_panic_on_conflict(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) unnamed_addr #8 {
entry:
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 2
  %0 = load i16, i16* %type, align 2
  %1 = and i16 %0, 64
  %tobool = icmp ne i16 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @cpu_panic_kernel() unnamed_addr #16 {
entry:
  call fastcc void @update_cpu_boot_status() #22
  call fastcc void @cpu_park_loop() #22
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_die_early() local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_cpu_boot_status() unnamed_addr #0 {
entry:
  store volatile i64 3, i64* getelementptr inbounds (%struct.secondary_data, %struct.secondary_data* @secondary_data, i64 0, i32 1), align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !83
  ret void
}

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid
define internal fastcc void @cpu_park_loop() unnamed_addr #16 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  call void asm sideeffect "wfe", "~{memory}"() #24, !srcloc !84
  call void asm sideeffect "wfi", "~{memory}"() #24, !srcloc !85
  br label %for.cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @cpucap_default_scope(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) unnamed_addr #8 {
entry:
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 2
  %0 = load i16, i16* %type, align 2
  %1 = and i16 %0, 7
  %and = zext i16 %1 to i32
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpus_set_cap(i32 noundef %num) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %num, 60
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.116, i64 0, i64 0), i32 noundef %num, i32 noundef 61) #20
  br label %if.end

if.else:                                          ; preds = %entry
  %sh_prom.i = zext i32 %num to i64
  %shl.i = shl nuw nsw i64 1, %sh_prom.i
  %0 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %or.i = or i64 %0, %shl.i
  store i64 %or.i, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
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
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #24, !srcloc !86
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @verify_local_elf_hwcaps() unnamed_addr #0 {
entry:
  call fastcc void @__verify_local_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef bitcast (<{ { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, { i8*, i16, i16, i1 (%struct.arm64_cpu_capabilities*, i32)*, void (%struct.arm64_cpu_capabilities*)*, { %struct.anon.75, [8 x i8] }, %struct.arm64_cpu_capabilities* }, %struct.arm64_cpu_capabilities }>* @arm64_elf_hwcaps to %struct.arm64_cpu_capabilities*)) #22
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((4) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #24, !srcloc !87
  %call = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %0) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__verify_local_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef getelementptr inbounds ([1 x %struct.arm64_cpu_capabilities], [1 x %struct.arm64_cpu_capabilities]* @compat_elf_hwcaps, i64 0, i64 0)) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__verify_local_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef %caps) unnamed_addr #0 {
entry:
  %matches16 = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps, i64 0, i32 3
  %0 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches16, align 8
  %tobool.not17 = icmp eq i1 (%struct.arm64_cpu_capabilities*, i32)* %0, null
  br i1 %tobool.not17, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %matches20 = phi i1 (%struct.arm64_cpu_capabilities*, i32)** [ %matches, %for.inc ], [ %matches16, %entry ]
  %caps.addr.018 = phi %struct.arm64_cpu_capabilities* [ %incdec.ptr, %for.inc ], [ %caps, %entry ]
  %call = call fastcc i1 @cpus_have_elf_hwcap(%struct.arm64_cpu_capabilities* noundef %caps.addr.018) #22
  br i1 %call, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %1 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches20, align 8
  %call2 = call i1 %1(%struct.arm64_cpu_capabilities* noundef %caps.addr.018, i32 noundef 1) #23
  br i1 %call2, label %for.inc, label %do.body3

do.body3:                                         ; preds = %land.lhs.true
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call7, ptrtoint (i32* @cpu_number to i64)
  %2 = inttoptr i64 %add to i32*
  %3 = load i32, i32* %2, align 4
  %desc = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps.addr.018, i64 0, i32 0
  %4 = load i8*, i8** %desc, align 8
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.117, i64 0, i64 0), i32 noundef %3, i8* noundef %4) #20
  call void @cpu_die_early() #23
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %do.body3
  %incdec.ptr = getelementptr %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps.addr.018, i64 1
  %matches = getelementptr %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %caps.addr.018, i64 1, i32 3
  %5 = load i1 (%struct.arm64_cpu_capabilities*, i32)*, i1 (%struct.arm64_cpu_capabilities*, i32)** %matches, align 8
  %tobool.not = icmp eq i1 (%struct.arm64_cpu_capabilities*, i32)* %5, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @cpus_have_elf_hwcap(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 5
  %1 = bitcast %union.anon.73* %0 to %struct.anon.75*
  %hwcap_type = getelementptr inbounds %struct.anon.75, %struct.anon.75* %1, i64 0, i32 3
  %2 = load i8, i8* %hwcap_type, align 2
  %cond = icmp eq i8 %2, 1
  br i1 %cond, label %sw.bb, label %if.then

sw.bb:                                            ; preds = %entry
  %hwcap = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 5, i32 0, i32 0, i32 2
  %3 = bitcast i32* %hwcap to i64*
  %4 = load i64, i64* %3, align 8
  %conv1 = trunc i64 %4 to i32
  %call = call i1 @cpu_have_feature(i32 noundef %conv1) #22
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 2533; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !88
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb
  %rc.0.off0 = phi i1 [ %call, %sw.bb ], [ false, %if.then ]
  ret i1 %rc.0.off0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @enable_cpu_capabilities(i16 noundef %scope_mask) unnamed_addr #2 section ".init.text" {
entry:
  %0 = and i16 %scope_mask, 7
  %1 = and i16 %scope_mask, 4
  %tobool.not = icmp eq i16 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %for.body.backedge ]
  %arrayidx = getelementptr [61 x %struct.arm64_cpu_capabilities*], [61 x %struct.arm64_cpu_capabilities*]* @cpu_hwcaps_ptrs, i64 0, i64 %indvars.iv
  %2 = load %struct.arm64_cpu_capabilities*, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  %tobool6.not = icmp eq %struct.arm64_cpu_capabilities* %2, null
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 2
  %3 = load i16, i16* %type, align 2
  %and941 = and i16 %0, %3
  %tobool10.not = icmp eq i16 %and941, 0
  br i1 %tobool10.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %capability = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 1
  %4 = load i16, i16* %capability, align 8
  %conv11 = zext i16 %4 to i32
  %call = call fastcc i1 @cpus_have_cap(i32 noundef %conv11) #22
  br i1 %call, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %idxprom14 = zext i16 %4 to i64
  %key = getelementptr [61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 %idxprom14, i32 0
  call fastcc void @static_key_enable(%struct.static_key* noundef %key) #22
  br i1 %tobool.not, label %cleanup.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %cpu_enable = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %2, i64 0, i32 4
  %5 = load void (%struct.arm64_cpu_capabilities*)*, void (%struct.arm64_cpu_capabilities*)** %cpu_enable, align 8
  %tobool18.not = icmp eq void (%struct.arm64_cpu_capabilities*)* %5, null
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  call void %5(%struct.arm64_cpu_capabilities* noundef nonnull %2) #23
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.then19, %if.end, %for.body, %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 61
  br i1 %exitcond.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %cleanup, %cleanup.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %cleanup ], [ %indvars.iv.next44, %cleanup.thread ]
  br label %for.body

cleanup.thread:                                   ; preds = %if.end13
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not45 = icmp eq i64 %indvars.iv.next44, 61
  br i1 %exitcond.not45, label %if.then23, label %for.body.backedge

for.end:                                          ; preds = %cleanup
  br i1 %tobool.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %cleanup.thread, %for.end
  %call24 = call i32 @stop_machine(i32 (i8*)* noundef nonnull @cpu_enable_non_boot_scope_capabilities, i8* noundef null, %struct.cpumask* noundef nonnull @__cpu_online_mask) #23
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable(%struct.static_key* noundef %key) unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef %key) #23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* %counter.i, align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !13

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !90
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* %counter.i, align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(i32 (i8*)* noundef, i8* noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @cpu_enable_non_boot_scope_capabilities(i8* nocapture noundef readnone %__unused) #0 {
entry:
  %call = call fastcc i64 @find_first_bit() #22
  %i.047 = trunc i64 %call to i32
  %cmp48 = icmp slt i32 %i.047, 61
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cleanup
  %i.0.in49 = phi i64 [ %call31, %cleanup ], [ %call, %entry ]
  %sext = shl i64 %i.0.in49, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr [61 x %struct.arm64_cpu_capabilities*], [61 x %struct.arm64_cpu_capabilities*]* @cpu_hwcaps_ptrs, i64 0, i64 %idxprom
  %0 = load %struct.arm64_cpu_capabilities*, %struct.arm64_cpu_capabilities** %arrayidx, align 8
  %tobool.not = icmp eq %struct.arm64_cpu_capabilities* %0, null
  br i1 %tobool.not, label %if.then, label %if.end20, !prof !8

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 2583; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !91
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %type = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %0, i64 0, i32 2
  %1 = load i16, i16* %type, align 2
  %2 = and i16 %1, 3
  %tobool23.not = icmp eq i16 %2, 0
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end20
  %cpu_enable = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %0, i64 0, i32 4
  %3 = load void (%struct.arm64_cpu_capabilities*)*, void (%struct.arm64_cpu_capabilities*)** %cpu_enable, align 8
  %tobool26.not = icmp eq void (%struct.arm64_cpu_capabilities*)* %3, null
  br i1 %tobool26.not, label %cleanup, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void %3(%struct.arm64_cpu_capabilities* noundef nonnull %0) #23
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end25, %if.then27, %if.end20
  %sext46 = add i64 %sext, 4294967296
  %conv30 = ashr exact i64 %sext46, 32
  %call31 = call fastcc i64 @find_next_bit(i64 noundef %conv30) #22
  %i.0 = trunc i64 %call31 to i32
  %cmp = icmp slt i32 %i.0, 61
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_first_bit() unnamed_addr #11 {
entry:
  %0 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and4 = and i64 %0, 2305843009213693951
  %tobool.not = icmp eq i64 %and4, 0
  %1 = call i64 @llvm.cttz.i64(i64 %and4, i1 true) #24, !range !92
  %spec.select = select i1 %tobool.not, i64 61, i64 %1
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @find_next_bit(i64 noundef %offset) unnamed_addr #11 {
entry:
  %cmp3 = icmp ugt i64 %offset, 60
  br i1 %cmp3, label %return, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %shl.neg = shl nsw i64 -1, %offset
  %and = and i64 %shl.neg, 2305843009213693951
  %and9 = and i64 %and, %0
  %tobool10.not = icmp eq i64 %and9, 0
  %1 = call i64 @llvm.cttz.i64(i64 %and9, i1 true) #24, !range !92
  %spec.select = select i1 %tobool10.not, i64 61, i64 %1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 61, %entry ], [ %spec.select, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #17

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cap_set_elf_hwcap(%struct.arm64_cpu_capabilities* nocapture noundef readonly %cap) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 5
  %1 = bitcast %union.anon.73* %0 to %struct.anon.75*
  %hwcap_type = getelementptr inbounds %struct.anon.75, %struct.anon.75* %1, i64 0, i32 3
  %2 = load i8, i8* %hwcap_type, align 2
  %cond = icmp eq i8 %2, 1
  br i1 %cond, label %sw.bb, label %if.then

sw.bb:                                            ; preds = %entry
  %hwcap = getelementptr inbounds %struct.arm64_cpu_capabilities, %struct.arm64_cpu_capabilities* %cap, i64 0, i32 5, i32 0, i32 0, i32 2
  %3 = bitcast i32* %hwcap to i64*
  %4 = load i64, i64* %3, align 8
  %conv1 = trunc i64 %4 to i32
  call void @cpu_set_feature(i32 noundef %conv1) #22
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/cpufeature.c\22; .popsection; .long 14472b - 14470b; .short 2510; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #24, !srcloc !93
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @zalloc_cpumask_var() unnamed_addr #0 {
entry:
  call fastcc void @cpumask_clear() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpuhp_setup_state() unnamed_addr #0 {
entry:
  %call = call i32 @__cpuhp_setup_state(i32 noundef 192, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.155, i64 0, i64 0), i1 noundef true, i32 (i32)* noundef nonnull @enable_mismatched_32bit_el0, i32 (i32)* noundef null, i1 noundef false) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @enable_mismatched_32bit_el0(i32 noundef %cpu) #0 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  %add = add i64 %0, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %1 = inttoptr i64 %add to %struct.cpuinfo_arm64*
  %reg_id_aa64pfr0 = getelementptr inbounds %struct.cpuinfo_arm64, %struct.cpuinfo_arm64* %1, i64 0, i32 15
  %2 = load i64, i64* %reg_id_aa64pfr0, align 8
  %call = call fastcc i1 @id_aa64pfr0_32bit_el0(i64 noundef %2) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @cpumask_set_cpu(i32 noundef %cpu) #22
  call fastcc void @static_key_enable(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_mismatched_32bit_el0, i64 0, i32 0)) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call fastcc i32 @cpumask_test_cpu() #22
  %conv = zext i1 %call to i32
  %cmp = icmp eq i32 %call2, %conv
  %3 = load i32, i32* @enable_mismatched_32bit_el0.lucky_winner, align 4
  %cmp7 = icmp sgt i32 %3, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  br i1 %call, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.end10
  %call13 = call i32 @cpumask_next_and(i32 noundef -1, %struct.cpumask* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @cpu_32bit_el0_mask, i64 0, i64 0), %struct.cpumask* noundef nonnull @__cpu_active_mask) #28
  br label %cond.end

cond.end:                                         ; preds = %if.end10, %cond.false
  %cond = phi i32 [ %call13, %cond.false ], [ %cpu, %if.end10 ]
  store i32 %cond, i32* @enable_mismatched_32bit_el0.lucky_winner, align 4
  %call14 = call %struct.device* @get_cpu_device(i32 noundef %cond) #23
  %offline_disabled = getelementptr inbounds %struct.device, %struct.device* %call14, i64 0, i32 37
  %bf.load = load i8, i8* %offline_disabled, align 4
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %offline_disabled, align 4
  call fastcc void @setup_elf_hwcaps(%struct.arm64_cpu_capabilities* noundef getelementptr inbounds ([1 x %struct.arm64_cpu_capabilities], [1 x %struct.arm64_cpu_capabilities]* @compat_elf_hwcaps, i64 0, i64 0)) #22
  %4 = load i32, i32* @enable_mismatched_32bit_el0.lucky_winner, align 4
  %call19 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.156, i64 0, i64 0), i32 noundef %cpu, i32 noundef %4) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear() unnamed_addr #0 {
entry:
  call fastcc void @bitmap_zero() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero() unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef bitcast ([1 x %struct.cpumask]* @cpu_32bit_el0_mask to i8*), i32 noundef 0, i64 noundef 32) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, i8* noundef, i1 noundef, i32 (i32)* noundef, i32 (i32)* noundef, i1 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu) unnamed_addr #0 {
entry:
  %conv = zext i32 %cpu to i64
  call fastcc void @set_bit(i64 noundef %conv, i64* noundef getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @cpu_32bit_el0_mask, i64 0, i64 0, i32 0, i64 0)) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu() unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x %struct.cpumask], [1 x %struct.cpumask]* @cpu_32bit_el0_mask, i64 0, i64 0, i32 0, i64 0), align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, %struct.cpumask* noundef, %struct.cpumask* noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_cpu_device(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_emulated(i32 noundef %id) unnamed_addr #3 {
entry:
  %0 = and i32 %id, 2093056
  %1 = icmp eq i32 %0, 1572864
  br i1 %1, label %land.rhs, label %land.end18

land.rhs:                                         ; preds = %entry
  %2 = and i32 %id, 3840
  %cmp10 = icmp eq i32 %2, 0
  br i1 %cmp10, label %land.end18, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = and i32 %id, 3072
  %4 = icmp eq i32 %3, 1024
  br label %land.end18

land.end18:                                       ; preds = %land.rhs, %lor.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ true, %land.rhs ], [ %4, %lor.rhs ]
  ret i1 %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i32 @emulate_id_reg(i32 noundef %id, i64* nocapture noundef writeonly %valp) unnamed_addr #19 {
entry:
  switch i32 %id, label %return [
    i32 1572864, label %sw.bb
    i32 1573024, label %return.sink.split
    i32 1573056, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @read_cpuid_id() #25
  %conv = zext i32 %call to i64
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  br label %return.sink.split

return.sink.split:                                ; preds = %entry, %sw.bb2, %sw.bb
  %conv.sink = phi i64 [ %conv, %sw.bb ], [ 0, %sw.bb2 ], [ 2147483648, %entry ]
  store i64 %conv.sink, i64* %valp, align 8
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @arm64_ftr_reg_user_value(%struct.arm64_ftr_reg* nocapture noundef readonly %reg) unnamed_addr #8 {
entry:
  %user_val = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %reg, i64 0, i32 4
  %0 = load i64, i64* %user_val, align 8
  %sys_val = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %reg, i64 0, i32 3
  %1 = load i64, i64* %sys_val, align 8
  %user_mask = getelementptr inbounds %struct.arm64_ftr_reg, %struct.arm64_ftr_reg* %reg, i64 0, i32 2
  %2 = load i64, i64* %user_mask, align 8
  %and = and i64 %2, %1
  %or = or i64 %and, %0
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(%struct.undef_hook* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @emulate_mrs(%struct.pt_regs* noundef %regs, i32 noundef %insn) #0 {
entry:
  %call = call i64 @aarch64_insn_decode_immediate(i32 noundef 3, i32 noundef %insn) #23
  %conv = trunc i64 %call to i32
  %shl = shl i32 %conv, 5
  %call1 = call i32 @aarch64_insn_decode_register(i32 noundef 0, i32 noundef %insn) #23
  %call2 = call i32 @do_emulate_mrs(%struct.pt_regs* noundef %regs, i32 noundef %shl, i32 noundef %call1) #22
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @aarch64_insn_decode_immediate(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_insn_decode_register(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree nounwind readonly }
attributes #15 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #16 = { noinline noreturn nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #19 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { cold nobuiltin "no-builtins" }
attributes #22 = { nobuiltin "no-builtins" }
attributes #23 = { nobuiltin nounwind "no-builtins" }
attributes #24 = { nounwind }
attributes #25 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #26 = { nounwind readonly }
attributes #27 = { nounwind readnone }
attributes #28 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!9 = !{i64 2155342035}
!10 = !{i64 2155344094}
!11 = !{i64 2155345612}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155335555}
!15 = !{i64 2155371374, i64 2155371476, i64 2155371516, i64 2155371534, i64 2155371276, i64 2155371564, i64 2155371592, i64 2155371092, i64 2155371925}
!16 = !{i64 2155372830, i64 2155372932, i64 2155372972, i64 2155372990, i64 2155372732, i64 2155373020, i64 2155373048, i64 2155372548, i64 2155373381}
!17 = !{i64 2155374286, i64 2155374388, i64 2155374428, i64 2155374446, i64 2155374188, i64 2155374476, i64 2155374504, i64 2155374004, i64 2155374837}
!18 = !{i64 2155375742, i64 2155375844, i64 2155375884, i64 2155375902, i64 2155375644, i64 2155375932, i64 2155375960, i64 2155375460, i64 2155376293}
!19 = !{i64 2155377198, i64 2155377300, i64 2155377340, i64 2155377358, i64 2155377100, i64 2155377388, i64 2155377416, i64 2155376916, i64 2155377749}
!20 = !{i64 2155378654, i64 2155378756, i64 2155378796, i64 2155378814, i64 2155378556, i64 2155378844, i64 2155378872, i64 2155378372, i64 2155379205}
!21 = !{i64 2155380110, i64 2155380212, i64 2155380252, i64 2155380270, i64 2155380012, i64 2155380300, i64 2155380328, i64 2155379828, i64 2155380661}
!22 = !{i64 2155381566, i64 2155381668, i64 2155381708, i64 2155381726, i64 2155381468, i64 2155381756, i64 2155381784, i64 2155381284, i64 2155382117}
!23 = !{i64 2155383022, i64 2155383124, i64 2155383164, i64 2155383182, i64 2155382924, i64 2155383212, i64 2155383240, i64 2155382740, i64 2155383573}
!24 = !{i64 2155384478, i64 2155384580, i64 2155384620, i64 2155384638, i64 2155384380, i64 2155384668, i64 2155384696, i64 2155384196, i64 2155389090}
!25 = !{i64 2155389995, i64 2155390097, i64 2155390137, i64 2155390155, i64 2155389897, i64 2155390185, i64 2155390213, i64 2155389713, i64 2155390546}
!26 = !{i64 2155391451, i64 2155391553, i64 2155391593, i64 2155391611, i64 2155391353, i64 2155391641, i64 2155391669, i64 2155391169, i64 2155392002}
!27 = !{i64 2155392907, i64 2155393009, i64 2155393049, i64 2155393067, i64 2155392809, i64 2155393097, i64 2155393125, i64 2155392625, i64 2155393458}
!28 = !{i64 2155394363, i64 2155394465, i64 2155394505, i64 2155394523, i64 2155394265, i64 2155394553, i64 2155394581, i64 2155394081, i64 2155394914}
!29 = !{i64 2155395819, i64 2155395921, i64 2155395961, i64 2155395979, i64 2155395721, i64 2155396009, i64 2155396037, i64 2155395537, i64 2155396370}
!30 = !{i64 2155397275, i64 2155397377, i64 2155397417, i64 2155397435, i64 2155397177, i64 2155397465, i64 2155397493, i64 2155396993, i64 2155397826}
!31 = !{i64 2155398731, i64 2155398833, i64 2155398873, i64 2155398891, i64 2155398633, i64 2155398921, i64 2155398949, i64 2155398449, i64 2155399282}
!32 = !{i64 2155400187, i64 2155400289, i64 2155400329, i64 2155400347, i64 2155400089, i64 2155400377, i64 2155400405, i64 2155399905, i64 2155400738}
!33 = !{i64 2155401643, i64 2155401745, i64 2155401785, i64 2155401803, i64 2155401545, i64 2155401833, i64 2155401861, i64 2155401361, i64 2155402194}
!34 = !{i64 2155403099, i64 2155403201, i64 2155403241, i64 2155403259, i64 2155403001, i64 2155403289, i64 2155403317, i64 2155402817, i64 2155403650}
!35 = !{i64 2155404555, i64 2155404657, i64 2155404697, i64 2155404715, i64 2155404457, i64 2155404745, i64 2155404773, i64 2155404273, i64 2155405106}
!36 = !{i64 2155406011, i64 2155406113, i64 2155406153, i64 2155406171, i64 2155405913, i64 2155406201, i64 2155406229, i64 2155405729, i64 2155406562}
!37 = !{i64 2155407467, i64 2155407569, i64 2155407609, i64 2155407627, i64 2155407369, i64 2155407657, i64 2155407685, i64 2155407185, i64 2155408018}
!38 = !{i64 2155408923, i64 2155409025, i64 2155409065, i64 2155409083, i64 2155408825, i64 2155409113, i64 2155409141, i64 2155408641, i64 2155409474}
!39 = !{i64 2155410379, i64 2155410481, i64 2155410521, i64 2155410539, i64 2155410281, i64 2155410569, i64 2155410597, i64 2155410097, i64 2155410930}
!40 = !{i64 2155411835, i64 2155411937, i64 2155411977, i64 2155411995, i64 2155411737, i64 2155412025, i64 2155412053, i64 2155411553, i64 2155412386}
!41 = !{i64 2155413291, i64 2155413393, i64 2155413433, i64 2155413451, i64 2155413193, i64 2155413481, i64 2155413509, i64 2155413009, i64 2155413842}
!42 = !{i64 2155414747, i64 2155414849, i64 2155414889, i64 2155414907, i64 2155414649, i64 2155414937, i64 2155414965, i64 2155414465, i64 2155415298}
!43 = !{i64 2155416203, i64 2155416305, i64 2155416345, i64 2155416363, i64 2155416105, i64 2155416393, i64 2155416421, i64 2155415921, i64 2155416754}
!44 = !{i64 2155417659, i64 2155417761, i64 2155417801, i64 2155417819, i64 2155417561, i64 2155417849, i64 2155417877, i64 2155417377, i64 2155418210}
!45 = !{i64 2155419115, i64 2155419217, i64 2155419257, i64 2155419275, i64 2155419017, i64 2155419305, i64 2155419333, i64 2155418833, i64 2155419666}
!46 = !{i64 2155420577, i64 2155420679, i64 2155420719, i64 2155420737, i64 2155420479, i64 2155420767, i64 2155420795, i64 2155420294, i64 2155421130}
!47 = !{i64 2155422035, i64 2155422137, i64 2155422177, i64 2155422195, i64 2155421937, i64 2155422225, i64 2155422253, i64 2155421753, i64 2155422586}
!48 = !{i64 2155423491, i64 2155423593, i64 2155423633, i64 2155423651, i64 2155423393, i64 2155423681, i64 2155423709, i64 2155423209, i64 2155424042}
!49 = !{i64 2155425046}
!50 = !{!"auto-init"}
!51 = !{i32 0, i32 8}
!52 = !{i64 2155827587}
!53 = !{i64 2155829414}
!54 = !{i64 2155339399}
!55 = !{i64 2155349260}
!56 = !{i64 2155351312}
!57 = !{i64 2155487785}
!58 = !{i64 2155487509}
!59 = !{i64 2155466849}
!60 = !{i64 2155467019}
!61 = !{i64 2155488563, i64 2155488665, i64 2155488705, i64 2155488723, i64 2155488465, i64 2155488753, i64 2155488781, i64 2155488281, i64 2155489114}
!62 = !{i64 2155490594}
!63 = !{i64 2154075488, i64 2154075590, i64 2154075630, i64 2154075648, i64 2154075390, i64 2154075678, i64 2154075706, i64 2154075204, i64 2154076043}
!64 = !{i64 2154076913, i64 2154077015, i64 2154077055, i64 2154077073, i64 2154076815, i64 2154077103, i64 2154077131, i64 2154076628, i64 2154077468}
!65 = !{i64 2154077499}
!66 = !{i64 2148579030, i64 2148579132, i64 2148579172, i64 2148579190, i64 2148578932, i64 2148579220, i64 2148579248, i64 2148578748, i64 2148579581}
!67 = !{i64 2149443598}
!68 = !{i64 2149280935, i64 2149280982, i64 2149280988, i64 2149281025, i64 2149281043, i64 2149281970, i64 2149282018, i64 2149282066, i64 2149282129, i64 2149282178, i64 2149281121, i64 2149281146, i64 2149281172, i64 2149281178, i64 2149281215, i64 2149281221, i64 2149281271, i64 2149281317, i64 2149281350}
!69 = !{i64 1307644}
!70 = !{i64 2155196831}
!71 = !{i64 2155196977}
!72 = !{i64 2151691558}
!73 = !{i64 2151691975, i64 2151691723, i64 2151692323, i64 2151692369, i64 2151692375, i64 2151693763, i64 2151692412, i64 2151692430, i64 2151693830, i64 2151693878, i64 2151693926, i64 2151693989, i64 2151694038, i64 2151692508, i64 2151692533, i64 2151692559, i64 2151692565, i64 2151693784, i64 2151692602, i64 2151692608, i64 2151692658, i64 2151692704, i64 2151692737}
!74 = !{i64 2151694102}
!75 = !{i64 2151694149}
!76 = !{i64 2155198855}
!77 = !{i64 2155199251}
!78 = !{i64 2155199390}
!79 = !{i64 2155198290}
!80 = !{i64 2148584247}
!81 = !{i64 2148582599, i64 2148582701, i64 2148582741, i64 2148582759, i64 2148582501, i64 2148582789, i64 2148582817, i64 2148582317, i64 2148583150}
!82 = !{i64 2155360486}
!83 = !{i64 2149409094}
!84 = !{i64 2149406787}
!85 = !{i64 2149406822}
!86 = !{i64 2147924273, i64 2147924784, i64 2147924814, i64 2147924840, i64 2147924872, i64 2147924901}
!87 = !{i64 2155814947, i64 2155815049, i64 2155815089, i64 2155815107, i64 2155814849, i64 2155815137, i64 2155815165, i64 2155814665, i64 2155815498}
!88 = !{i64 2155799099}
!89 = !{i64 2149065588}
!90 = !{i64 2149067334}
!91 = !{i64 2155809333}
!92 = !{i64 0, i64 65}
!93 = !{i64 2155797457}
