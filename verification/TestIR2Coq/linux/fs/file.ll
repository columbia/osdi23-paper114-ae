; ModuleID = 'fs/file.c'
source_filename = "fs/file.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.lock_class_key = type {}
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.65, i32, i32, %struct.sk_filter*, %union.anon.97, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.100, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.spinlock, %struct.pid*, %struct.cred*, i64, i64, i16, i32, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.36, %union.anon.38, %union.anon.39, i16, i8, i8, i32, %union.anon.41, %struct.proto*, %struct.possible_net_t, %struct.atomic64_t, %union.anon.61, [0 x i32], %union.anon.62, i16, %union.anon.63, %struct.refcount_struct, [0 x i32], %union.anon.64 }
%union.anon.36 = type { i64 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i32 }
%union.anon.41 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%union.anon.61 = type { i64 }
%union.anon.62 = type { %struct.hlist_node }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.65 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_sync = type {}
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.96 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.66, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], %struct.bpf_tramp_image*, i64, %struct.module* }
%struct.anon.66 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_image = type { i8*, %struct.bpf_ksym, %struct.percpu_ref, i8*, i8*, %union.anon.67 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%union.anon.67 = type { %struct.work_struct }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, i8*, %union.anon.68, i8, i8, i16, i32 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, [16 x i8], i32, i8, i8, [34 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [40 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i32 (%struct.bpf_map*, i32, i64)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, %struct.bpf_func_state*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.74 }
%struct.anon.74 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.75, i32, i64 }
%union.anon.75 = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.121, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.7, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.kgid_t = type { i32 }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.161, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.ifreq = type { %union.anon.144, %union.anon.145 }
%union.anon.144 = type { [16 x i8] }
%union.anon.145 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.146 }
%union.anon.146 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type { %struct.possible_net_t, %struct.net_device*, %struct.list_head, i32 (%struct.neighbour*)*, %struct.neigh_table*, i8*, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i64] }
%struct.neighbour = type { %struct.neighbour*, %struct.neigh_table*, %struct.neigh_parms*, i64, i64, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i64, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.neigh_ops*, %struct.list_head, %struct.callback_head, %struct.net_device*, [0 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.neigh_ops = type { i32, void (%struct.neighbour*, %struct.sk_buff*)*, void (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)* }
%struct.neigh_table = type { i32, i32, i32, i16, i32 (i8*, %struct.net_device*, i32*)*, i1 (%struct.neighbour*, i8*)*, i32 (%struct.neighbour*)*, i32 (%struct.pneigh_entry*)*, void (%struct.pneigh_entry*)*, void (%struct.sk_buff*)*, i32 (i8*)*, i1 (%struct.net_device*, %struct.netlink_ext_ack*)*, i8*, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i64, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.rwlock_t, i64, %struct.neigh_statistics*, %struct.neigh_hash_table*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.possible_net_t, %struct.net_device*, i8, i8, [0 x i8] }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.98 }
%union.anon.98 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.147 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.147 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.152] }
%struct.anon.152 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.153 }
%union.anon.153 = type { %struct.anon.155, [4 x i8] }
%struct.anon.155 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.in_device = type opaque
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.157, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.157 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i32 }
%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, i1, %struct.netlink_ext_ack*)*, i8* (%struct.tcf_proto*, i32)*, void (%struct.tcf_proto*, i8*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i8*, i8*, i1, %struct.netlink_ext_ack*)*, i1 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, %struct.tcf_walker*, i1)*, i32 (%struct.tcf_proto*, i1, i32 (i32, i8*, i8*)*, i8*, %struct.netlink_ext_ack*)*, void (%struct.tcf_proto*, i8*)*, void (%struct.tcf_proto*, i8*)*, void (i8*, i32, i64, i8*, i64)*, i8* (%struct.net*, %struct.tcf_chain*, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (i8*)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.sk_buff*, %struct.net*, i8*)*, %struct.module*, i32 }
%struct.tcf_walker = type opaque
%struct.gnet_dump = type { %struct.spinlock*, %struct.sk_buff*, %struct.nlattr*, i32, i32, i32, i8*, i32, %struct.tc_stats }
%struct.tc_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_size_table = type { %struct.callback_head, %struct.list_head, %struct.tc_sizespec, i32, [0 x i16] }
%struct.tc_sizespec = type { i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.net_rate_estimator = type opaque
%struct.gnet_stats_basic_cpu = type { %struct.gnet_stats_basic_packed, %struct.u64_stats_sync }
%struct.qdisc_skb_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.gnet_stats_basic_packed = type { i64, i64 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.xdp_dev_bulk_queue = type opaque
%union.anon.161 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.rtnl_link_ops = type { %struct.list_head, i8*, i64, %struct.net_device* (%struct.nlattr**, i8*, i8, i32, i32)*, void (%struct.net_device*)*, i8, i32, %struct.nla_policy*, i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.list_head*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i32 ()*, i32 ()*, i32, %struct.nla_policy*, i32 (%struct.net_device*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i64 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)*, %struct.net* (%struct.net_device*)*, i64 (%struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32)* }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type opaque
%struct.sfp_bus = type opaque
%struct.udp_tunnel_nic_info = type opaque
%struct.udp_tunnel_nic = type opaque
%struct.bpf_xdp_entity = type { %struct.bpf_prog*, %struct.bpf_xdp_link* }
%struct.bpf_xdp_link = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.102, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.102 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type { i32, %struct.list_head, i32 (%struct.net*)*, i32 (%struct.net*, %struct.notifier_block*, %struct.netlink_ext_ack*)*, %struct.module*, %struct.callback_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.104 }
%union.anon.104 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.105, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.105 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.10, %union.anon.125, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.125 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.106, %union.anon.107, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.137, %union.anon.138, %union.anon.139, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.142, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.137 = type { %struct.hlist_node }
%union.anon.138 = type { %struct.rb_node }
%union.anon.139 = type { %struct.anon.141 }
%struct.anon.141 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.142 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.blk_mq_tag_set = type opaque
%union.anon.106 = type { %struct.list_head }
%union.anon.107 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.120, i32, [12 x i8] }
%union.anon.120 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.121 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.122, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.122 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.bpf_local_storage_map = type opaque
%struct.bpf_local_storage = type opaque
%struct.bpf_verifier_env = type opaque
%struct.bpf_func_state = type opaque
%struct.bpf_iter_seq_info = type { %struct.seq_operations*, i32 (i8*, %struct.bpf_iter_aux_info*)*, void (i8*)*, i32 }
%struct.bpf_iter_aux_info = type opaque
%struct.bpf_kfunc_desc_tab = type opaque
%struct.bpf_ksym = type { i64, i64, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.bpf_prog_ops = type { i32 (%struct.bpf_prog*, %union.bpf_attr*, %union.bpf_attr*)* }
%struct.btf_mod_pair = type { %struct.btf*, %struct.module* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.bpf_prog_offload = type { %struct.bpf_prog*, %struct.net_device*, %struct.bpf_offload_dev*, i8*, %struct.list_head, i8, i8, i8*, i32 }
%struct.bpf_offload_dev = type opaque
%struct.btf = type opaque
%struct.bpf_func_info = type { i32, i32 }
%struct.bpf_func_info_aux = type { i16, i8 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%union.anon.96 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%union.anon.97 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head, [8 x i8] }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter, [40 x i8] }
%struct.lwtunnel_state = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.100 = type { %struct.sk_buff* }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.56, i32, i32, i32, i16, i16, %union.anon.58, %union.anon.59, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.51 }
%union.anon.51 = type { %struct.net_device* }
%union.anon.52 = type { %struct.sock* }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i64, void (%struct.sk_buff*)* }
%union.anon.56 = type { i32 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i16 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, [2 x i64], i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, i1 (i32, i32)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.60, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.47, i8, i64, i32, %struct.kiocb* }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.42, %union.anon.45 }
%union.anon.42 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.45 = type { i64 }
%union.anon.47 = type { i8* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.48 }
%union.anon.48 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type opaque
%struct.timewait_sock_ops = type opaque
%union.anon.60 = type { %struct.inet_hashinfo* }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.43, %struct.qspinlock }
%union.anon.43 = type { %struct.atomic_t }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, [24 x i8], %struct.socket_wq }
%struct.proto_ops = type { i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, [2 x i64], i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.101, i32 }
%union.anon.101 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.sock_reuseport = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.126, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.126 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
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
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [48 x i8] }
%struct.anon.6 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.135, %struct.list_head, %struct.list_head, %union.anon.136 }
%struct.lockref = type { %union.anon.133 }
%union.anon.133 = type { i64 }
%union.anon.135 = type { %struct.list_head }
%union.anon.136 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.127, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.128, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.129, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.132, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.127 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.128 = type { %struct.callback_head }
%union.anon.129 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.132 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.130 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.130 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.pt_regs = type { %union.anon.168, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.168 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }

@sysctl_nr_open = dso_local local_unnamed_addr global i32 1048576, section ".data..read_mostly", align 4
@sysctl_nr_open_min = dso_local local_unnamed_addr global i32 64, align 4
@sysctl_nr_open_max = dso_local local_unnamed_addr global i32 2147483584, align 4
@files_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@dup_fd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&newf->resize_wait\00", align 1
@init_files = dso_local global %struct.files_struct { %struct.atomic_t { i32 1 }, i8 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 16) to %struct.list_head*) } }, %struct.fdtable* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 40) to %struct.fdtable*), %struct.fdtable { i32 64, %struct.file** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 160) to %struct.file**), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 136) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 144) to i64*), i64* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.files_struct* @init_files to i8*), i64 152) to i64*), %struct.callback_head zeroinitializer }, [32 x i8] undef, %struct.spinlock zeroinitializer, i32 0, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [64 x %struct.file*] zeroinitializer, [32 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\014alloc_fd: slot %d not NULL!\0A\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.files_struct* @dup_fd(%struct.files_struct* noundef %oldf, i32 noundef %max_fds, i32* nocapture noundef writeonly %errorp) local_unnamed_addr #0 {
entry:
  store i32 -12, i32* %errorp, align 4
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @files_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #12
  %1 = bitcast i8* %call to %struct.files_struct*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %counter.i = bitcast i8* %call to i32*
  store volatile i32 1, i32* %counter.i, align 8
  %file_lock = getelementptr inbounds i8, i8* %call, i64 128
  %2 = bitcast i8* %file_lock to i32*
  store i32 0, i32* %2, align 64
  %3 = getelementptr inbounds i8, i8* %call, i64 4
  store i8 0, i8* %3, align 4
  %resize_wait = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %resize_wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @dup_fd.__key) #12
  %next_fd = getelementptr inbounds i8, i8* %call, i64 132
  %5 = bitcast i8* %next_fd to i32*
  store i32 0, i32* %5, align 4
  %fdtab = getelementptr inbounds i8, i8* %call, i64 40
  %6 = bitcast i8* %fdtab to %struct.fdtable*
  %max_fds6 = bitcast i8* %fdtab to i32*
  store i32 64, i32* %max_fds6, align 8
  %close_on_exec_init = getelementptr inbounds i8, i8* %call, i64 136
  %close_on_exec = getelementptr inbounds i8, i8* %call, i64 56
  %7 = bitcast i8* %close_on_exec to i8**
  store i8* %close_on_exec_init, i8** %7, align 8
  %open_fds_init = getelementptr inbounds i8, i8* %call, i64 144
  %open_fds = getelementptr inbounds i8, i8* %call, i64 64
  %8 = bitcast i8* %open_fds to i8**
  store i8* %open_fds_init, i8** %8, align 8
  %full_fds_bits_init = getelementptr inbounds i8, i8* %call, i64 152
  %full_fds_bits = getelementptr inbounds i8, i8* %call, i64 72
  %9 = bitcast i8* %full_fds_bits to i8**
  store i8* %full_fds_bits_init, i8** %9, align 8
  %fd_array = getelementptr inbounds i8, i8* %call, i64 160
  %fd = getelementptr inbounds i8, i8* %call, i64 48
  %10 = bitcast i8* %fd to i8**
  store i8* %fd_array, i8** %10, align 8
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %oldf, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt = getelementptr inbounds %struct.files_struct, %struct.files_struct* %oldf, i64 0, i32 3
  %11 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %call17 = call fastcc i32 @sane_fdtable_size(%struct.fdtable* noundef %11, i32 noundef %max_fds) #13
  %12 = load i32, i32* %max_fds6, align 8
  %cmp220 = icmp ugt i32 %call17, %12
  br i1 %cmp220, label %while.body, label %while.end, !prof !7

while.body:                                       ; preds = %if.end, %if.end42
  %open_files.0222 = phi i32 [ %call54, %if.end42 ], [ %call17, %if.end ]
  %new_fdt.0221 = phi %struct.fdtable* [ %call27, %if.end42 ], [ %6, %if.end ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  %cmp23.not = icmp eq %struct.fdtable* %new_fdt.0221, %6
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %while.body
  call fastcc void @__free_fdtable(%struct.fdtable* noundef %new_fdt.0221) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %while.body
  %sub = add i32 %open_files.0222, -1
  %call27 = call fastcc %struct.fdtable* @alloc_fdtable(i32 noundef %sub) #13
  %tobool28.not = icmp eq %struct.fdtable* %call27, null
  br i1 %tobool28.not, label %out_release, label %if.end30

if.end30:                                         ; preds = %if.end26
  %max_fds31 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %call27, i64 0, i32 0
  %13 = load i32, i32* %max_fds31, align 8
  %cmp32 = icmp ult i32 %13, %open_files.0222
  br i1 %cmp32, label %if.then41, label %if.end42, !prof !7

if.then41:                                        ; preds = %if.end30
  call fastcc void @__free_fdtable(%struct.fdtable* noundef nonnull %call27) #13
  br label %out_release

if.end42:                                         ; preds = %if.end30
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %14 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %call54 = call fastcc i32 @sane_fdtable_size(%struct.fdtable* noundef %14, i32 noundef %max_fds) #13
  %15 = load i32, i32* %max_fds31, align 8
  %cmp = icmp ugt i32 %call54, %15
  br i1 %cmp, label %while.body, label %while.end, !prof !7

while.end:                                        ; preds = %if.end42, %if.end
  %new_fdt.0.lcssa218 = phi %struct.fdtable* [ %6, %if.end ], [ %call27, %if.end42 ]
  %old_fdt.0.lcssa = phi %struct.fdtable* [ %11, %if.end ], [ %14, %if.end42 ]
  %open_files.0.lcssa = phi i32 [ %call17, %if.end ], [ %call54, %if.end42 ]
  %max_fds18.le = getelementptr inbounds %struct.fdtable, %struct.fdtable* %new_fdt.0.lcssa218, i64 0, i32 0
  call fastcc void @copy_fd_bitmaps(%struct.fdtable* noundef %new_fdt.0.lcssa218, %struct.fdtable* noundef %old_fdt.0.lcssa, i32 noundef %open_files.0.lcssa) #13
  %fd56 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %new_fdt.0.lcssa218, i64 0, i32 1
  %16 = load %struct.file**, %struct.file*** %fd56, align 8
  %cmp57.not226 = icmp eq i32 %open_files.0.lcssa, 0
  br i1 %cmp57.not226, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %while.end
  %fd55 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %old_fdt.0.lcssa, i64 0, i32 1
  %17 = load %struct.file**, %struct.file*** %fd55, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %do.body64
  %old_fds.0229 = phi %struct.file** [ %incdec.ptr, %do.body64 ], [ %17, %for.body.preheader ]
  %new_fds.0228 = phi %struct.file** [ %incdec.ptr80, %do.body64 ], [ %16, %for.body.preheader ]
  %i.0227 = phi i32 [ %dec, %do.body64 ], [ %open_files.0.lcssa, %for.body.preheader ]
  %incdec.ptr = getelementptr %struct.file*, %struct.file** %old_fds.0229, i64 1
  %18 = load %struct.file*, %struct.file** %old_fds.0229, align 8
  %tobool59.not = icmp eq %struct.file* %18, null
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %for.body
  %call61 = call fastcc %struct.file* @get_file(%struct.file* noundef nonnull %18) #13
  br label %do.body64

if.else:                                          ; preds = %for.body
  %sub62 = sub nuw i32 %open_files.0.lcssa, %i.0227
  call fastcc void @__clear_open_fd(i32 noundef %sub62, %struct.fdtable* noundef %new_fdt.0.lcssa218) #13
  br label %do.body64

do.body64:                                        ; preds = %if.then60, %if.else
  %19 = ptrtoint %struct.file* %18 to i64
  %incdec.ptr80 = getelementptr %struct.file*, %struct.file** %new_fds.0228, i64 1
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file** elementtype(%struct.file*) %new_fds.0228, i64 %19) #14, !srcloc !8
  %dec = add i32 %i.0227, -1
  %cmp57.not = icmp eq i32 %dec, 0
  br i1 %cmp57.not, label %for.end, label %for.body

for.end:                                          ; preds = %do.body64, %while.end
  %new_fds.0.lcssa = phi %struct.file** [ %16, %while.end ], [ %incdec.ptr80, %do.body64 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  %20 = bitcast %struct.file** %new_fds.0.lcssa to i8*
  %21 = load i32, i32* %max_fds18.le, align 8
  %sub93 = sub i32 %21, %open_files.0.lcssa
  %conv94 = zext i32 %sub93 to i64
  %mul = shl nuw nsw i64 %conv94, 3
  %call95 = call i8* @memset(i8* noundef %20, i32 noundef 0, i64 noundef %mul) #12
  %22 = ptrtoint %struct.fdtable* %new_fdt.0.lcssa218 to i64
  %fdt115 = getelementptr inbounds i8, i8* %call, i64 32
  %23 = bitcast i8* %fdt115 to %struct.fdtable**
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.fdtable** elementtype(%struct.fdtable*) %23, i64 %22) #14, !srcloc !9
  br label %cleanup

out_release:                                      ; preds = %if.end26, %if.then41
  %storemerge = phi i32 [ -24, %if.then41 ], [ -12, %if.end26 ]
  store i32 %storemerge, i32* %errorp, align 4
  %24 = load %struct.kmem_cache*, %struct.kmem_cache** @files_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %24, i8* noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %out_release, %entry, %for.end
  %retval.0 = phi %struct.files_struct* [ %1, %for.end ], [ null, %entry ], [ null, %out_release ]
  ret %struct.files_struct* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @sane_fdtable_size(%struct.fdtable* nocapture noundef readonly %fdt, i32 noundef %max_fds) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @count_open_files(%struct.fdtable* noundef %fdt) #13
  %0 = icmp ugt i32 %max_fds, 64
  %spec.store.select = select i1 %0, i32 %max_fds, i32 64
  %cmp1 = icmp ult i32 %call, %spec.store.select
  %cond = select i1 %cmp1, i32 %call, i32 %spec.store.select
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__free_fdtable(%struct.fdtable* noundef %fdt) unnamed_addr #0 {
entry:
  %fd = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 1
  %0 = bitcast %struct.file*** %fd to i8**
  %1 = load i8*, i8** %0, align 8
  call void @kvfree(i8* noundef %1) #12
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 3
  %2 = bitcast i64** %open_fds to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kvfree(i8* noundef %3) #12
  %4 = bitcast %struct.fdtable* %fdt to i8*
  call void @kfree(i8* noundef %4) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fdtable* @alloc_fdtable(i32 noundef %nr) unnamed_addr #0 {
entry:
  %0 = lshr i32 %nr, 7
  %add = add nuw nsw i32 %0, 1
  %conv27 = zext i32 %add to i64
  %call28 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv27) #15
  %cond30.tr = trunc i64 %call28 to i32
  %conv33 = shl i32 %cond30.tr, 7
  %1 = load i32, i32* @sysctl_nr_open, align 4
  %cmp34 = icmp ugt i32 %conv33, %1
  br i1 %cmp34, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  %sub38 = add i32 %1, -1
  %or = or i32 %sub38, 63
  %add39 = add i32 %or, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr.addr.0 = phi i32 [ %add39, %if.then ], [ %conv33, %entry ]
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 4197568) #12
  %3 = bitcast i8* %call.i.i to %struct.fdtable*
  %tobool41.not = icmp eq i8* %call.i.i, null
  br i1 %tobool41.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.end
  %max_fds = bitcast i8* %call.i.i to i32*
  store i32 %nr.addr.0, i32* %max_fds, align 8
  %conv44 = zext i32 %nr.addr.0 to i64
  %call45 = call fastcc i8* @kvmalloc_array(i64 noundef %conv44) #13
  %tobool46.not = icmp eq i8* %call45, null
  br i1 %tobool46.not, label %out_fdt, label %if.end48

if.end48:                                         ; preds = %if.end43
  %fd = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %4 = bitcast i8* %fd to i8**
  store i8* %call45, i8** %4, align 8
  %5 = lshr i32 %nr.addr.0, 2
  %div50 = and i32 %5, 536870911
  %conv51 = zext i32 %div50 to i64
  %sub54 = add nuw nsw i64 %conv44, 63
  %div55 = lshr i64 %sub54, 6
  %sub57 = add nuw nsw i64 %div55, 63
  %6 = lshr i64 %sub57, 3
  %mul59 = and i64 %6, 33554424
  %add60 = add nuw nsw i64 %mul59, %conv51
  %cmp61 = icmp ugt i64 %add60, 64
  %cond66 = select i1 %cmp61, i64 %add60, i64 64
  %call67 = call fastcc i8* @kvmalloc(i64 noundef %cond66) #13
  %tobool68.not = icmp eq i8* %call67, null
  br i1 %tobool68.not, label %out_arr, label %if.end70

if.end70:                                         ; preds = %if.end48
  %open_fds = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %7 = bitcast i8* %open_fds to i8**
  store i8* %call67, i8** %7, align 8
  %div71 = lshr i32 %nr.addr.0, 3
  %idx.ext = zext i32 %div71 to i64
  %add.ptr = getelementptr i8, i8* %call67, i64 %idx.ext
  %close_on_exec = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %8 = bitcast i8* %close_on_exec to i8**
  store i8* %add.ptr, i8** %8, align 8
  %add.ptr74 = getelementptr i8, i8* %add.ptr, i64 %idx.ext
  %full_fds_bits = getelementptr inbounds i8, i8* %call.i.i, i64 32
  %9 = bitcast i8* %full_fds_bits to i8**
  store i8* %add.ptr74, i8** %9, align 8
  br label %cleanup

out_arr:                                          ; preds = %if.end48
  call void @kvfree(i8* noundef nonnull %call45) #12
  br label %out_fdt

out_fdt:                                          ; preds = %if.end43, %out_arr
  call void @kfree(i8* noundef nonnull %call.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_fdt, %if.end, %if.end70
  %retval.0 = phi %struct.fdtable* [ %3, %if.end70 ], [ null, %if.end ], [ null, %out_fdt ]
  ret %struct.fdtable* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_fd_bitmaps(%struct.fdtable* nocapture noundef readonly %nfdt, %struct.fdtable* nocapture noundef readonly %ofdt, i32 noundef %count) unnamed_addr #0 {
entry:
  %div = lshr i32 %count, 3
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %nfdt, i64 0, i32 0
  %0 = load i32, i32* %max_fds, align 8
  %sub = sub i32 %0, %count
  %div1 = lshr i32 %sub, 3
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %nfdt, i64 0, i32 3
  %1 = bitcast i64** %open_fds to i8**
  %2 = load i8*, i8** %1, align 8
  %open_fds2 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %ofdt, i64 0, i32 3
  %3 = bitcast i64** %open_fds2 to i8**
  %4 = load i8*, i8** %3, align 8
  %conv = zext i32 %div to i64
  %call = call i8* @memcpy(i8* noundef %2, i8* noundef %4, i64 noundef %conv) #12
  %5 = load i8*, i8** %1, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 %conv
  %conv4 = zext i32 %div1 to i64
  %call5 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %conv4) #12
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %nfdt, i64 0, i32 2
  %6 = bitcast i64** %close_on_exec to i8**
  %7 = load i8*, i8** %6, align 8
  %close_on_exec6 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %ofdt, i64 0, i32 2
  %8 = bitcast i64** %close_on_exec6 to i8**
  %9 = load i8*, i8** %8, align 8
  %call8 = call i8* @memcpy(i8* noundef %7, i8* noundef %9, i64 noundef %conv) #12
  %10 = load i8*, i8** %6, align 8
  %add.ptr11 = getelementptr i8, i8* %10, i64 %conv
  %call13 = call i8* @memset(i8* noundef %add.ptr11, i32 noundef 0, i64 noundef %conv4) #12
  %conv14 = zext i32 %count to i64
  %sub15 = add nuw nsw i64 %conv14, 63
  %div16 = lshr i64 %sub15, 6
  %11 = add nuw nsw i64 %div16, 63
  %12 = lshr i64 %11, 3
  %conv20 = and i64 %12, 33554424
  %13 = load i32, i32* %max_fds, align 8
  %conv22 = zext i32 %13 to i64
  %sub24 = add nuw nsw i64 %conv22, 63
  %div25 = lshr i64 %sub24, 6
  %sub27 = add nuw nsw i64 %div25, 63
  %14 = lshr i64 %sub27, 3
  %mul29 = and i64 %14, 33554424
  %sub31 = sub nsw i64 %mul29, %conv20
  %full_fds_bits = getelementptr inbounds %struct.fdtable, %struct.fdtable* %nfdt, i64 0, i32 4
  %15 = bitcast i64** %full_fds_bits to i8**
  %16 = load i8*, i8** %15, align 8
  %full_fds_bits33 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %ofdt, i64 0, i32 4
  %17 = bitcast i64** %full_fds_bits33 to i8**
  %18 = load i8*, i8** %17, align 8
  %call35 = call i8* @memcpy(i8* noundef %16, i8* noundef %18, i64 noundef %conv20) #12
  %19 = load i8*, i8** %15, align 8
  %add.ptr38 = getelementptr i8, i8* %19, i64 %conv20
  %conv39 = and i64 %sub31, 4294967288
  %call40 = call i8* @memset(i8* noundef %add.ptr38, i32 noundef 0, i64 noundef %conv39) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #12
  ret %struct.file* %f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__clear_open_fd(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #4 {
entry:
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 3
  %0 = load i64*, i64** %open_fds, align 8
  %rem.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %fd, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr i64, i64* %0, i64 %idx.ext.i
  %neg.i = xor i64 %shl.i, -1
  %1 = load i64, i64* %add.ptr.i, align 8
  %and.i = and i64 %1, %neg.i
  store i64 %and.i, i64* %add.ptr.i, align 8
  %full_fds_bits = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 4
  %2 = load i64*, i64** %full_fds_bits, align 8
  %rem.i3 = and i32 %div.i, 63
  %sh_prom.i4 = zext i32 %rem.i3 to i64
  %shl.i5 = shl nuw i64 1, %sh_prom.i4
  %div.i6 = lshr i32 %fd, 12
  %idx.ext.i7 = zext i32 %div.i6 to i64
  %add.ptr.i8 = getelementptr i64, i64* %2, i64 %idx.ext.i7
  %neg.i9 = xor i64 %shl.i5, -1
  %3 = load i64, i64* %add.ptr.i8, align 8
  %and.i10 = and i64 %3, %neg.i9
  store i64 %and.i10, i64* %add.ptr.i8, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_files_struct(%struct.files_struct* noundef %files) local_unnamed_addr #0 {
entry:
  %count = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 0
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %count) #12
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.fdtable* @close_files(%struct.files_struct* noundef %files) #13
  %fdtab = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 4
  %cmp.not = icmp eq %struct.fdtable* %call1, %fdtab
  br i1 %cmp.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call fastcc void @__free_fdtable(%struct.fdtable* noundef %call1) #13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @files_cachep, align 8
  %1 = bitcast %struct.files_struct* %files to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #12
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.fdtable* @close_files(%struct.files_struct* noundef %files) unnamed_addr #0 {
entry:
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp.not45.not = icmp eq i32 %1, 0
  br i1 %cmp.not45.not, label %for.end, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 3
  %fd = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %2 = bitcast %struct.files_struct* %files to i8*
  br label %if.end

for.cond.loopexit.loopexit:                       ; preds = %if.end15
  %.pre = load i32, i32* %max_fds, align 8
  br label %for.cond.loopexit

for.cond.loopexit:                                ; preds = %for.cond.loopexit.loopexit, %if.end
  %3 = phi i32 [ %.pre, %for.cond.loopexit.loopexit ], [ %4, %if.end ]
  %mul = shl i32 %inc, 6
  %cmp.not = icmp ult i32 %mul, %3
  br i1 %cmp.not, label %if.end, label %for.end

if.end:                                           ; preds = %if.end.lr.ph, %for.cond.loopexit
  %4 = phi i32 [ %1, %if.end.lr.ph ], [ %3, %for.cond.loopexit ]
  %mul47 = phi i32 [ 0, %if.end.lr.ph ], [ %mul, %for.cond.loopexit ]
  %j.046 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %for.cond.loopexit ]
  %5 = load i64*, i64** %open_fds, align 8
  %inc = add i32 %j.046, 1
  %idxprom = zext i32 %j.046 to i64
  %arrayidx = getelementptr i64, i64* %5, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %tobool.not42 = icmp eq i64 %6, 0
  br i1 %tobool.not42, label %for.cond.loopexit, label %while.body

while.body:                                       ; preds = %if.end, %if.end15
  %i.044 = phi i32 [ %inc16, %if.end15 ], [ %mul47, %if.end ]
  %set.043 = phi i64 [ %shr, %if.end15 ], [ %6, %if.end ]
  %and = and i64 %set.043, 1
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.end15, label %if.then4

if.then4:                                         ; preds = %while.body
  %7 = load %struct.file**, %struct.file*** %fd, align 8
  %idxprom5 = zext i32 %i.044 to i64
  %arrayidx6 = getelementptr %struct.file*, %struct.file** %7, i64 %idxprom5
  %8 = bitcast %struct.file** %arrayidx6 to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i8* noundef %8) #12
  %tobool9.not = icmp eq i64 %call11.i, 0
  br i1 %tobool9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.then4
  %9 = inttoptr i64 %call11.i to %struct.file*
  %call11 = call i32 @filp_close(%struct.file* noundef nonnull %9, i8* noundef %2) #12
  call fastcc void @_cond_resched() #13
  br label %if.end15

if.end15:                                         ; preds = %if.then4, %if.then10, %while.body
  %inc16 = add i32 %i.044, 1
  %shr = lshr i64 %set.043, 1
  %tobool.not = icmp ult i64 %set.043, 2
  br i1 %tobool.not, label %for.cond.loopexit.loopexit, label %while.body

for.end:                                          ; preds = %for.cond.loopexit, %entry
  ret %struct.fdtable* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_files(%struct.task_struct* noundef %tsk) local_unnamed_addr #0 {
entry:
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 84
  %0 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %tobool.not = icmp eq %struct.files_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @task_lock(%struct.task_struct* noundef %tsk) #13
  store %struct.files_struct* null, %struct.files_struct** %files1, align 16
  call fastcc void @task_unlock(%struct.task_struct* noundef %tsk) #13
  call void @put_files_struct(%struct.files_struct* noundef nonnull %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__get_unused_fd_flags(i32 noundef %flags, i64 noundef %nofile) local_unnamed_addr #0 {
entry:
  %conv = trunc i64 %nofile to i32
  %call = call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %conv, i32 noundef %flags) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @alloc_fd(i32 noundef %start, i32 noundef %end, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt2 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %next_fd = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 7
  br label %repeat

repeat:                                           ; preds = %if.end18, %entry
  %3 = load volatile %struct.fdtable*, %struct.fdtable** %fdt2, align 32
  %4 = load i32, i32* %next_fd, align 4
  %cmp = icmp ugt i32 %4, %start
  %spec.select = select i1 %cmp, i32 %4, i32 %start
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 0
  %5 = load i32, i32* %max_fds, align 8
  %cmp8 = icmp ult i32 %spec.select, %5
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %repeat
  %call10 = call fastcc i32 @find_next_fd(%struct.fdtable* noundef %3, i32 noundef %spec.select) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %repeat
  %fd.1 = phi i32 [ %call10, %if.then9 ], [ %spec.select, %repeat ]
  %cmp12.not = icmp ult i32 %fd.1, %end
  br i1 %cmp12.not, label %if.end14, label %out

if.end14:                                         ; preds = %if.end11
  %call15 = call fastcc i32 @expand_files(%struct.files_struct* noundef %2, i32 noundef %fd.1) #13
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %out, label %if.end18

if.end18:                                         ; preds = %if.end14
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end20, label %repeat

if.end20:                                         ; preds = %if.end18
  %6 = load i32, i32* %next_fd, align 4
  %cmp22.not = icmp ult i32 %6, %start
  br i1 %cmp22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %add = add nuw i32 %fd.1, 1
  store i32 %add, i32* %next_fd, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20
  call fastcc void @__set_open_fd(i32 noundef %fd.1, %struct.fdtable* noundef %3) #13
  %and = and i32 %flags, 524288
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  call fastcc void @__set_close_on_exec(i32 noundef %fd.1, %struct.fdtable* noundef %3) #13
  br label %if.end28

if.else:                                          ; preds = %if.end25
  call fastcc void @__clear_close_on_exec(i32 noundef %fd.1, %struct.fdtable* noundef %3) #13
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %fd33 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 1
  %7 = load %struct.file**, %struct.file*** %fd33, align 8
  %idxprom = zext i32 %fd.1 to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %7, i64 %idxprom
  %8 = load volatile %struct.file*, %struct.file** %arrayidx, align 8
  %cmp35.not = icmp eq %struct.file* %8, null
  br i1 %cmp35.not, label %out, label %do.end39

do.end39:                                         ; preds = %if.end28
  %call41 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 noundef %fd.1) #17
  %9 = load %struct.file**, %struct.file*** %fd33, align 8
  %arrayidx52 = getelementptr %struct.file*, %struct.file** %9, i64 %idxprom
  store volatile %struct.file* null, %struct.file** %arrayidx52, align 8
  br label %out

out:                                              ; preds = %if.end14, %if.end11, %if.end28, %do.end39
  %error.0 = phi i32 [ %fd.1, %do.end39 ], [ %fd.1, %if.end28 ], [ %call15, %if.end14 ], [ -24, %if.end11 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_unused_fd_flags(i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @rlimit() #13
  %call1 = call i32 @__get_unused_fd_flags(i32 noundef %flags, i64 noundef %call) #13
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #13
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_unused_fd(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  call fastcc void @__put_unused_fd(%struct.files_struct* noundef %2, i32 noundef %fd) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @__put_unused_fd(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #6 {
entry:
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  call fastcc void @__clear_open_fd(i32 noundef %fd, %struct.fdtable* noundef %0) #13
  %next_fd = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 7
  %1 = load i32, i32* %next_fd, align 4
  %cmp = icmp ugt i32 %1, %fd
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %fd, i32* %next_fd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fd_install(i32 noundef %fd, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  call fastcc void @rcu_read_lock_sched() #13
  %resize_in_progress = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 1
  %3 = load i8, i8* %resize_in_progress, align 4, !range !11
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end58, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call fastcc void @rcu_read_unlock_sched() #13
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt4 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %4 = load volatile %struct.fdtable*, %struct.fdtable** %fdt4, align 32
  %fd10 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %4, i64 0, i32 1
  %5 = load %struct.file**, %struct.file*** %fd10, align 8
  %idxprom = zext i32 %fd to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %5, i64 %idxprom
  %6 = load %struct.file*, %struct.file** %arrayidx, align 8
  %cmp.not = icmp eq %struct.file* %6, null
  br i1 %cmp.not, label %do.body28, label %do.body20, !prof !12

do.body20:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/file.c\22; .popsection; .long 14472b - 14470b; .short 584; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !13
  unreachable

do.body28:                                        ; preds = %if.then
  %7 = ptrtoint %struct.file* %file to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file** elementtype(%struct.file*) %arrayidx, i64 %7) #14, !srcloc !14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup

if.end58:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #14, !srcloc !15
  %fdt64 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %8 = load volatile %struct.fdtable*, %struct.fdtable** %fdt64, align 32
  %fd70 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %8, i64 0, i32 1
  %9 = load %struct.file**, %struct.file*** %fd70, align 8
  %idxprom71 = zext i32 %fd to i64
  %arrayidx72 = getelementptr %struct.file*, %struct.file** %9, i64 %idxprom71
  %10 = load %struct.file*, %struct.file** %arrayidx72, align 8
  %cmp73.not = icmp eq %struct.file* %10, null
  br i1 %cmp73.not, label %do.body92, label %do.body83, !prof !12

do.body83:                                        ; preds = %if.end58
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/file.c\22; .popsection; .long 14472b - 14470b; .short 592; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !16
  unreachable

do.body92:                                        ; preds = %if.end58
  %11 = ptrtoint %struct.file* %file to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file** elementtype(%struct.file*) %arrayidx72, i64 %11) #14, !srcloc !17
  call fastcc void @rcu_read_unlock_sched() #13
  br label %cleanup

cleanup:                                          ; preds = %do.body92, %do.body28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_lock_sched() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock_sched() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @close_fd(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %call2 = call fastcc %struct.file* @pick_file(%struct.files_struct* noundef %2, i32 noundef %fd) #13
  %3 = bitcast %struct.file* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %3) #13
  br i1 %call3, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.files_struct* %2 to i8*
  %call4 = call i32 @filp_close(%struct.file* noundef %call2, i8* noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -9, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @pick_file(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp.not = icmp ugt i32 %1, %fd
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #13
  %2 = bitcast i8* %call to %struct.file*
  br label %out_unlock

if.end:                                           ; preds = %entry
  %fd6 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %3 = load %struct.file**, %struct.file*** %fd6, align 8
  %idxprom = zext i32 %fd to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %3, i64 %idxprom
  %4 = load %struct.file*, %struct.file** %arrayidx, align 8
  %tobool.not = icmp eq %struct.file* %4, null
  br i1 %tobool.not, label %if.then7, label %do.body17

if.then7:                                         ; preds = %if.end
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -9) #13
  %5 = bitcast i8* %call8 to %struct.file*
  br label %out_unlock

do.body17:                                        ; preds = %if.end
  store volatile %struct.file* null, %struct.file** %arrayidx, align 8
  call fastcc void @__put_unused_fd(%struct.files_struct* noundef %files, i32 noundef %fd) #13
  br label %out_unlock

out_unlock:                                       ; preds = %do.body17, %if.then7, %if.then
  %file.0 = phi %struct.file* [ %2, %if.then ], [ %4, %do.body17 ], [ %5, %if.then7 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret %struct.file* %file.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(%struct.file* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__close_range(i32 noundef %fd, i32 noundef %max_fd, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %fds = alloca %struct.files_struct*, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %3 = bitcast %struct.files_struct** %fds to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #14
  store %struct.files_struct* null, %struct.files_struct** %fds, align 8
  %and = and i32 %flags, -7
  %tobool.not = icmp ne i32 %and, 0
  %cmp = icmp ugt i32 %fd, %max_fd
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %cleanup38, label %if.end2

if.end2:                                          ; preds = %entry
  %and3 = and i32 %flags, 2
  %tobool4.not = icmp eq i32 %and3, 0
  %.pre = and i32 %flags, 4
  br i1 %tobool4.not, label %if.end29, label %if.then5

if.then5:                                         ; preds = %if.end2
  %tobool7.not = icmp eq i32 %.pre, 0
  br i1 %tobool7.not, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.then5
  call fastcc void @__rcu_read_lock() #12
  %fdt = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %4 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %call13 = call fastcc i32 @last_fd(%struct.fdtable* noundef %4) #13
  %cmp14.not = icmp ugt i32 %call13, %max_fd
  %spec.select = select i1 %cmp14.not, i32 -1, i32 %fd
  call fastcc void @rcu_read_unlock() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then8, %if.then5
  %max_unshare_fds.1 = phi i32 [ -1, %if.then5 ], [ %spec.select, %if.then8 ]
  %call18 = call i32 @unshare_fd(i64 noundef 1024, i32 noundef %max_unshare_fds.1, %struct.files_struct** noundef nonnull %fds) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup38

if.end21:                                         ; preds = %if.end17
  %5 = load %struct.files_struct*, %struct.files_struct** %fds, align 8
  %tobool22.not = icmp eq %struct.files_struct* %5, null
  br i1 %tobool22.not, label %if.end29, label %do.body24

do.body24:                                        ; preds = %if.end21
  store %struct.files_struct* %2, %struct.files_struct** %fds, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end2, %do.body24, %if.end21
  %cur_fds.2 = phi %struct.files_struct* [ %5, %do.body24 ], [ %2, %if.end21 ], [ %2, %if.end2 ]
  %tobool31.not = icmp eq i32 %.pre, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  call fastcc void @__range_cloexec(%struct.files_struct* noundef %cur_fds.2, i32 noundef %fd, i32 noundef %max_fd) #13
  br label %if.end33

if.else:                                          ; preds = %if.end29
  call fastcc void @__range_close(%struct.files_struct* noundef %cur_fds.2, i32 noundef %fd, i32 noundef %max_fd) #13
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then32
  %6 = load %struct.files_struct*, %struct.files_struct** %fds, align 8
  %tobool34.not = icmp eq %struct.files_struct* %6, null
  br i1 %tobool34.not, label %cleanup38, label %if.then35

if.then35:                                        ; preds = %if.end33
  call fastcc void @task_lock(%struct.task_struct* noundef %1) #13
  store %struct.files_struct* %cur_fds.2, %struct.files_struct** %files, align 16
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #13
  %7 = load %struct.files_struct*, %struct.files_struct** %fds, align 8
  call void @put_files_struct(%struct.files_struct* noundef %7) #13
  br label %cleanup38

cleanup38:                                        ; preds = %if.end17, %if.end33, %if.then35, %entry
  %retval.1 = phi i32 [ -22, %entry ], [ 0, %if.then35 ], [ 0, %if.end33 ], [ %call18, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #14
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @last_fd(%struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #8 {
entry:
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 0
  %0 = load i32, i32* %max_fds, align 8
  %sub = add i32 %0, -1
  ret i32 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_fd(i64 noundef, i32 noundef, %struct.files_struct** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__range_cloexec(%struct.files_struct* noundef %cur_fds, i32 noundef %fd, i32 noundef %max_fd) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %cur_fds, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %cur_fds, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %call = call fastcc i32 @last_fd(%struct.fdtable* noundef %0) #13
  %cmp = icmp ult i32 %call, %max_fd
  %cond = select i1 %cmp, i32 %call, i32 %max_fd
  %cmp7.not = icmp ult i32 %cond, %fd
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 2
  %1 = load i64*, i64** %close_on_exec, align 8
  %sub = sub i32 %cond, %fd
  %add = add i32 %sub, 1
  call void @__bitmap_set(i64* noundef %1, i32 noundef %fd, i32 noundef %add) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__range_close(%struct.files_struct* noundef %cur_fds, i32 noundef %fd, i32 noundef %max_fd) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.files_struct* %cur_fds to i8*
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %fd.addr.0 = phi i32 [ %fd, %entry ], [ %inc, %cleanup ]
  %cmp.not = icmp ugt i32 %fd.addr.0, %max_fd
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add i32 %fd.addr.0, 1
  %call = call fastcc %struct.file* @pick_file(%struct.files_struct* noundef %cur_fds, i32 noundef %fd.addr.0) #13
  %1 = bitcast %struct.file* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #13
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call2 = call i32 @filp_close(%struct.file* noundef %call, i8* noundef %0) #12
  call fastcc void @_cond_resched() #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %1) #13
  %cmp5 = icmp eq i64 %call4, -22
  %. = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %cleanup.dest.slot.0 = phi i32 [ 2, %if.then ], [ %., %if.end ]
  %switch = icmp eq i32 %cleanup.dest.slot.0, 1
  br i1 %switch, label %while.end, label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__close_fd_get_file(i32 noundef %fd, %struct.file** nocapture noundef writeonly %res) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %fdt2 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %3 = load volatile %struct.fdtable*, %struct.fdtable** %fdt2, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 0
  %4 = load i32, i32* %max_fds, align 8
  %cmp.not = icmp ugt i32 %4, %fd
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %fd7 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 1
  %5 = load %struct.file**, %struct.file*** %fd7, align 8
  %idxprom = zext i32 %fd to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %5, i64 %idxprom
  %6 = load %struct.file*, %struct.file** %arrayidx, align 8
  %tobool.not = icmp eq %struct.file* %6, null
  br i1 %tobool.not, label %cleanup, label %do.body17

do.body17:                                        ; preds = %if.end
  store volatile %struct.file* null, %struct.file** %arrayidx, align 8
  call fastcc void @__put_unused_fd(%struct.files_struct* noundef %2, i32 noundef %fd) #13
  %call38 = call fastcc %struct.file* @get_file(%struct.file* noundef nonnull %6) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %do.body17
  %storemerge = phi %struct.file* [ %6, %do.body17 ], [ null, %if.end ], [ null, %entry ]
  %retval.0 = phi i32 [ 0, %do.body17 ], [ -2, %if.end ], [ -2, %entry ]
  store %struct.file* %storemerge, %struct.file** %res, align 8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @close_fd_get_file(i32 noundef %fd, %struct.file** nocapture noundef writeonly %res) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %call2 = call i32 @__close_fd_get_file(i32 noundef %fd, %struct.file** noundef %res) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_close_on_exec(%struct.files_struct* noundef %files) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds107 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds107, align 8
  %cmp.not108.not = icmp eq i32 %1, 0
  br i1 %cmp.not108.not, label %for.end60, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %2 = bitcast %struct.files_struct* %files to i8*
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %for.inc58
  %3 = phi %struct.fdtable* [ %0, %if.end.lr.ph ], [ %8, %for.inc58 ]
  %mul110 = phi i32 [ 0, %if.end.lr.ph ], [ %mul, %for.inc58 ]
  %i.0109 = phi i32 [ 0, %if.end.lr.ph ], [ %inc59, %for.inc58 ]
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 2
  %4 = load i64*, i64** %close_on_exec, align 8
  %idxprom = zext i32 %i.0109 to i64
  %arrayidx = getelementptr i64, i64* %4, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %for.inc58, label %if.end7

if.end7:                                          ; preds = %if.end
  store i64 0, i64* %arrayidx, align 8
  %fd16 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %3, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end7, %cleanup
  %set.0106 = phi i64 [ %5, %if.end7 ], [ %shr, %cleanup ]
  %fd.0105 = phi i32 [ %mul110, %if.end7 ], [ %inc, %cleanup ]
  %and = and i64 %set.0106, 1
  %tobool13.not = icmp eq i64 %and, 0
  br i1 %tobool13.not, label %cleanup, label %if.end15

if.end15:                                         ; preds = %for.body
  %6 = load %struct.file**, %struct.file*** %fd16, align 8
  %idxprom17 = zext i32 %fd.0105 to i64
  %arrayidx18 = getelementptr %struct.file*, %struct.file** %6, i64 %idxprom17
  %7 = load %struct.file*, %struct.file** %arrayidx18, align 8
  %tobool19.not = icmp eq %struct.file* %7, null
  br i1 %tobool19.not, label %cleanup, label %do.body29

do.body29:                                        ; preds = %if.end15
  store volatile %struct.file* null, %struct.file** %arrayidx18, align 8
  call fastcc void @__put_unused_fd(%struct.files_struct* noundef %files, i32 noundef %fd.0105) #13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  %call50 = call i32 @filp_close(%struct.file* noundef nonnull %7, i8* noundef %2) #12
  call fastcc void @_cond_resched() #13
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %for.body, %do.body29
  %inc = add i32 %fd.0105, 1
  %shr = lshr i64 %set.0106, 1
  %tobool12.not = icmp ult i64 %set.0106, 2
  br i1 %tobool12.not, label %for.inc58, label %for.body

for.inc58:                                        ; preds = %cleanup, %if.end
  %inc59 = add i32 %i.0109, 1
  %mul = shl i32 %inc59, 6
  %8 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %8, i64 0, i32 0
  %9 = load i32, i32* %max_fds, align 8
  %cmp.not = icmp ult i32 %mul, %9
  br i1 %cmp.not, label %if.end, label %for.end60

for.end60:                                        ; preds = %for.inc58, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @fget_many(i32 noundef %fd, i32 noundef %refs) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @__fget(i32 noundef %fd, i32 noundef 16384, i32 noundef %refs) #13
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @__fget(i32 noundef %fd, i32 noundef %mask, i32 noundef %refs) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %call1 = call fastcc %struct.file* @__fget_files(%struct.files_struct* noundef %2, i32 noundef %fd, i32 noundef %mask, i32 noundef %refs) #13
  ret %struct.file* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @fget(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @__fget(i32 noundef %fd, i32 noundef 16384, i32 noundef 1) #13
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @fget_raw(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @__fget(i32 noundef %fd, i32 noundef 0, i32 noundef 1) #13
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @fget_task(%struct.task_struct* noundef %task, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #13
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 84
  %0 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %tobool.not = icmp eq %struct.files_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.file* @__fget_files(%struct.files_struct* noundef nonnull %0, i32 noundef %fd, i32 noundef 0, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi %struct.file* [ %call, %if.then ], [ null, %entry ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #13
  ret %struct.file* %file.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @__fget_files(%struct.files_struct* noundef %files, i32 noundef %fd, i32 noundef %mask, i32 noundef %refs) unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #12
  %call13 = call fastcc %struct.file* @files_lookup_fd_rcu(%struct.files_struct* noundef %files, i32 noundef %fd) #13
  %tobool.not14 = icmp eq %struct.file* %call13, null
  br i1 %tobool.not14, label %if.end6, label %if.then.lr.ph

if.then.lr.ph:                                    ; preds = %entry
  %conv = zext i32 %refs to i64
  br label %if.then

loop.loopexit:                                    ; preds = %do.body.i.i.i.i
  %call = call fastcc %struct.file* @files_lookup_fd_rcu(%struct.files_struct* noundef %files, i32 noundef %fd) #13
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %if.then.lr.ph, %loop.loopexit
  %call15 = phi %struct.file* [ %call13, %if.then.lr.ph ], [ %call, %loop.loopexit ]
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call15, i64 0, i32 8
  %0 = load i32, i32* %f_mode, align 4
  %and = and i32 %0, %mask
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.end6

if.else:                                          ; preds = %if.then
  %f_count = getelementptr inbounds %struct.file, %struct.file* %call15, i64 0, i32 6
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %f_count, i64 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i.i.i, align 8
  %2 = bitcast %struct.atomic64_t* %f_count to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %if.else
  %c.0.i.i.i.i = phi i64 [ %1, %if.else ], [ %call14.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i64 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %loop.loopexit, label %do.cond.i.i.i.i, !prof !7

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i64 %c.0.i.i.i.i, %conv
  %call14.i.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef %c.0.i.i.i.i, i64 noundef %add.i.i.i.i) #12
  %cmp.not.i.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end6, label %do.body.i.i.i.i, !prof !12

if.end6:                                          ; preds = %loop.loopexit, %if.then, %do.cond.i.i.i.i, %entry
  %file.0 = phi %struct.file* [ null, %entry ], [ %call15, %do.cond.i.i.i.i ], [ null, %if.then ], [ null, %loop.loopexit ]
  call fastcc void @rcu_read_unlock() #13
  ret %struct.file* %file.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @task_lookup_fd_rcu(%struct.task_struct* noundef %task, i32 noundef %fd) local_unnamed_addr #0 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #13
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 84
  %0 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %tobool.not = icmp eq %struct.files_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.file* @files_lookup_fd_rcu(%struct.files_struct* noundef nonnull %0, i32 noundef %fd) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %file.0 = phi %struct.file* [ %call, %if.then ], [ null, %entry ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #13
  ret %struct.file* %file.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_rcu(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) #13
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @task_lookup_next_fd_rcu(%struct.task_struct* noundef %task, i32* nocapture noundef %ret_fd) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %ret_fd, align 4
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #13
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 84
  %1 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %tobool.not = icmp eq %struct.files_struct* %1, null
  br i1 %tobool.not, label %if.end8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %fdt = getelementptr inbounds %struct.files_struct, %struct.files_struct* %1, i64 0, i32 3
  %2 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %max_fds22 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %2, i64 0, i32 0
  %3 = load i32, i32* %max_fds22, align 8
  %cmp23 = icmp ult i32 %0, %3
  br i1 %cmp23, label %for.body, label %if.end8

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %fd.024 = phi i32 [ %inc, %for.inc ], [ %0, %for.cond.preheader ]
  %call = call fastcc %struct.file* @files_lookup_fd_rcu(%struct.files_struct* noundef nonnull %1, i32 noundef %fd.024) #13
  %tobool6.not = icmp eq %struct.file* %call, null
  br i1 %tobool6.not, label %for.inc, label %if.end8

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %fd.024, 1
  %4 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %4, i64 0, i32 0
  %5 = load i32, i32* %max_fds, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body, label %if.end8

if.end8:                                          ; preds = %for.body, %for.inc, %for.cond.preheader, %entry
  %file.1 = phi %struct.file* [ null, %entry ], [ null, %for.cond.preheader ], [ %call, %for.body ], [ null, %for.inc ]
  %fd.1 = phi i32 [ %0, %entry ], [ %0, %for.cond.preheader ], [ %fd.024, %for.body ], [ %inc, %for.inc ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #13
  store i32 %fd.1, i32* %ret_fd, align 4
  ret %struct.file* %file.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__fdget(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__fget_light(i32 noundef %fd, i32 noundef 16384) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__fget_light(i32 noundef %fd, i32 noundef %mask) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %counter.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 0, i32 0
  %3 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %2, i32 noundef %fd) #13
  %tobool.not = icmp eq %struct.file* %call3, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call3, i64 0, i32 8
  %4 = load i32, i32* %f_mode, align 4
  %and = and i32 %4, %mask
  %tobool4.not = icmp eq i32 %and, 0
  %5 = ptrtoint %struct.file* %call3 to i64
  %spec.select = select i1 %tobool4.not, i64 %5, i64 0, !prof !12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call8 = call fastcc %struct.file* @__fget(i32 noundef %fd, i32 noundef %mask, i32 noundef 1) #13
  %tobool9.not = icmp eq %struct.file* %call8, null
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else
  %6 = ptrtoint %struct.file* %call8 to i64
  %or = or i64 %6, 1
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.else, %if.then, %if.end11
  %retval.0 = phi i64 [ %or, %if.end11 ], [ 0, %if.then ], [ 0, %if.else ], [ %spec.select, %lor.lhs.false ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__fdget_raw(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__fget_light(i32 noundef %fd, i32 noundef 0) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__fdget_pos(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #13
  %and = and i64 %call, -4
  %0 = inttoptr i64 %and to %struct.file*
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and1 = and i32 %1, 32768
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %counter.i.i = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 6, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp sgt i64 %2, 1
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then
  %or = or i64 %call, 2
  %f_pos_lock = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 9
  call void @mutex_lock(%struct.mutex* noundef %f_pos_lock) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %land.lhs.true, %entry
  %v.0 = phi i64 [ %or, %if.then4 ], [ %call, %if.then ], [ %call, %land.lhs.true ], [ %call, %entry ]
  ret i64 %v.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__f_unlock_pos(%struct.file* noundef %f) local_unnamed_addr #0 {
entry:
  %f_pos_lock = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %f_pos_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_close_on_exec(i32 noundef %fd, i32 noundef %flag) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt2 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %3 = load volatile %struct.fdtable*, %struct.fdtable** %fdt2, align 32
  %tobool.not = icmp eq i32 %flag, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__set_close_on_exec(i32 noundef %fd, %struct.fdtable* noundef %3) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call fastcc void @__clear_close_on_exec(i32 noundef %fd, %struct.fdtable* noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__set_close_on_exec(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #4 {
entry:
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 2
  %0 = load i64*, i64** %close_on_exec, align 8
  %rem.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %fd, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr i64, i64* %0, i64 %idx.ext.i
  %1 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %1, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @__clear_close_on_exec(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #6 {
entry:
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 2
  %0 = load i64*, i64** %close_on_exec, align 8
  %div.i = lshr i32 %fd, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %0, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %and.i to i64
  %2 = shl nuw i64 1, %sh_prom.i
  %3 = and i64 %1, %2
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %neg.i = xor i64 %2, -1
  %and.i6 = and i64 %1, %neg.i
  store i64 %and.i6, i64* %arrayidx.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @get_close_on_exec(i32 noundef %fd) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  call fastcc void @__rcu_read_lock() #12
  %fdt2 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 3
  %3 = load volatile %struct.fdtable*, %struct.fdtable** %fdt2, align 32
  %call7 = call fastcc i1 @close_on_exec(i32 noundef %fd, %struct.fdtable* noundef %3) #13
  call fastcc void @rcu_read_unlock() #13
  ret i1 %call7
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @close_on_exec(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #6 {
entry:
  %close_on_exec = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 2
  %0 = load i64*, i64** %close_on_exec, align 8
  %div.i = lshr i32 %fd, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %0, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %and.i to i64
  %2 = shl nuw i64 1, %sh_prom.i
  %3 = and i64 %1, %2
  %tobool = icmp ne i64 %3, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @replace_fd(i32 noundef %fd, %struct.file* noundef %file, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %tobool.not = icmp eq %struct.file* %file, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 @close_fd(i32 noundef %fd) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %fd to i64
  %call3 = call fastcc i64 @rlimit() #13
  %cmp.not = icmp ugt i64 %call3, %conv
  br i1 %cmp.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %call7 = call fastcc i32 @expand_files(%struct.files_struct* noundef %2, i32 noundef %fd) #13
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %out_unlock, label %if.end14, !prof !7

if.end14:                                         ; preds = %if.end6
  %call15 = call fastcc i32 @do_dup2(%struct.files_struct* noundef %2, %struct.file* noundef nonnull %file, i32 noundef %fd, i32 noundef %flags) #13
  br label %cleanup

out_unlock:                                       ; preds = %if.end6
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %out_unlock, %if.end14, %if.then
  %retval.0 = phi i32 [ %call7, %out_unlock ], [ %call15, %if.end14 ], [ %call2, %if.then ], [ -9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @expand_files(%struct.files_struct* noundef %files, i32 noundef %nr) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds63 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds63, align 8
  %cmp64 = icmp ugt i32 %1, %nr
  br i1 %cmp64, label %cleanup37, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %resize_in_progress = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 1
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  %2 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %resize_wait = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %do.end30
  %3 = load i32, i32* @sysctl_nr_open, align 4
  %cmp6.not = icmp ugt i32 %3, %nr
  br i1 %cmp6.not, label %if.end8, label %cleanup37

if.end8:                                          ; preds = %if.end
  %4 = load i8, i8* %resize_in_progress, align 4, !range !11
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end32, label %if.then11, !prof !12

if.then11:                                        ; preds = %if.end8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  %5 = load i8, i8* %resize_in_progress, align 4, !range !11
  %tobool20.not = icmp eq i8 %5, 0
  br i1 %tobool20.not, label %do.end30, label %if.end22

if.end22:                                         ; preds = %if.then11
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !20
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call61 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %resize_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #12
  %6 = load i8, i8* %resize_in_progress, align 4, !range !11
  %tobool24.not62 = icmp eq i8 %6, 0
  br i1 %tobool24.not62, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end22, %cleanup
  call void @schedule() #12
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %resize_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #12
  %7 = load i8, i8* %resize_in_progress, align 4, !range !11
  %tobool24.not = icmp eq i8 %7, 0
  br i1 %tobool24.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end22
  call void @finish_wait(%struct.wait_queue_head* noundef %resize_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then11, %for.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %8 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %8, i64 0, i32 0
  %9 = load i32, i32* %max_fds, align 8
  %cmp = icmp ugt i32 %9, %nr
  br i1 %cmp, label %cleanup37, label %if.end

if.end32:                                         ; preds = %if.end8
  store i8 1, i8* %resize_in_progress, align 4
  %call34 = call fastcc i32 @expand_fdtable(%struct.files_struct* noundef %files, i32 noundef %nr) #13
  store i8 0, i8* %resize_in_progress, align 4
  call void @__wake_up(%struct.wait_queue_head* noundef %resize_wait, i32 noundef 3, i32 noundef 0, i8* noundef null) #12
  br label %cleanup37

cleanup37:                                        ; preds = %do.end30, %if.end, %entry, %if.end32
  %retval.0 = phi i32 [ %call34, %if.end32 ], [ 0, %entry ], [ 1, %do.end30 ], [ -24, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_dup2(%struct.files_struct* noundef %files, %struct.file* noundef %file, i32 noundef %fd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %fd6 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %1 = load %struct.file**, %struct.file*** %fd6, align 8
  %idxprom = zext i32 %fd to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %1, i64 %idxprom
  %2 = load %struct.file*, %struct.file** %arrayidx, align 8
  %tobool.not = icmp eq %struct.file* %2, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @fd_is_open(i32 noundef %fd, %struct.fdtable* noundef %0) #13
  br i1 %call, label %Ebusy, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call7 = call fastcc %struct.file* @get_file(%struct.file* noundef %file) #13
  %3 = ptrtoint %struct.file* %file to i64
  %4 = load %struct.file**, %struct.file*** %fd6, align 8
  %arrayidx26 = getelementptr %struct.file*, %struct.file** %4, i64 %idxprom
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file** elementtype(%struct.file*) %arrayidx26, i64 %3) #14, !srcloc !21
  call fastcc void @__set_open_fd(i32 noundef %fd, %struct.fdtable* noundef %0) #13
  %and = and i32 %flags, 524288
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.end
  call fastcc void @__set_close_on_exec(i32 noundef %fd, %struct.fdtable* noundef %0) #13
  br label %if.end39

if.else38:                                        ; preds = %if.end
  call fastcc void @__clear_close_on_exec(i32 noundef %fd, %struct.fdtable* noundef %0) #13
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br i1 %tobool.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.end39
  %5 = bitcast %struct.files_struct* %files to i8*
  %call42 = call i32 @filp_close(%struct.file* noundef nonnull %2, i8* noundef %5) #12
  br label %cleanup

Ebusy:                                            ; preds = %land.lhs.true
  %rlock.i70 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i70) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then41, %Ebusy
  %retval.0 = phi i32 [ -16, %Ebusy ], [ %fd, %if.then41 ], [ %fd, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__receive_fd(%struct.file* noundef %file, i32* noundef %ufd, i32 noundef %o_flags) local_unnamed_addr #0 {
entry:
  %call1 = call i32 @get_unused_fd_flags(i32 noundef %o_flags) #13
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry
  %tobool4.not = icmp eq i32* %ufd, null
  br i1 %tobool4.not, label %if.end22, label %if.then5

if.then5:                                         ; preds = %if.end3
  %0 = bitcast i32* %ufd to i8*
  %call6 = call fastcc i64 @__range_ok(i8* noundef nonnull %0) #13
  %tobool7.not = icmp eq i64 %call6, 0
  br i1 %tobool7.not, label %if.then20, label %if.end16

if.end16:                                         ; preds = %if.then5
  %call9 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %0) #13
  %1 = bitcast i8* %call9 to i32*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call1, i32* %1, i32 -14, i32 0) #14, !srcloc !22
  %tobool19.not = icmp eq i32 %2, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.then5, %if.end16
  %__pu_err.046 = phi i32 [ %2, %if.end16 ], [ -14, %if.then5 ]
  call void @put_unused_fd(i32 noundef %call1) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end16, %if.end3
  %call23 = call fastcc %struct.file* @get_file(%struct.file* noundef %file) #13
  call void @fd_install(i32 noundef %call1, %struct.file* noundef %file) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end22, %if.then20
  %retval.0 = phi i32 [ %__pu_err.046, %if.then20 ], [ %call1, %if.end22 ], [ %call1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 4, i8* %addr, i64 549755813887) #14, !srcloc !23
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #14, !srcloc !24
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !25
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @receive_fd_replace(i32 noundef %new_fd, %struct.file* noundef %file, i32 noundef %o_flags) local_unnamed_addr #0 {
entry:
  %call1 = call i32 @replace_fd(i32 noundef %new_fd, %struct.file* noundef %file, i32 noundef %o_flags) #13
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 %new_fd, i32 %call1
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @receive_fd(%struct.file* noundef %file, i32 noundef %o_flags) local_unnamed_addr #0 {
entry:
  %call = call i32 @__receive_fd(%struct.file* noundef %file, i32* noundef null, i32 noundef %o_flags) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_dup3(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_dup3(i64 noundef %0, i64 noundef %1, i64 noundef %2) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_dup3(i64 noundef %oldfd, i64 noundef %newfd, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %oldfd to i32
  %conv1 = trunc i64 %newfd to i32
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_dup3(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_dup2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_dup2(i64 noundef %0, i64 noundef %1) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_dup2(i64 noundef %oldfd, i64 noundef %newfd) unnamed_addr #0 {
entry:
  %conv = trunc i64 %oldfd to i32
  %conv1 = trunc i64 %newfd to i32
  %call = call fastcc i64 @__do_sys_dup2(i32 noundef %conv, i32 noundef %conv1) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_dup(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_dup(i64 noundef %0) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_dup(i64 noundef %fildes) unnamed_addr #0 {
entry:
  %conv = trunc i64 %fildes to i32
  %call = call fastcc i64 @__do_sys_dup(i32 noundef %conv) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @f_dupfd(i32 noundef %from, %struct.file* noundef %file, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @rlimit() #13
  %conv = zext i32 %from to i64
  %cmp.not = icmp ugt i64 %call, %conv
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = trunc i64 %call to i32
  %call3 = call fastcc i32 @alloc_fd(i32 noundef %from, i32 noundef %conv2, i32 noundef %flags) #13
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc %struct.file* @get_file(%struct.file* noundef %file) #13
  call void @fd_install(i32 noundef %call3, %struct.file* noundef %file) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %call3, %if.then6 ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @iterate_fd(%struct.files_struct* noundef %files, i32 noundef %n, i32 (i8*, %struct.file*, i32)* nocapture noundef readonly %f, i8* noundef %p) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.files_struct* %files, null
  br i1 %tobool.not, label %cleanup22, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp44 = icmp ugt i32 %1, %n
  br i1 %cmp44, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %fd = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %2 = zext i32 %n to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i32 [ %1, %for.body.lr.ph ], [ %7, %for.inc ]
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = load %struct.file**, %struct.file*** %fd, align 8
  %arrayidx = getelementptr %struct.file*, %struct.file** %4, i64 %indvars.iv
  %5 = load volatile %struct.file*, %struct.file** %arrayidx, align 8
  %tobool15.not = icmp eq %struct.file* %5, null
  br i1 %tobool15.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  %6 = trunc i64 %indvars.iv to i32
  %call = call i32 %f(i8* noundef %p, %struct.file* noundef nonnull %5, i32 noundef %6) #12
  %tobool18.not.not = icmp eq i32 %call, 0
  br i1 %tobool18.not.not, label %cleanup.for.inc_crit_edge, label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  %.pre = load i32, i32* %max_fds, align 8
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body
  %7 = phi i32 [ %.pre, %cleanup.for.inc_crit_edge ], [ %3, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = zext i32 %7 to i64
  %cmp = icmp ult i64 %indvars.iv.next, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %cleanup, %if.end
  %res.2 = phi i32 [ 0, %if.end ], [ %call, %cleanup ], [ 0, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup22

cleanup22:                                        ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %res.2, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #12
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #14, !srcloc !27
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @count_open_files(%struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #3 {
entry:
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 0
  %0 = load i32, i32* %max_fds, align 8
  %cmp.old.not = icmp ult i32 %0, 64
  br i1 %cmp.old.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div = lshr i32 %0, 6
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 3
  %1 = load i64*, i64** %open_fds, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.0 = phi i32 [ %dec, %for.body ], [ %div, %for.body.preheader ]
  %dec = add nsw i32 %i.0, -1
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr i64, i64* %1, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %tobool = icmp eq i64 %2, 0
  %cmp = icmp ne i32 %dec, 0
  %or.cond = select i1 %tobool, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %phi.bo = shl i32 %dec, 6
  %phi.bo8 = add i32 %phi.bo, 64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %i.1 = phi i32 [ 64, %entry ], [ %phi.bo8, %for.end.loopexit ]
  ret i32 %i.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #14, !srcloc !29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #10 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #13
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call6 = call fastcc i8* @kvmalloc(i64 noundef %2) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call6, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef 4197568, i32 noundef -1) #12
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #10 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #14, !range !30
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #14, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #14, !srcloc !32
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64* elementtype(i64) %0) #14, !srcloc !33
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @find_next_fd(%struct.fdtable* nocapture noundef readonly %fdt, i32 noundef %start) unnamed_addr #0 {
entry:
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 0
  %0 = load i32, i32* %max_fds, align 8
  %div = lshr i32 %0, 6
  %div1 = lshr i32 %start, 6
  %full_fds_bits = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 4
  %1 = load i64*, i64** %full_fds_bits, align 8
  %conv = zext i32 %div to i64
  %conv2 = zext i32 %div1 to i64
  %call = call fastcc i64 @find_next_zero_bit(i64* noundef %1, i64 noundef %conv, i64 noundef %conv2) #13
  %call.tr = trunc i64 %call to i32
  %conv3 = shl i32 %call.tr, 6
  %cmp = icmp ugt i32 %conv3, %0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp5 = icmp ugt i32 %conv3, %start
  %spec.select = select i1 %cmp5, i32 %conv3, i32 %start
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 3
  %2 = load i64*, i64** %open_fds, align 8
  %conv9 = zext i32 %0 to i64
  %conv10 = zext i32 %spec.select to i64
  %call11 = call fastcc i64 @find_next_zero_bit(i64* noundef %2, i64 noundef %conv9, i64 noundef %conv10) #13
  %conv12 = trunc i64 %call11 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv12, %if.end ], [ %0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__set_open_fd(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #4 {
entry:
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 3
  %0 = load i64*, i64** %open_fds, align 8
  %rem.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %fd, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr i64, i64* %0, i64 %idx.ext.i
  %1 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %1, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  %2 = load i64*, i64** %open_fds, align 8
  %arrayidx = getelementptr i64, i64* %2, i64 %idx.ext.i
  %3 = load i64, i64* %arrayidx, align 8
  %tobool.not = icmp eq i64 %3, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %full_fds_bits = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 4
  %4 = load i64*, i64** %full_fds_bits, align 8
  %rem.i7 = and i32 %div.i, 63
  %sh_prom.i8 = zext i32 %rem.i7 to i64
  %shl.i9 = shl nuw i64 1, %sh_prom.i8
  %div.i10 = lshr i32 %fd, 12
  %idx.ext.i11 = zext i32 %div.i10 to i64
  %add.ptr.i12 = getelementptr i64, i64* %4, i64 %idx.ext.i11
  %5 = load i64, i64* %add.ptr.i12, align 8
  %or.i13 = or i64 %5, %shl.i9
  store i64 %or.i13, i64* %add.ptr.i12, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #12
  ret i64 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #6 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 7, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #7 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  call void @rcu_read_unlock_strict() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #14, !srcloc !36
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #0 {
entry:
  %fdt1 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %0 = load volatile %struct.fdtable*, %struct.fdtable** %fdt1, align 32
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp = icmp ugt i32 %1, %fd
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %conv = zext i32 %fd to i64
  %conv4 = zext i32 %1 to i64
  %call = call fastcc i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv4) #13
  %2 = trunc i64 %call to i32
  %conv13 = and i32 %2, %fd
  %fd19 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %0, i64 0, i32 1
  %3 = load %struct.file**, %struct.file*** %fd19, align 8
  %idxprom = zext i32 %conv13 to i64
  %arrayidx = getelementptr %struct.file*, %struct.file** %3, i64 %idxprom
  %4 = load volatile %struct.file*, %struct.file** %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct.file* [ %4, %if.then ], [ null, %entry ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx, i64 noundef %sz) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 %sz) #14, !srcloc !37
  call void asm sideeffect "hint #20", "~{memory}"() #14, !srcloc !38
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @expand_fdtable(%struct.files_struct* noundef %files, i32 noundef %nr) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  %call = call fastcc %struct.fdtable* @alloc_fdtable(i32 noundef %nr) #13
  %counter.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @synchronize_rcu() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %tobool.not = icmp eq %struct.fdtable* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %call, i64 0, i32 0
  %1 = load i32, i32* %max_fds, align 8
  %cmp5.not = icmp ugt i32 %1, %nr
  br i1 %cmp5.not, label %if.end9, label %if.then8, !prof !12

if.then8:                                         ; preds = %if.end4
  call fastcc void @__free_fdtable(%struct.fdtable* noundef nonnull %call) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %fdt = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 3
  %2 = load volatile %struct.fdtable*, %struct.fdtable** %fdt, align 32
  %max_fds15 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %2, i64 0, i32 0
  %3 = load i32, i32* %max_fds15, align 8
  %cmp16 = icmp ugt i32 %3, %nr
  br i1 %cmp16, label %do.body26, label %do.end34, !prof !7

do.body26:                                        ; preds = %if.end9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/file.c\22; .popsection; .long 14472b - 14470b; .short 180; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !39
  unreachable

do.end34:                                         ; preds = %if.end9
  call fastcc void @copy_fdtable(%struct.fdtable* noundef nonnull %call, %struct.fdtable* noundef %2) #13
  %4 = ptrtoint %struct.fdtable* %call to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.fdtable** elementtype(%struct.fdtable*) %fdt, i64 %4) #14, !srcloc !40
  %fdtab = getelementptr inbounds %struct.files_struct, %struct.files_struct* %files, i64 0, i32 4
  %cmp60.not = icmp eq %struct.fdtable* %2, %fdtab
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %do.end34
  %rcu = getelementptr inbounds %struct.fdtable, %struct.fdtable* %2, i64 0, i32 5
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @free_fdtable_rcu) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %do.end34
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end63, %if.then8
  %retval.0 = phi i32 [ -24, %if.then8 ], [ 1, %if.end63 ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_fdtable(%struct.fdtable* nocapture noundef readonly %nfdt, %struct.fdtable* nocapture noundef readonly %ofdt) unnamed_addr #0 {
entry:
  %max_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %nfdt, i64 0, i32 0
  %0 = load i32, i32* %max_fds, align 8
  %max_fds1 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %ofdt, i64 0, i32 0
  %1 = load i32, i32* %max_fds1, align 8
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %do.body3, label %do.end8, !prof !7

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/file.c\22; .popsection; .long 14472b - 14470b; .short 80; .short 0; .popsection; 14471: brk 0x800", ""() #14, !srcloc !42
  unreachable

do.end8:                                          ; preds = %entry
  %conv10 = zext i32 %1 to i64
  %mul = shl nuw nsw i64 %conv10, 3
  %sub = sub i32 %0, %1
  %conv13 = zext i32 %sub to i64
  %mul14 = shl nuw nsw i64 %conv13, 3
  %fd = getelementptr inbounds %struct.fdtable, %struct.fdtable* %nfdt, i64 0, i32 1
  %2 = bitcast %struct.file*** %fd to i8**
  %3 = load i8*, i8** %2, align 8
  %fd15 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %ofdt, i64 0, i32 1
  %4 = bitcast %struct.file*** %fd15 to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i8* @memcpy(i8* noundef %3, i8* noundef %5, i64 noundef %mul) #12
  %6 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 %mul
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %mul14) #12
  %7 = load i32, i32* %max_fds1, align 8
  call fastcc void @copy_fd_bitmaps(%struct.fdtable* noundef %nfdt, %struct.fdtable* noundef %ofdt, i32 noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @free_fdtable_rcu(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -3, i32 1
  %0 = bitcast void (%struct.callback_head*)** %add.ptr to %struct.fdtable*
  call fastcc void @__free_fdtable(%struct.fdtable* noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @fd_is_open(i32 noundef %fd, %struct.fdtable* nocapture noundef readonly %fdt) unnamed_addr #6 {
entry:
  %open_fds = getelementptr inbounds %struct.fdtable, %struct.fdtable* %fdt, i64 0, i32 3
  %0 = load i64*, i64** %open_fds, align 8
  %div.i = lshr i32 %fd, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %0, i64 %idxprom.i
  %1 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %fd, 63
  %sh_prom.i = zext i32 %and.i to i64
  %2 = shl nuw i64 1, %sh_prom.i
  %3 = and i64 %1, %2
  %tobool = icmp ne i64 %3, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @ksys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef %flags) #13
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ksys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files1, align 16
  %and = and i32 %flags, -524289
  %cmp.not = icmp ne i32 %and, 0
  %cmp2 = icmp eq i32 %oldfd, %newfd
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %cleanup, label %if.end5, !prof !43

if.end5:                                          ; preds = %entry
  %conv6 = zext i32 %newfd to i64
  %call7 = call fastcc i64 @rlimit() #13
  %cmp8.not = icmp ugt i64 %call7, %conv6
  br i1 %cmp8.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end5
  %rlock.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 6, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #12
  %call12 = call fastcc i32 @expand_files(%struct.files_struct* noundef %2, i32 noundef %newfd) #13
  %call13 = call fastcc %struct.file* @files_lookup_fd_locked(%struct.files_struct* noundef %2, i32 noundef %oldfd) #13
  %tobool14.not = icmp eq %struct.file* %call13, null
  br i1 %tobool14.not, label %Ebadf, label %if.end25, !prof !7

if.end25:                                         ; preds = %if.end11
  %cmp26 = icmp slt i32 %call12, 0
  br i1 %cmp26, label %if.then35, label %if.end40, !prof !7

if.then35:                                        ; preds = %if.end25
  %cmp36 = icmp eq i32 %call12, -24
  br i1 %cmp36, label %Ebadf, label %out_unlock

if.end40:                                         ; preds = %if.end25
  %call41 = call fastcc i32 @do_dup2(%struct.files_struct* noundef %2, %struct.file* noundef nonnull %call13, i32 noundef %newfd, i32 noundef %flags) #13
  br label %cleanup

Ebadf:                                            ; preds = %if.then35, %if.end11
  br label %out_unlock

out_unlock:                                       ; preds = %if.then35, %Ebadf
  %err.0 = phi i32 [ -9, %Ebadf ], [ %call12, %if.then35 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry, %out_unlock, %if.end40
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ %call41, %if.end40 ], [ -22, %entry ], [ -9, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @files_lookup_fd_locked(%struct.files_struct* noundef %files, i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.file* @files_lookup_fd_raw(%struct.files_struct* noundef %files, i32 noundef %fd) #13
  ret %struct.file* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_dup2(i32 noundef %oldfd, i32 noundef %newfd) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %newfd, %oldfd
  br i1 %cmp, label %if.then, label %if.end8, !prof !7

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !10
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files2, align 16
  call fastcc void @__rcu_read_lock() #12
  %call4 = call fastcc %struct.file* @files_lookup_fd_rcu(%struct.files_struct* noundef %2, i32 noundef %newfd) #13
  %tobool5.not = icmp eq %struct.file* %call4, null
  %spec.select = select i1 %tobool5.not, i32 -9, i32 %newfd
  call fastcc void @rcu_read_unlock() #13
  br label %return

if.end8:                                          ; preds = %entry
  %call9 = call fastcc i32 @ksys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef 0) #13
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %retval.0.in = phi i32 [ %spec.select, %if.then ], [ %call9, %if.end8 ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_dup(i32 noundef %fildes) unnamed_addr #0 {
entry:
  %call = call %struct.file* @fget_raw(i32 noundef %fildes) #13
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @get_unused_fd_flags(i32 noundef 0) #13
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @fd_install(i32 noundef %call1, %struct.file* noundef nonnull %call) #13
  br label %if.end3

if.else:                                          ; preds = %if.then
  call void @fput(%struct.file* noundef nonnull %call) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else, %entry
  %ret.0 = phi i32 [ %call1, %if.then2 ], [ %call1, %if.else ], [ -9, %entry ]
  %conv = sext i32 %ret.0 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2157578244}
!9 = !{i64 2157584964}
!10 = !{i64 1433512}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2157615035}
!14 = !{i64 2157618779}
!15 = !{i64 2157622204}
!16 = !{i64 2157626488}
!17 = !{i64 2157630232}
!18 = !{i64 2149863578}
!19 = !{i64 2149864200}
!20 = !{!"auto-init"}
!21 = !{i64 2157698219}
!22 = !{i64 2157704034, i64 2157704072, i64 2157704089, i64 2157704123, i64 2157704145, i64 2157704171, i64 2157704189, i64 2157704347, i64 2157704388, i64 2157704410, i64 2157704456}
!23 = !{i64 4001593, i64 4001676, i64 4001900, i64 4002120, i64 4002143}
!24 = !{i64 4006295, i64 4006319}
!25 = !{i64 2151559079}
!26 = !{i64 2149622247}
!27 = !{i64 2148115032, i64 2148115065, i64 2148115118, i64 2148115177, i64 2148115211, i64 2148115266, i64 2148115295, i64 2148115315}
!28 = !{i64 2149629528}
!29 = !{i64 2149421758}
!30 = !{i64 0, i64 65}
!31 = !{i64 2148059856, i64 2148060370, i64 2148060400, i64 2148060426, i64 2148060458, i64 2148060487}
!32 = !{i64 2148029743, i64 2148030391, i64 2148030421, i64 2148030453, i64 2148030487, i64 2148030523, i64 2148030548}
!33 = !{i64 2148154048, i64 2148154080, i64 2148154124, i64 2148154171, i64 2148154197}
!34 = !{i64 2149855945}
!35 = !{i64 2149856162}
!36 = !{i64 2148133890, i64 2148133923, i64 2148133974, i64 2148134030, i64 2148134063, i64 2148134118, i64 2148134147, i64 2148134174}
!37 = !{i64 505145, i64 505163}
!38 = !{i64 2147992347}
!39 = !{i64 2157552153}
!40 = !{i64 2157555866}
!41 = !{i64 2157559261}
!42 = !{i64 2157541408}
!43 = !{!"branch_weights", i32 2002, i32 2000}
