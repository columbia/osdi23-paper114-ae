; ModuleID = 'arch/arm64/kernel/setup.c'
source_filename = "arch/arm64/kernel/setup.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init\22, \22a\22\09\09"
module asm "__initcall__kmod_setup__370_285_reserve_memblock_reserved_regions3:\09\09\09"
module asm ".long\09reserve_memblock_reserved_regions - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_setup__372_413_topology_init4:\09\09\09"
module asm ".long\09topology_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_setup__374_447_register_arm64_panic_block6:\09\09\09"
module asm ".long\09register_arm64_panic_block - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mpidr_hash = type { i64, [4 x i32], i32 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.memblock = type { i8, i64, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i64, i64, i64, %struct.memblock_region*, i8* }
%struct.memblock_region = type { i64, i64, i32 }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.1, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.1 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.2, %union.anon.63, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.40, %struct.list_head, %struct.list_head, %union.anon.41 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
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
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.38, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.16 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
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
%struct.qspinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.37, i32, [12 x i8] }
%union.anon.37 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.38 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.39, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.39 = type { i64, i64, %struct.user_fpsimd_state }
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
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.42 }
%union.anon.42 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.43, %union.anon.44 }
%union.anon.43 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.44 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.48 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.46, %struct.qspinlock }
%union.anon.46 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.48 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.cpuinfo_arm64 = type { %struct.cpu, %struct.kobject, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.cpuinfo_32bit, i64 }
%struct.cpu = type { i32, i32, %struct.device }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.kref = type { %struct.refcount_struct }
%struct.proc_dir_entry = type opaque
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
%struct.attribute = type { i8*, i16 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.68, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.68 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.cpuinfo_32bit = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"\016Booting Linux on physical CPU 0x%010lx [0x%08x]\0A\00", align 1
@early_fdt_ptr = internal unnamed_addr global i8* null, section ".init.data", align 8
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@__UNIQUE_ID___addressable_reserve_memblock_reserved_regions371 = internal global i8* bitcast (i32 ()* @reserve_memblock_reserved_regions to i8*), section ".discard.addressable", align 8
@__cpu_logical_map = dso_local local_unnamed_addr global [256 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], align 8
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@__fdt_pointer = dso_local local_unnamed_addr global i64 0, section ".init.data", align 8
@_text = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"\014[Firmware Bug]: Kernel image misaligned at boot, please fix your bootloader!\00", align 1
@boot_args = dso_local local_unnamed_addr global [4 x i64] zeroinitializer, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [145 x i8] c"\013WARNING: x1-x3 nonzero in violation of boot protocol:\0A\09x1: %016llx\0A\09x2: %016llx\0A\09x3: %016llx\0AThis indicates a broken bootloader or old kernel\0A\00", align 1
@__UNIQUE_ID___addressable_topology_init373 = internal global i8* bitcast (i32 ()* @topology_init to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_register_arm64_panic_block375 = internal global i8* bitcast (i32 ()* @register_arm64_panic_block to i8*), section ".discard.addressable", align 8
@mpidr_hash = dso_local local_unnamed_addr global %struct.mpidr_hash zeroinitializer, align 8
@num_standard_resources = internal unnamed_addr global i32 0, align 4
@standard_resources = internal unnamed_addr global %struct.resource* null, align 8
@memblock = external dso_local global %struct.memblock, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.4 = private unnamed_addr constant [177 x i8] c"\012\0AError: invalid device tree blob at physical address %pa (virtual address 0x%p)\0AThe dtb must be 8-byte aligned and must not exceed 2 MB in size\0A\0APlease check your bootloader.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\016Machine model: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s (DT)\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@reserved_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@swapper_pg_dir = external dso_local global [512 x %struct.pgd_t], align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@mem_res = internal global [2 x %struct.resource] [%struct.resource { i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i64 16777728, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource { i64 0, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i64 16777728, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }], align 8
@__init_begin = external dso_local global [0 x i8], align 1
@_sdata = external dso_local global [0 x i8], align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.request_standard_resources = private unnamed_addr constant [27 x i8] c"request_standard_resources\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"Kernel code\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Kernel data\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"\014Large number of MPIDR hash buckets detected\0A\00", align 1
@cpu_data = external dso_local global %struct.cpuinfo_arm64, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 8
@arm64_panic_block = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @arm64_panic_block_dump, %struct.notifier_block* null, i32 0 }, align 8
@.str.12 = private unnamed_addr constant [27 x i8] c"\010Kernel Offset: disabled\0A\00", align 1
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_register_arm64_panic_block375 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_reserve_memblock_reserved_regions371 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_topology_init373 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @smp_setup_processor_id() local_unnamed_addr #0 section ".init.text" {
entry:
  %call = call fastcc i64 @read_cpuid_mpidr() #13
  %and = and i64 %call, 1095233437695
  call fastcc void @set_cpu_logical_map(i64 noundef %and) #14
  %call1 = call fastcc i32 @read_cpuid_id() #13
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 noundef %and, i32 noundef %call1) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @read_cpuid_mpidr() unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((5) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !7
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_cpu_logical_map(i64 noundef %hwid) unnamed_addr #3 {
entry:
  store i64 %hwid, i64* getelementptr inbounds ([256 x i64], [256 x i64]* @__cpu_logical_map, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @read_cpuid_id() unnamed_addr #2 {
entry:
  %0 = call i64 asm sideeffect "\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((0) << 12) | ((0) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A", "=r"() #16, !srcloc !8
  %conv = trunc i64 %0 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @arch_match_cpu_phys_id(i32 noundef %cpu, i64 noundef %phys_id) local_unnamed_addr #5 {
entry:
  %call = call i64 @cpu_logical_map(i32 noundef %cpu) #14
  %cmp = icmp eq i64 %call, %phys_id
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @cpu_logical_map(i32 noundef %cpu) local_unnamed_addr #5 {
entry:
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__cpu_logical_map, i64 0, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8
  ret i64 %0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn
define dso_local i8* @get_early_fdt_ptr() local_unnamed_addr #6 section ".init.text" {
entry:
  %0 = load i8*, i8** @early_fdt_ptr, align 8
  ret i8* %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_fdt_map(i64 noundef %dt_phys) local_unnamed_addr #0 section ".init.text" {
entry:
  %fdt_size = alloca i32, align 4
  %0 = bitcast i32* %fdt_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %fdt_size, align 4, !annotation !9
  call void @early_fixmap_init() #15
  %1 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool.not = icmp eq i8 %1, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %call = call i8* @fixmap_remap_fdt(i64 noundef %dt_phys, i32* noundef nonnull %fdt_size, i64 %or3) #17
  store i8* %call, i8** @early_fdt_ptr, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @early_fixmap_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fixmap_remap_fdt(i64 noundef, i32* noundef, i64) local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @reserve_memblock_reserved_regions() #0 section ".init.text" {
entry:
  %j = alloca i64, align 8
  %r_start = alloca i64, align 8
  %r_end = alloca i64, align 8
  %0 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store i64 0, i64* %j, align 8, !annotation !9
  %1 = load i32, i32* @num_standard_resources, align 4
  %cmp66.not = icmp eq i32 %1, 0
  br i1 %cmp66.not, label %for.end38, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = bitcast i64* %r_start to i8*
  %3 = bitcast i64* %r_end to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup31
  %i.067 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %cleanup31 ]
  %4 = load %struct.resource*, %struct.resource** @standard_resources, align 8
  %arrayidx = getelementptr %struct.resource, %struct.resource* %4, i64 %i.067
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store i64 0, i64* %r_start, align 8, !annotation !9
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  store i64 0, i64* %r_end, align 8, !annotation !9
  %call = call fastcc i64 @resource_size(%struct.resource* noundef %arrayidx) #14
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i64 0, i32 0
  %5 = load i64, i64* %start, align 8
  %call2 = call i1 @memblock_is_region_reserved(i64 noundef %5, i64 noundef %call) #17
  br i1 %call2, label %if.end, label %cleanup31

if.end:                                           ; preds = %for.body
  store i64 0, i64* %j, align 8
  call void @__next_mem_range(i64* noundef nonnull %j, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), %struct.memblock_type* noundef null, i64* noundef nonnull %r_start, i64* noundef nonnull %r_end, i32* noundef null) #17
  %6 = load i64, i64* %j, align 8
  %cmp4.not64 = icmp eq i64 %6, -1
  br i1 %cmp4.not64, label %cleanup31, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %if.end
  %end14 = getelementptr %struct.resource, %struct.resource* %4, i64 %i.067, i32 1
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %cleanup
  %7 = load i64, i64* %r_start, align 8
  %shr = and i64 %7, -4096
  %8 = load i64, i64* %start, align 8
  %cmp9 = icmp ugt i64 %shr, %8
  %cond = select i1 %cmp9, i64 %shr, i64 %8
  %9 = load i64, i64* %r_end, align 8
  %sub = add i64 %9, 4095
  %shr11 = and i64 %sub, -4096
  %sub13 = add i64 %shr11, -1
  %10 = load i64, i64* %end14, align 8
  %cmp16 = icmp ult i64 %sub13, %10
  %cond21 = select i1 %cmp16, i64 %sub13, i64 %10
  %cmp23 = icmp ugt i64 %cond, %10
  %cmp26 = icmp ult i64 %cond21, %8
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp26
  br i1 %or.cond, label %cleanup, label %if.end29

if.end29:                                         ; preds = %for.body6
  call void @reserve_region_with_split(%struct.resource* noundef %arrayidx, i64 noundef %cond, i64 noundef %cond21, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #17
  br label %cleanup

cleanup:                                          ; preds = %for.body6, %if.end29
  call void @__next_mem_range(i64* noundef nonnull %j, i32 noundef -1, i32 noundef 0, %struct.memblock_type* noundef getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 3), %struct.memblock_type* noundef null, i64* noundef nonnull %r_start, i64* noundef nonnull %r_end, i32* noundef null) #17
  %11 = load i64, i64* %j, align 8
  %cmp4.not = icmp eq i64 %11, -1
  br i1 %cmp4.not, label %cleanup31, label %for.body6

cleanup31:                                        ; preds = %cleanup, %if.end, %for.body
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  %inc = add nuw i64 %i.067, 1
  %12 = load i32, i32* @num_standard_resources, align 4
  %conv = sext i32 %12 to i64
  %cmp = icmp ult i64 %inc, %conv
  br i1 %cmp, label %for.body, label %for.end38

for.end38:                                        ; preds = %cleanup31, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_arch(i8** nocapture noundef writeonly %cmdline_p) local_unnamed_addr #0 section ".init.text" {
entry:
  call void @setup_initial_init_mm(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_stext, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_etext, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_edata, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @_end, i64 0, i64 0)) #17
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @boot_command_line, i64 0, i64 0), i8** %cmdline_p, align 8
  %call = call i1 @kaslr_requires_kpti() #17
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* @arm64_use_ng_mappings, align 1
  call void @early_fixmap_init() #15
  call void @early_ioremap_init() #17
  %0 = load i64, i64* @__fdt_pointer, align 8
  call fastcc void @setup_machine_fdt(i64 noundef %0) #18
  store i8 1, i8* @static_key_initialized, align 1
  call void @parse_early_param() #15
  call fastcc void @local_daif_restore() #14
  call fastcc void @cpu_uninstall_idmap() #14
  br i1 icmp eq (i64 urem (i64 ptrtoint ([0 x i8]* @_text to i64), i64 2097152), i64 0), label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %entry, %do.end
  call void @arm64_memblock_init() #17
  call void @paging_init() #17
  call void @unflatten_device_tree() #17
  call void @bootmem_init() #17
  call fastcc void @request_standard_resources() #18
  call void @early_ioremap_reset() #17
  %call3 = call i32 @psci_dt_init() #15
  call fastcc void @init_bootcpu_ops() #18
  call void @smp_init_cpus() #17
  call fastcc void @smp_build_mpidr_hash() #18
  %1 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @boot_args, i64 0, i64 1), align 8
  %tobool = icmp ne i64 %1, 0
  %2 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @boot_args, i64 0, i64 2), align 16
  %tobool4 = icmp ne i64 %2, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool4
  %3 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @boot_args, i64 0, i64 3), align 8
  %tobool6 = icmp ne i64 %3, 0
  %or.cond13 = select i1 %or.cond, i1 true, i1 %tobool6
  br i1 %or.cond13, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([145 x i8], [145 x i8]* @.str.2, i64 0, i64 0), i64 noundef %1, i64 noundef %2, i64 noundef %3) #15
  br label %if.end12

if.end12:                                         ; preds = %if.end, %do.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_initial_init_mm(i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @kaslr_requires_kpti() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_init() local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @setup_machine_fdt(i64 noundef %dt_phys) unnamed_addr #0 section ".init.text" {
entry:
  %dt_phys.addr = alloca i64, align 8
  %size = alloca i32, align 4
  store i64 %dt_phys, i64* %dt_phys.addr, align 8
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #16
  store i32 0, i32* %size, align 4, !annotation !9
  %1 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool.not = icmp eq i8 %1, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %call = call i8* @fixmap_remap_fdt(i64 noundef %dt_phys, i32* noundef nonnull %size, i64 %or3) #17
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %size, align 4
  %conv = sext i32 %2 to i64
  %call6 = call i32 @memblock_reserve(i64 noundef %dt_phys, i64 noundef %conv) #17
  %call8 = call i1 @early_init_dt_scan(i8* noundef nonnull %call) #17
  br i1 %call8, label %if.end11, label %do.end

do.end:                                           ; preds = %entry, %if.then
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([177 x i8], [177 x i8]* @.str.4, i64 0, i64 0), i64* noundef nonnull %dt_phys.addr, i8* noundef %call) #15
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %do.end
  call fastcc void @cpu_relax() #14
  br label %while.cond

if.end11:                                         ; preds = %if.then
  %3 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !10
  %tobool14.not = icmp eq i8 %3, 0
  %or22 = select i1 %tobool14.not, i64 27021597764224899, i64 27021597764226947
  %call24 = call i8* @fixmap_remap_fdt(i64 noundef %dt_phys, i32* noundef nonnull %size, i64 %or22) #17
  %call25 = call i8* @of_flat_dt_get_machine_name() #17
  %tobool26.not = icmp eq i8* %call25, null
  br i1 %tobool26.not, label %cleanup, label %do.end31

do.end31:                                         ; preds = %if.end11
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %call25) #15
  call void (i8*, ...) @dump_stack_set_arch_desc(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %call25) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @parse_early_param() local_unnamed_addr #4 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_daif_restore() unnamed_addr #8 {
entry:
  call void asm sideeffect "msr daif, ${0:x}", "rZ"(i64 192) #16, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_uninstall_idmap() unnamed_addr #8 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !12
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %2 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  call fastcc void @cpu_set_reserved_ttbr0() #14
  call fastcc void @local_flush_tlb_all() #14
  %3 = load i64, i64* @vabits_actual, align 8
  %sub = sub i64 64, %3
  call fastcc void @__cpu_set_tcr_t0sz(i64 noundef %sub) #14
  %cmp.not = icmp eq %struct.mm_struct* %2, @init_mm
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %2, i64 0, i32 0, i32 8
  %4 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %4, %struct.mm_struct* noundef %2) #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm64_memblock_init() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @paging_init() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unflatten_device_tree() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bootmem_init() local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @request_standard_resources() unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([0 x i8]* @_stext to i64), %0
  store i64 %sub, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 0, i32 0), align 8
  %sub4 = sub i64 ptrtoint (i8* getelementptr ([0 x i8], [0 x i8]* @__init_begin, i64 0, i64 -1) to i64), %0
  store i64 %sub4, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 0, i32 1), align 8
  %sub8 = sub i64 ptrtoint ([0 x i8]* @_sdata to i64), %0
  store i64 %sub8, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 1, i32 0), align 8
  %sub12 = sub i64 ptrtoint (i8* getelementptr ([0 x i8], [0 x i8]* @_end, i64 0, i64 -1) to i64), %0
  store i64 %sub12, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 1, i32 1), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* @num_standard_resources, align 4
  %sext = shl i64 %1, 32
  %mul = ashr exact i64 %sext, 26
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %mul, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #17
  store i8* %call.i, i8** bitcast (%struct.resource** @standard_resources to i8**), align 8
  %tobool.not = icmp eq i8* %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.request_standard_resources, i64 0, i64 0), i64 noundef %mul) #20
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr69 = getelementptr %struct.memblock_region, %struct.memblock_region* %2, i64 %3
  %cmp70 = icmp ult %struct.memblock_region* %2, %add.ptr69
  br i1 %cmp70, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %4 = bitcast i8* %call.i to %struct.resource*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc.for.body_crit_edge
  %5 = phi %struct.resource* [ %.pre, %for.inc.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %region.073 = phi %struct.memblock_region* [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %2, %for.body.preheader ]
  %i.071 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %inc = add i64 %i.071, 1
  %arrayidx = getelementptr %struct.resource, %struct.resource* %5, i64 %i.071
  %call15 = call fastcc i1 @memblock_is_nomap(%struct.memblock_region* noundef %region.073) #14
  %spec.select = select i1 %call15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)
  %spec.select76 = select i1 %call15, i64 512, i64 2164261376
  %6 = getelementptr %struct.resource, %struct.resource* %5, i64 %i.071, i32 2
  store i8* %spec.select, i8** %6, align 8
  %7 = getelementptr %struct.resource, %struct.resource* %5, i64 %i.071, i32 3
  store i64 %spec.select76, i64* %7, align 8
  %call20 = call fastcc i64 @memblock_region_memory_base_pfn(%struct.memblock_region* noundef %region.073) #14
  %shl = shl i64 %call20, 12
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i64 0, i32 0
  store i64 %shl, i64* %start, align 8
  %call21 = call fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* noundef %region.073) #14
  %shl22 = shl i64 %call21, 12
  %sub23 = add i64 %shl22, -1
  %end = getelementptr %struct.resource, %struct.resource* %5, i64 %i.071, i32 1
  store i64 %sub23, i64* %end, align 8
  %call24 = call i32 @request_resource(%struct.resource* noundef nonnull @iomem_resource, %struct.resource* noundef %arrayidx) #17
  %8 = load i64, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 0, i32 0), align 8
  %9 = load i64, i64* %start, align 8
  %cmp26.not = icmp ult i64 %8, %9
  br i1 %cmp26.not, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %10 = load i64, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 0, i32 1), align 8
  %11 = load i64, i64* %end, align 8
  %cmp29.not = icmp ugt i64 %10, %11
  br i1 %cmp29.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  %call32 = call i32 @request_resource(%struct.resource* noundef %arrayidx, %struct.resource* noundef getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 0)) #17
  %.pre75 = load i64, i64* %start, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true, %for.body
  %12 = phi i64 [ %.pre75, %if.then31 ], [ %9, %land.lhs.true ], [ %9, %for.body ]
  %13 = load i64, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 1, i32 0), align 8
  %cmp35.not = icmp ult i64 %13, %12
  br i1 %cmp35.not, label %for.inc, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end33
  %14 = load i64, i64* getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 1, i32 1), align 8
  %15 = load i64, i64* %end, align 8
  %cmp39.not = icmp ugt i64 %14, %15
  br i1 %cmp39.not, label %for.inc, label %if.then41

if.then41:                                        ; preds = %land.lhs.true37
  %call42 = call i32 @request_resource(%struct.resource* noundef %arrayidx, %struct.resource* noundef getelementptr inbounds ([2 x %struct.resource], [2 x %struct.resource]* @mem_res, i64 0, i64 1)) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %land.lhs.true37, %if.then41
  %incdec.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %region.073, i64 1
  %16 = load %struct.memblock_region*, %struct.memblock_region** getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 3), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.memblock, %struct.memblock* @memblock, i64 0, i32 2, i32 0), align 8
  %add.ptr = getelementptr %struct.memblock_region, %struct.memblock_region* %16, i64 %17
  %cmp = icmp ult %struct.memblock_region* %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.resource*, %struct.resource** @standard_resources, align 8
  br label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_reset() local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @psci_dt_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @init_bootcpu_ops() unnamed_addr #0 section ".init.text" {
entry:
  %call = call i32 @init_cpu_ops(i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_init_cpus() local_unnamed_addr #7

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @smp_build_mpidr_hash() unnamed_addr #0 section ".init.text" {
entry:
  %fs = alloca [4 x i32], align 4
  %bits = alloca [4 x i32], align 4
  %0 = bitcast [4 x i32]* %fs to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %1 = bitcast [4 x i32]* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !9
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %call66 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %cmp67 = icmp ult i32 %call66, %2
  br i1 %cmp67, label %for.body.lr.ph, label %for.cond3.preheader

for.body.lr.ph:                                   ; preds = %entry
  %call2 = call i64 @cpu_logical_map(i32 noundef 0) #14
  br label %for.body

for.cond3.preheader:                              ; preds = %for.body, %entry
  %mask.0.lcssa = phi i64 [ 0, %entry ], [ %or, %for.body ]
  br label %for.body5

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call69 = phi i32 [ %call66, %for.body.lr.ph ], [ %call, %for.body ]
  %mask.068 = phi i64 [ 0, %for.body.lr.ph ], [ %or, %for.body ]
  %call1 = call i64 @cpu_logical_map(i32 noundef %call69) #14
  %xor = xor i64 %call2, %call1
  %or = or i64 %xor, %mask.068
  %call = call i32 @cpumask_next(i32 noundef %call69, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %cmp = icmp ult i32 %call, %2
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.body5:                                        ; preds = %for.cond3.preheader, %for.body5
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body5 ]
  %3 = trunc i64 %indvars.iv to i32
  %4 = shl nuw nsw i32 4, %3
  %shl6 = and i32 %4, -8
  %sh_prom = zext i32 %shl6 to i64
  %shr7 = lshr i64 %mask.0.lcssa, %sh_prom
  %5 = trunc i64 %shr7 to i32
  %conv = and i32 %5, 255
  %tobool.not.i = icmp eq i32 %conv, 0
  %6 = call i32 @llvm.ctlz.i32(i32 %conv, i1 false) #16, !range !13
  %narrow.i = sub nuw nsw i32 32, %6
  %narrow3.i = select i1 %tobool.not.i, i32 0, i32 %narrow.i
  %7 = call i32 @llvm.cttz.i32(i32 %conv, i1 true), !range !13
  %spec.select = select i1 %tobool.not.i, i32 0, i32 %7
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %fs, i64 0, i64 %indvars.iv
  store i32 %spec.select, i32* %arrayidx, align 4
  %sub11 = sub nsw i32 %narrow3.i, %spec.select
  %arrayidx13 = getelementptr [4 x i32], [4 x i32]* %bits, i64 0, i64 %indvars.iv
  store i32 %sub11, i32* %arrayidx13, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end14, label %for.body5

for.end14:                                        ; preds = %for.body5
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %fs, i64 0, i64 0
  %8 = load i32, i32* %arrayidx15, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 1, i64 0), align 8
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %fs, i64 0, i64 1
  %9 = load i32, i32* %arrayidx16, align 4
  %add17 = add i32 %9, 8
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %bits, i64 0, i64 0
  %10 = load i32, i32* %arrayidx18, align 4
  %sub19 = sub i32 %add17, %10
  store i32 %sub19, i32* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 1, i64 1), align 4
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %fs, i64 0, i64 2
  %11 = load i32, i32* %arrayidx20, align 4
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %bits, i64 0, i64 1
  %12 = load i32, i32* %arrayidx22, align 4
  %13 = add i32 %11, 16
  %14 = add i32 %10, %12
  %sub25 = sub i32 %13, %14
  store i32 %sub25, i32* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 1, i64 2), align 8
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %fs, i64 0, i64 3
  %15 = load i32, i32* %arrayidx26, align 4
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %bits, i64 0, i64 2
  %16 = load i32, i32* %arrayidx28, align 4
  %17 = add i32 %15, 32
  %18 = add i32 %14, %16
  %sub33 = sub i32 %17, %18
  store i32 %sub33, i32* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 1, i64 3), align 4
  store i64 %mask.0.lcssa, i64* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 0), align 8
  %arrayidx34 = getelementptr inbounds [4 x i32], [4 x i32]* %bits, i64 0, i64 3
  %19 = load i32, i32* %arrayidx34, align 4
  %add40 = add i32 %18, %19
  store i32 %add40, i32* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 2), align 8
  %call42 = call fastcc i32 @mpidr_hash_size() #14
  %call43 = call fastcc i32 @cpumask_weight() #14
  %mul = shl i32 %call43, 2
  %cmp44 = icmp ugt i32 %call42, %mul
  br i1 %cmp44, label %do.end, label %if.end

do.end:                                           ; preds = %for.end14
  %call47 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @topology_init() #0 section ".init.text" {
entry:
  %call220 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp321 = icmp ult i32 %call220, %0
  br i1 %cmp321, label %for.body4, label %for.end8

for.body4:                                        ; preds = %entry, %for.body4
  %call222 = phi i32 [ %call2, %for.body4 ], [ %call220, %entry ]
  %idxprom = sext i32 %call222 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (%struct.cpuinfo_arm64* @cpu_data to i64)
  %2 = inttoptr i64 %add to %struct.cpu*
  %hotpluggable = getelementptr inbounds %struct.cpu, %struct.cpu* %2, i64 0, i32 1
  store i32 0, i32* %hotpluggable, align 4
  %call7 = call i32 @register_cpu(%struct.cpu* noundef %2, i32 noundef %call222) #17
  %call2 = call i32 @cpumask_next(i32 noundef %call222, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #21
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp3 = icmp ult i32 %call2, %3
  br i1 %cmp3, label %for.body4, label %for.end8

for.end8:                                         ; preds = %for.body4, %entry
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @register_arm64_panic_block() #0 section ".init.text" {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @panic_notifier_list, %struct.notifier_block* noundef nonnull @arm64_panic_block) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #5 {
entry:
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %0 = load i64, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @memblock_is_region_reserved(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(i64* noundef, i32 noundef, i32 noundef, %struct.memblock_type* noundef, %struct.memblock_type* noundef, i64* noundef, i64* noundef, i32* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @reserve_region_with_split(%struct.resource* noundef, i64 noundef, i64 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @early_init_dt_scan(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #8 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #16, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_flat_dt_get_machine_name() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_stack_set_arch_desc(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_set_reserved_ttbr0() unnamed_addr #8 {
entry:
  %0 = load i64, i64* @kimage_voffset, align 8
  %sub = sub i64 ptrtoint ([512 x %struct.pgd_t]* @reserved_pg_dir to i64), %0
  call void asm sideeffect "msr ttbr0_el1, ${0:x}", "rZ"(i64 %sub) #16, !srcloc !15
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_flush_tlb_all() unnamed_addr #8 {
entry:
  call void asm sideeffect "dsb nshst", "~{memory}"() #16, !srcloc !17
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #16, !srcloc !18
  call void asm sideeffect "dsb nsh", "~{memory}"() #16, !srcloc !19
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cpu_set_tcr_t0sz(i64 noundef %t0sz) unnamed_addr #8 {
entry:
  %0 = call i64 asm sideeffect "mrs $0, tcr_el1", "=r"() #16, !srcloc !21
  %and = and i64 %0, 63
  %cmp = icmp eq i64 %and, %t0sz
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i64 %0, -64
  %or = or i64 %and1, %t0sz
  call void asm sideeffect "msr tcr_el1, ${0:x}", "rZ"(i64 %or) #16, !srcloc !22
  call void asm sideeffect "isb", "~{memory}"() #16, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_switch_mm(%struct.pgd_t* noundef %pgd, %struct.mm_struct* noundef %mm) unnamed_addr #8 {
entry:
  %cmp = icmp eq %struct.pgd_t* %pgd, getelementptr inbounds ([512 x %struct.pgd_t], [512 x %struct.pgd_t]* @swapper_pg_dir, i64 0, i64 0)
  br i1 %cmp, label %do.body2, label %do.end5, !prof !24

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/include/asm/mmu_context.h\22; .popsection; .long 14472b - 14470b; .short 53; .short 0; .popsection; 14471: brk 0x800", ""() #16, !srcloc !25
  unreachable

do.end5:                                          ; preds = %entry
  call fastcc void @cpu_set_reserved_ttbr0() #14
  %0 = bitcast %struct.pgd_t* %pgd to i8*
  %call = call fastcc i64 @virt_to_phys(i8* noundef %0) #14
  call void @cpu_do_switch_mm(i64 noundef %call, %struct.mm_struct* noundef %mm) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_do_switch_mm(i64 noundef, %struct.mm_struct* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @virt_to_phys(i8* noundef %x) unnamed_addr #5 {
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

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @memblock_is_nomap(%struct.memblock_region* nocapture noundef readonly %m) unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %m, i64 0, i32 2
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @memblock_region_memory_base_pfn(%struct.memblock_region* nocapture noundef readonly %reg) unnamed_addr #5 {
entry:
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %reg, i64 0, i32 0
  %0 = load i64, i64* %base, align 8
  %sub = add i64 %0, 4095
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @memblock_region_memory_end_pfn(%struct.memblock_region* nocapture noundef readonly %reg) unnamed_addr #5 {
entry:
  %base = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %reg, i64 0, i32 0
  %0 = load i64, i64* %base, align 8
  %size = getelementptr inbounds %struct.memblock_region, %struct.memblock_region* %reg, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %add = add i64 %1, %0
  %shr = lshr i64 %add, 12
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(%struct.resource* noundef, %struct.resource* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_cpu_ops(i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mpidr_hash_size() unnamed_addr #5 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.mpidr_hash, %struct.mpidr_hash* @mpidr_hash, i64 0, i32 2), align 8
  %shl = shl nuw i32 1, %0
  ret i32 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #8 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #17
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cpu(%struct.cpu* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @arm64_panic_block_dump(%struct.notifier_block* nocapture noundef readnone %self, i64 noundef %v, i8* nocapture noundef readnone %p) #8 {
entry:
  call fastcc void @dump_kernel_offset() #14
  call void @dump_cpu_features() #17
  call void @dump_mem_limit() #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dump_kernel_offset() unnamed_addr #8 {
entry:
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_cpu_features() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_mem_limit() local_unnamed_addr #7

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin "no-builtins" }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #21 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2148630717, i64 2148630819, i64 2148630859, i64 2148630877, i64 2148630619, i64 2148630907, i64 2148630935, i64 2148630435, i64 2148631268}
!8 = !{i64 2148629236, i64 2148629338, i64 2148629378, i64 2148629396, i64 2148629138, i64 2148629426, i64 2148629454, i64 2148628954, i64 2148629787}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2154857710}
!12 = !{i64 1281529}
!13 = !{i32 0, i32 33}
!14 = !{i64 1647643}
!15 = !{i64 2154886786}
!16 = !{i64 2154886932}
!17 = !{i64 2152696420}
!18 = !{i64 2152696837, i64 2152696585, i64 2152697185, i64 2152697231, i64 2152697237, i64 2152698625, i64 2152697274, i64 2152697292, i64 2152698692, i64 2152698740, i64 2152698788, i64 2152698851, i64 2152698900, i64 2152697370, i64 2152697395, i64 2152697421, i64 2152697427, i64 2152698646, i64 2152697464, i64 2152697470, i64 2152697520, i64 2152697566, i64 2152697599}
!19 = !{i64 2152698964}
!20 = !{i64 2152699011}
!21 = !{i64 2154888810}
!22 = !{i64 2154889206}
!23 = !{i64 2154889345}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2154888245}
