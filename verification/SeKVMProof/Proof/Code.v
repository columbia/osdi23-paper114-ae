Require Import String.
Require Import ZArith.
Require Import List.
Require Import LayerSem.Libs.SMap.
Require Import LayerSem.IR.
Require Import LayerSem.IRSem.
Require Import LayerSem.Asm.AsmInsn.

Local Open Scope Z_scope.
Local Open Scope string_scope.

(************ Structures ************)

Definition s_struct_s2_sys_reg_desc :=
    (TStruct 24 [[(TElem "Op0" (TInt TI8) 0); (TElem "Op1" (TInt TI8) 1); (TElem "CRn" (TInt TI8) 2); (TElem "CRm" (TInt TI8) 3); (TElem "Op2" (TInt TI8) 4); (TElem "reg" (TInt TI32) 8); (TElem "val" (TInt TI64) 16)]]).

Definition s_struct_s2_host_regs :=
    (TStruct 256 [[(TElem "regs" (TArray (TInt TI64) 32) 0)]]).

Definition s_struct_kvm_cpu_context :=
    (TStruct 1760 [[(TElem "gp_regs" (TNamedStruct "struct.kvm_regs" 864) 0); (TElem "kvm_cpu_context.1" (TNamedStruct "union.anon.117" 888) 864); (TElem "__hyp_running_vcpu" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 1752)]]).

Definition s_struct_kvm_regs :=
    (TStruct 864 [[(TElem "regs" (TNamedStruct "struct.user_pt_regs" 272) 0); (TElem "sp_el1" (TInt TI64) 272); (TElem "elr_el1" (TInt TI64) 280); (TElem "spsr" (TArray (TInt TI64) 5) 288); (TElem "fp_regs" (TNamedStruct "struct.user_fpsimd_state" 528) 336)]]).

Definition s_struct_user_pt_regs :=
    (TStruct 272 [[(TElem "regs" (TArray (TInt TI64) 31) 0); (TElem "sp" (TInt TI64) 248); (TElem "pc" (TInt TI64) 256); (TElem "pstate" (TInt TI64) 264)]]).

Definition s_struct_user_fpsimd_state :=
    (TStruct 528 [[(TElem "vregs" (TArray (TInt TI128) 32) 0); (TElem "fpsr" (TInt TI32) 512); (TElem "fpcr" (TInt TI32) 516); (TElem "__reserved" (TArray (TInt TI32) 2) 520)]]).

Definition s_struct_kvm_vcpu :=
    (TStruct 9056 [[(TElem "kvm" (TPtr (TNamedStruct "struct.kvm" 8824)) 0); (TElem "preempt_notifier" (TNamedStruct "struct.preempt_notifier" 24) 8); (TElem "cpu" (TInt TI32) 32); (TElem "vcpu_id" (TInt TI32) 36); (TElem "srcu_idx" (TInt TI32) 40); (TElem "mode" (TInt TI32) 44); (TElem "requests" (TInt TI64) 48); (TElem "guest_debug" (TInt TI64) 56); (TElem "pre_pcpu" (TInt TI32) 64); (TElem "blocked_vcpu_list" (TNamedStruct "struct.list_head" 16) 72); (TElem "mutex" (TNamedStruct "struct.mutex" 32) 88); (TElem "run" (TPtr (TNamedStruct "struct.kvm_run" 2352)) 120); (TElem "guest_xcr0_loaded" (TInt TI32) 128); (TElem "wq" (TNamedStruct "struct.swait_queue_head" 24) 136); (TElem "pid" (TPtr (TNamedStruct "struct.pid" 96)) 160); (TElem "sigset_active" (TInt TI32) 168); (TElem "sigset" (TNamedStruct "struct.sigset_t" 8) 176); (TElem "stat" (TNamedStruct "struct.kvm_vcpu_stat" 80) 184); (TElem "halt_poll_ns" (TInt TI32) 264); (TElem "valid_wakeup" (TInt TI8) 268); (TElem "mmio_needed" (TInt TI32) 272); (TElem "mmio_read_completed" (TInt TI32) 276); (TElem "mmio_is_write" (TInt TI32) 280); (TElem "mmio_cur_fragment" (TInt TI32) 284); (TElem "mmio_nr_fragments" (TInt TI32) 288); (TElem "mmio_fragments" (TArray (TNamedStruct "struct.kvm_mmio_fragment" 24) 2) 296); (TElem "spin_loop" (TNamedStruct "struct.anon.116" 2) 344); (TElem "preempted" (TInt TI8) 346); (TElem "ready" (TInt TI8) 347); (TElem "arch" (TNamedStruct "struct.kvm_vcpu_arch" 8688) 352); (TElem "debugfs_dentry" (TPtr (TNamedStruct "struct.dentry" 192)) 9040)]]).

Definition s_struct_kvm :=
    (TStruct 8824 [[(TElem "mmu_lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "slots_lock" (TNamedStruct "struct.mutex" 32) 8); (TElem "mm" (TPtr (TNamedStruct "struct.mm_struct" 864)) 40); (TElem "memslots" (TArray (TPtr (TNamedStruct "struct.kvm_memslots" 21520)) 1) 48); (TElem "vcpus" (TArray (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 512) 56); (TElem "online_vcpus" (TNamedStruct "struct.atomic_t" 4) 4152); (TElem "created_vcpus" (TInt TI32) 4156); (TElem "last_boosted_vcpu" (TInt TI32) 4160); (TElem "vm_list" (TNamedStruct "struct.list_head" 16) 4168); (TElem "lock" (TNamedStruct "struct.mutex" 32) 4184); (TElem "buses" (TArray (TPtr (TNamedStruct "struct.kvm_io_bus" 8)) 4) 4216); (TElem "irqfds" (TNamedStruct "struct.anon.124" 72) 4248); (TElem "ioeventfds" (TNamedStruct "struct.list_head" 16) 4320); (TElem "stat" (TNamedStruct "struct.kvm_vm_stat" 8) 4336); (TElem "arch" (TNamedStruct "struct.kvm_arch" 368) 4344); (TElem "users_count" (TNamedStruct "struct.refcount_struct" 4) 4712); (TElem "coalesced_mmio_ring" (TPtr (TNamedStruct "struct.kvm_coalesced_mmio_ring" 8)) 4720); (TElem "ring_lock" (TNamedStruct "struct.spinlock" 4) 4728); (TElem "coalesced_zones" (TNamedStruct "struct.list_head" 16) 4736); (TElem "irq_lock" (TNamedStruct "struct.mutex" 32) 4752); (TElem "irq_routing" (TPtr (TNamedStruct "struct.kvm_irq_routing_table" 3960)) 4784); (TElem "irq_ack_notifier_list" (TNamedStruct "struct.hlist_head" 8) 4792); (TElem "mmu_notifier" (TNamedStruct "struct.mmu_notifier" 56) 4800); (TElem "mmu_notifier_seq" (TInt TI64) 4856); (TElem "mmu_notifier_count" (TInt TI64) 4864); (TElem "tlbs_dirty" (TInt TI64) 4872); (TElem "devices" (TNamedStruct "struct.list_head" 16) 4880); (TElem "manual_dirty_log_protect" (TInt TI8) 4896); (TElem "debugfs_dentry" (TPtr (TNamedStruct "struct.dentry" 192)) 4904); (TElem "debugfs_stat_data" (TPtr (TPtr (TNamedStruct "struct.kvm_stat_data" 16))) 4912); (TElem "srcu" (TNamedStruct "struct.srcu_struct" 1944) 4920); (TElem "irq_srcu" (TNamedStruct "struct.srcu_struct" 1944) 6864); (TElem "userspace_pid" (TInt TI32) 8808); (TElem "verified" (TInt TI8) 8812); (TElem "hypsec_lock" (TNamedStruct "struct.spinlock" 4) 8816)]]).

Definition s_struct_spinlock :=
    (TStruct 4 [[(TElem "spinlock.0" (TNamedStruct "union.anon.0" 4) 0)]]).

Definition s_struct_raw_spinlock :=
    (TStruct 4 [[(TElem "raw_lock" (TNamedStruct "struct.qspinlock" 4) 0)]]).

Definition s_struct_qspinlock :=
    (TStruct 4 [[(TElem "qspinlock.0" (TNamedStruct "union.anon.1" 4) 0)]]).

Definition s_struct_mutex :=
    (TStruct 32 [[(TElem "owner" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "wait_lock" (TNamedStruct "struct.spinlock" 4) 8); (TElem "osq" (TNamedStruct "struct.optimistic_spin_queue" 4) 12); (TElem "wait_list" (TNamedStruct "struct.list_head" 16) 16)]]).

Definition s_struct_optimistic_spin_queue :=
    (TStruct 4 [[(TElem "tail" (TNamedStruct "struct.atomic_t" 4) 0)]]).

Definition s_struct_list_head :=
    (TStruct 16 [[(TElem "next" (TPtr (TNamedStruct "struct.list_head" 16)) 0); (TElem "prev" (TPtr (TNamedStruct "struct.list_head" 16)) 8)]]).

Definition s_struct_mm_struct :=
    (TStruct 864 [[(TElem "mm_struct.0" (TNamedStruct "struct.anon.3" 864) 0); (TElem "cpu_bitmap" (TArray (TInt TI64) 0) 864)]]).

Definition s_struct_vm_area_struct :=
    (TStruct 192 [[(TElem "vm_start" (TInt TI64) 0); (TElem "vm_end" (TInt TI64) 8); (TElem "vm_next" (TPtr (TNamedStruct "struct.vm_area_struct" 192)) 16); (TElem "vm_prev" (TPtr (TNamedStruct "struct.vm_area_struct" 192)) 24); (TElem "vm_rb" (TNamedStruct "struct.rb_node" 24) 32); (TElem "rb_subtree_gap" (TInt TI64) 56); (TElem "vm_mm" (TPtr (TNamedStruct "struct.mm_struct" 864)) 64); (TElem "vm_page_prot" (TNamedStruct "struct.pgprot_t" 8) 72); (TElem "vm_flags" (TInt TI64) 80); (TElem "shared" (TNamedStruct "struct.anon.4" 32) 88); (TElem "anon_vma_chain" (TNamedStruct "struct.list_head" 16) 120); (TElem "anon_vma" (TPtr (TNamedStruct "struct.anon_vma" 0)) 136); (TElem "vm_ops" (TPtr (TNamedStruct "struct.vm_operations_struct" 104)) 144); (TElem "vm_pgoff" (TInt TI64) 152); (TElem "vm_file" (TPtr (TNamedStruct "struct.file" 248)) 160); (TElem "vm_prfile" (TPtr (TNamedStruct "struct.file" 248)) 168); (TElem "vm_private_data" (TPtr (TInt TI8)) 176); (TElem "swap_readahead_info" (TNamedStruct "struct.atomic64_t" 8) 184); (TElem "vm_userfaultfd_ctx" (TNamedStruct "struct.vm_userfaultfd_ctx" 0) 192)]]).

Definition s_struct_rb_node :=
    (TStruct 24 [[(TElem "__rb_parent_color" (TInt TI64) 0); (TElem "rb_right" (TPtr (TNamedStruct "struct.rb_node" 24)) 8); (TElem "rb_left" (TPtr (TNamedStruct "struct.rb_node" 24)) 16)]]).

Definition s_struct_anon_vma :=
    (TStruct 0 [[ ]]).

Definition s_struct_vm_operations_struct :=
    (TStruct 104 [[(TElem "open" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 0); (TElem "close" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 8); (TElem "split" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_area_struct" 192)); (TInt TI64)]])) 16); (TElem "mremap" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 24); (TElem "fault" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_fault" 104))]])) 32); (TElem "huge_fault" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_fault" 104)); (TInt TI32)]])) 40); (TElem "map_pages" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.vm_fault" 104)); (TInt TI64); (TInt TI64)]])) 48); (TElem "pagesize" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 56); (TElem "page_mkwrite" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_fault" 104))]])) 64); (TElem "pfn_mkwrite" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_fault" 104))]])) 72); (TElem "access" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.vm_area_struct" 192)); (TInt TI64); (TPtr (TInt TI8)); (TInt TI32); (TInt TI32)]])) 80); (TElem "name" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 88); (TElem "find_special_page" (TPtr (TFunction (TPtr (TNamedStruct "struct.page" 64)) [[(TPtr (TNamedStruct "struct.vm_area_struct" 192)); (TInt TI64)]])) 96)]]).

Definition s_struct_vm_fault :=
    (TStruct 104 [[(TElem "vma" (TPtr (TNamedStruct "struct.vm_area_struct" 192)) 0); (TElem "flags" (TInt TI32) 8); (TElem "gfp_mask" (TInt TI32) 12); (TElem "pgoff" (TInt TI64) 16); (TElem "address" (TInt TI64) 24); (TElem "pmd" (TPtr (TNamedStruct "struct.pmd_t" 0)) 32); (TElem "pud" (TPtr (TNamedStruct "struct.pud_t" 0)) 40); (TElem "orig_pte" (TNamedStruct "struct.pte_t" 8) 48); (TElem "cow_page" (TPtr (TNamedStruct "struct.page" 64)) 56); (TElem "memcg" (TPtr (TNamedStruct "struct.mem_cgroup" 0)) 64); (TElem "page" (TPtr (TNamedStruct "struct.page" 64)) 72); (TElem "pte" (TPtr (TNamedStruct "struct.pte_t" 8)) 80); (TElem "ptl" (TPtr (TNamedStruct "struct.spinlock" 4)) 88); (TElem "prealloc_pte" (TPtr (TNamedStruct "struct.page" 64)) 96)]]).

Definition s_struct_page :=
    (TStruct 64 [[(TElem "flags" (TInt TI64) 0); (TElem "page.1" (TNamedStruct "union.anon.5" 40) 8); (TElem "page.2" (TNamedStruct "union.anon.91" 4) 48); (TElem "_refcount" (TNamedStruct "struct.atomic_t" 4) 52); (TElem "mem_cgroup" (TPtr (TNamedStruct "struct.mem_cgroup" 0)) 56)]]).

Definition s_struct_address_space :=
    (TStruct 160 [[(TElem "host" (TPtr (TNamedStruct "struct.inode" 584)) 0); (TElem "i_pages" (TNamedStruct "struct.xarray" 16) 8); (TElem "gfp_mask" (TInt TI32) 24); (TElem "i_mmap_writable" (TNamedStruct "struct.atomic_t" 4) 28); (TElem "i_mmap" (TNamedStruct "struct.rb_root_cached" 16) 32); (TElem "i_mmap_rwsem" (TNamedStruct "struct.rw_semaphore" 40) 48); (TElem "nrpages" (TInt TI64) 88); (TElem "nrexceptional" (TInt TI64) 96); (TElem "writeback_index" (TInt TI64) 104); (TElem "a_ops" (TPtr (TNamedStruct "struct.address_space_operations" 168)) 112); (TElem "flags" (TInt TI64) 120); (TElem "wb_err" (TInt TI32) 128); (TElem "private_lock" (TNamedStruct "struct.spinlock" 4) 132); (TElem "private_list" (TNamedStruct "struct.list_head" 16) 136); (TElem "private_data" (TPtr (TInt TI8)) 152)]]).

Definition s_struct_inode :=
    (TStruct 584 [[(TElem "i_mode" (TInt TI16) 0); (TElem "i_opflags" (TInt TI16) 2); (TElem "i_uid" (TNamedStruct "struct.kuid_t" 4) 4); (TElem "i_gid" (TNamedStruct "struct.kgid_t" 4) 8); (TElem "i_flags" (TInt TI32) 12); (TElem "i_acl" (TPtr (TNamedStruct "struct.posix_acl" 0)) 16); (TElem "i_default_acl" (TPtr (TNamedStruct "struct.posix_acl" 0)) 24); (TElem "i_op" (TPtr (TNamedStruct "struct.inode_operations" 0)) 32); (TElem "i_sb" (TPtr (TNamedStruct "struct.super_block" 0)) 40); (TElem "i_mapping" (TPtr (TNamedStruct "struct.address_space" 160)) 48); (TElem "i_ino" (TInt TI64) 56); (TElem "inode.11" (TNamedStruct "union.anon.128" 4) 64); (TElem "i_rdev" (TInt TI32) 68); (TElem "i_size" (TInt TI64) 72); (TElem "i_atime" (TNamedStruct "struct.timespec64" 16) 80); (TElem "i_mtime" (TNamedStruct "struct.timespec64" 16) 96); (TElem "i_ctime" (TNamedStruct "struct.timespec64" 16) 112); (TElem "i_lock" (TNamedStruct "struct.spinlock" 4) 128); (TElem "i_bytes" (TInt TI16) 132); (TElem "i_blkbits" (TInt TI8) 134); (TElem "i_write_hint" (TInt TI8) 135); (TElem "i_blocks" (TInt TI64) 136); (TElem "i_state" (TInt TI64) 144); (TElem "i_rwsem" (TNamedStruct "struct.rw_semaphore" 40) 152); (TElem "dirtied_when" (TInt TI64) 192); (TElem "dirtied_time_when" (TInt TI64) 200); (TElem "i_hash" (TNamedStruct "struct.hlist_node" 16) 208); (TElem "i_io_list" (TNamedStruct "struct.list_head" 16) 224); (TElem "i_wb" (TPtr (TNamedStruct "struct.bdi_writeback" 0)) 240); (TElem "i_wb_frn_winner" (TInt TI32) 248); (TElem "i_wb_frn_avg_time" (TInt TI16) 252); (TElem "i_wb_frn_history" (TInt TI16) 254); (TElem "i_lru" (TNamedStruct "struct.list_head" 16) 256); (TElem "i_sb_list" (TNamedStruct "struct.list_head" 16) 272); (TElem "i_wb_list" (TNamedStruct "struct.list_head" 16) 288); (TElem "inode.35" (TNamedStruct "union.anon.129" 16) 304); (TElem "i_version" (TNamedStruct "struct.atomic64_t" 8) 320); (TElem "i_sequence" (TNamedStruct "struct.atomic64_t" 8) 328); (TElem "i_count" (TNamedStruct "struct.atomic_t" 4) 336); (TElem "i_dio_count" (TNamedStruct "struct.atomic_t" 4) 340); (TElem "i_writecount" (TNamedStruct "struct.atomic_t" 4) 344); (TElem "i_readcount" (TNamedStruct "struct.atomic_t" 4) 348); (TElem "inode.42" (TNamedStruct "union.anon.130" 8) 352); (TElem "i_flctx" (TPtr (TNamedStruct "struct.file_lock_context" 56)) 360); (TElem "i_data" (TNamedStruct "struct.address_space" 160) 368); (TElem "i_devices" (TNamedStruct "struct.list_head" 16) 528); (TElem "inode.46" (TNamedStruct "union.anon.131" 8) 544); (TElem "i_generation" (TInt TI32) 552); (TElem "i_fsnotify_mask" (TInt TI32) 556); (TElem "i_fsnotify_marks" (TPtr (TNamedStruct "struct.fsnotify_mark_connector" 0)) 560); (TElem "i_crypt_info" (TPtr (TNamedStruct "struct.fscrypt_info" 0)) 568); (TElem "i_private" (TPtr (TInt TI8)) 576)]]).

Definition s_struct_posix_acl :=
    (TStruct 0 [[ ]]).

Definition s_struct_dentry :=
    (TStruct 192 [[(TElem "d_flags" (TInt TI32) 0); (TElem "d_seq" (TNamedStruct "struct.seqcount" 4) 4); (TElem "d_hash" (TNamedStruct "struct.hlist_bl_node" 16) 8); (TElem "d_parent" (TPtr (TNamedStruct "struct.dentry" 192)) 24); (TElem "d_name" (TNamedStruct "struct.qstr" 16) 32); (TElem "d_inode" (TPtr (TNamedStruct "struct.inode" 584)) 48); (TElem "d_iname" (TArray (TInt TI8) 32) 56); (TElem "d_lockref" (TNamedStruct "struct.lockref" 8) 88); (TElem "d_op" (TPtr (TNamedStruct "struct.dentry_operations" 0)) 96); (TElem "d_sb" (TPtr (TNamedStruct "struct.super_block" 0)) 104); (TElem "d_time" (TInt TI64) 112); (TElem "d_fsdata" (TPtr (TInt TI8)) 120); (TElem "dentry.12" (TNamedStruct "union.anon.73" 16) 128); (TElem "d_child" (TNamedStruct "struct.list_head" 16) 144); (TElem "d_subdirs" (TNamedStruct "struct.list_head" 16) 160); (TElem "d_u" (TNamedStruct "union.anon.74" 16) 176)]]).

Definition s_struct_seqcount :=
    (TStruct 4 [[(TElem "sequence" (TInt TI32) 0)]]).

Definition s_struct_hlist_bl_node :=
    (TStruct 16 [[(TElem "next" (TPtr (TNamedStruct "struct.hlist_bl_node" 16)) 0); (TElem "pprev" (TPtr (TPtr (TNamedStruct "struct.hlist_bl_node" 16))) 8)]]).

Definition s_struct_qstr :=
    (TStruct 16 [[(TElem "qstr.0" (TNamedStruct "union.anon.8" 8) 0); (TElem "name" (TPtr (TInt TI8)) 8)]]).

Definition s_struct_lockref :=
    (TStruct 8 [[(TElem "lockref.0" (TNamedStruct "union.anon.10" 8) 0)]]).

Definition s_struct_vfsmount :=
    (TStruct 0 [[ ]]).

Definition s_struct_path :=
    (TStruct 16 [[(TElem "mnt" (TPtr (TNamedStruct "struct.vfsmount" 0)) 0); (TElem "dentry" (TPtr (TNamedStruct "struct.dentry" 192)) 8)]]).

Definition s_struct_file_system_type :=
    (TStruct 72 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "fs_flags" (TInt TI32) 8); (TElem "init_fs_context" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.fs_context" 0))]])) 16); (TElem "parameters" (TPtr (TNamedStruct "struct.fs_parameter_description" 0)) 24); (TElem "mount" (TPtr (TFunction (TPtr (TNamedStruct "struct.dentry" 192)) [[(TPtr (TNamedStruct "struct.file_system_type" 72)); (TInt TI32); (TPtr (TInt TI8)); (TPtr (TInt TI8))]])) 32); (TElem "kill_sb" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 40); (TElem "owner" (TPtr (TNamedStruct "struct.module" 0)) 48); (TElem "next" (TPtr (TNamedStruct "struct.file_system_type" 72)) 56); (TElem "fs_supers" (TNamedStruct "struct.hlist_head" 8) 64); (TElem "s_lock_key" (TNamedStruct "struct.lock_class_key" 0) 72); (TElem "s_umount_key" (TNamedStruct "struct.lock_class_key" 0) 72); (TElem "s_vfs_rename_key" (TNamedStruct "struct.lock_class_key" 0) 72); (TElem "s_writers_key" (TArray (TNamedStruct "struct.lock_class_key" 0) 3) 72); (TElem "i_lock_key" (TNamedStruct "struct.lock_class_key" 0) 72); (TElem "i_mutex_key" (TNamedStruct "struct.lock_class_key" 0) 72); (TElem "i_mutex_dir_key" (TNamedStruct "struct.lock_class_key" 0) 72)]]).

Definition s_struct_fs_context :=
    (TStruct 0 [[ ]]).

Definition s_struct_fs_parameter_description :=
    (TStruct 0 [[ ]]).

Definition s_struct_module_kobject :=
    (TStruct 96 [[(TElem "kobj" (TNamedStruct "struct.kobject" 0) 0); (TElem "mod" (TPtr (TNamedStruct "struct.module" 0)) 64); (TElem "drivers_dir" (TPtr (TNamedStruct "struct.kobject" 0)) 72); (TElem "mp" (TPtr (TNamedStruct "struct.module_param_attrs" 0)) 80); (TElem "kobj_completion" (TPtr (TNamedStruct "struct.completion" 32)) 88)]]).

Definition s_struct_kset :=
    (TStruct 96 [[(TElem "list" (TNamedStruct "struct.list_head" 16) 0); (TElem "list_lock" (TNamedStruct "struct.spinlock" 4) 16); (TElem "kobj" (TNamedStruct "struct.kobject" 0) 24); (TElem "uevent_ops" (TPtr (TNamedStruct "struct.kset_uevent_ops" 24)) 88)]]).

Definition s_struct_kset_uevent_ops :=
    (TStruct 24 [[(TElem "filter" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kset" 96)); (TPtr (TNamedStruct "struct.kobject" 0))]])) 0); (TElem "name" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.kset" 96)); (TPtr (TNamedStruct "struct.kobject" 0))]])) 8); (TElem "uevent" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kset" 96)); (TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.kobj_uevent_env" 2336))]])) 16)]]).

Definition s_struct_kobj_uevent_env :=
    (TStruct 2336 [[(TElem "argv" (TArray (TPtr (TInt TI8)) 3) 0); (TElem "envp" (TArray (TPtr (TInt TI8)) 32) 24); (TElem "envp_idx" (TInt TI32) 280); (TElem "buf" (TArray (TInt TI8) 2048) 284); (TElem "buflen" (TInt TI32) 2332)]]).

Definition s_struct_kobj_type :=
    (TStruct 56 [[(TElem "release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.kobject" 0))]])) 0); (TElem "sysfs_ops" (TPtr (TNamedStruct "struct.sysfs_ops" 16)) 8); (TElem "default_attrs" (TPtr (TPtr (TNamedStruct "struct.attribute" 16))) 16); (TElem "default_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 24); (TElem "child_ns_type" (TPtr (TFunction (TPtr (TNamedStruct "struct.kobj_ns_type_operations" 48)) [[(TPtr (TNamedStruct "struct.kobject" 0))]])) 32); (TElem "namespace" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.kobject" 0))]])) 40); (TElem "get_ownership" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.kuid_t" 4)); (TPtr (TNamedStruct "struct.kgid_t" 4))]])) 48)]]).

Definition s_struct_sysfs_ops :=
    (TStruct 16 [[(TElem "show" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.attribute" 16)); (TPtr (TInt TI8))]])) 0); (TElem "store" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.attribute" 16)); (TPtr (TInt TI8)); (TInt TI64)]])) 8)]]).

Definition s_struct_attribute :=
    (TStruct 16 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "mode" (TInt TI16) 8)]]).

Definition s_struct_attribute_group :=
    (TStruct 40 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "is_visible" (TPtr (TFunction (TInt TI16) [[(TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.attribute" 16)); (TInt TI32)]])) 8); (TElem "is_bin_visible" (TPtr (TFunction (TInt TI16) [[(TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.bin_attribute" 56)); (TInt TI32)]])) 16); (TElem "attrs" (TPtr (TPtr (TNamedStruct "struct.attribute" 16))) 24); (TElem "bin_attrs" (TPtr (TPtr (TNamedStruct "struct.bin_attribute" 56))) 32)]]).

Definition s_struct_bin_attribute :=
    (TStruct 56 [[(TElem "attr" (TNamedStruct "struct.attribute" 16) 0); (TElem "size" (TInt TI64) 16); (TElem "private" (TPtr (TInt TI8)) 24); (TElem "read" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.bin_attribute" 56)); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 32); (TElem "write" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.bin_attribute" 56)); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 40); (TElem "mmap" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.kobject" 0)); (TPtr (TNamedStruct "struct.bin_attribute" 56)); (TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 48)]]).

Definition s_struct_file :=
    (TStruct 248 [[(TElem "f_u" (TNamedStruct "union.anon.7" 16) 0); (TElem "f_path" (TNamedStruct "struct.path" 16) 16); (TElem "f_inode" (TPtr (TNamedStruct "struct.inode" 584)) 32); (TElem "f_op" (TPtr (TNamedStruct "struct.file_operations" 264)) 40); (TElem "f_lock" (TNamedStruct "struct.spinlock" 4) 48); (TElem "f_write_hint" (TInt TI32) 52); (TElem "f_count" (TNamedStruct "struct.atomic64_t" 8) 56); (TElem "f_flags" (TInt TI32) 64); (TElem "f_mode" (TInt TI32) 68); (TElem "f_pos_lock" (TNamedStruct "struct.mutex" 32) 72); (TElem "f_pos" (TInt TI64) 104); (TElem "f_owner" (TNamedStruct "struct.fown_struct" 32) 112); (TElem "f_cred" (TPtr (TNamedStruct "struct.cred" 160)) 144); (TElem "f_ra" (TNamedStruct "struct.file_ra_state" 32) 152); (TElem "f_version" (TInt TI64) 184); (TElem "private_data" (TPtr (TInt TI8)) 192); (TElem "f_ep_links" (TNamedStruct "struct.list_head" 16) 200); (TElem "f_tfile_llink" (TNamedStruct "struct.list_head" 16) 216); (TElem "f_mapping" (TPtr (TNamedStruct "struct.address_space" 160)) 232); (TElem "f_wb_err" (TInt TI32) 240)]]).

Definition s_struct_llist_node :=
    (TStruct 8 [[(TElem "next" (TPtr (TNamedStruct "struct.llist_node" 8)) 0)]]).

Definition s_struct_callback_head :=
    (TStruct 16 [[(TElem "next" (TPtr (TNamedStruct "struct.callback_head" 16)) 0); (TElem "func" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.callback_head" 16))]])) 8)]]).

Definition s_struct_file_operations :=
    (TStruct 264 [[(TElem "owner" (TPtr (TNamedStruct "struct.module" 0)) 0); (TElem "llseek" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI32)]])) 8); (TElem "read" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TInt TI8)); (TInt TI64); (TPtr (TInt TI64))]])) 16); (TElem "write" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TInt TI8)); (TInt TI64); (TPtr (TInt TI64))]])) 24); (TElem "read_iter" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kiocb" 48)); (TPtr (TNamedStruct "struct.iov_iter" 40))]])) 32); (TElem "write_iter" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kiocb" 48)); (TPtr (TNamedStruct "struct.iov_iter" 40))]])) 40); (TElem "iopoll" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kiocb" 48)); TBool]])) 48); (TElem "iterate" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.dir_context" 16))]])) 56); (TElem "iterate_shared" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.dir_context" 16))]])) 64); (TElem "poll" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.poll_table_struct" 0))]])) 72); (TElem "unlocked_ioctl" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI32); (TInt TI64)]])) 80); (TElem "compat_ioctl" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI32); (TInt TI64)]])) 88); (TElem "mmap" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 96); (TElem "mmap_supported_flags" (TInt TI64) 104); (TElem "open" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.file" 248))]])) 112); (TElem "flush" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TInt TI8))]])) 120); (TElem "release" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.file" 248))]])) 128); (TElem "fsync" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI64); (TInt TI32)]])) 136); (TElem "fasync" (TPtr (TFunction (TInt TI32) [[(TInt TI32); (TPtr (TNamedStruct "struct.file" 248)); (TInt TI32)]])) 144); (TElem "lock" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI32); (TPtr (TNamedStruct "struct.file_lock" 216))]])) 152); (TElem "sendpage" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.page" 64)); (TInt TI32); (TInt TI64); (TPtr (TInt TI64)); (TInt TI32)]])) 160); (TElem "get_unmapped_area" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI64); (TInt TI64); (TInt TI64)]])) 168); (TElem "check_flags" (TPtr (TFunction (TInt TI32) [[(TInt TI32)]])) 176); (TElem "setfl" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64)]])) 184); (TElem "flock" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI32); (TPtr (TNamedStruct "struct.file_lock" 216))]])) 192); (TElem "splice_write" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.pipe_inode_info" 0)); (TPtr (TNamedStruct "struct.file" 248)); (TPtr (TInt TI64)); (TInt TI64); (TInt TI32)]])) 200); (TElem "splice_read" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TInt TI64)); (TPtr (TNamedStruct "struct.pipe_inode_info" 0)); (TInt TI64); (TInt TI32)]])) 208); (TElem "setlease" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TPtr (TPtr (TNamedStruct "struct.file_lock" 216))); (TPtr (TPtr (TInt TI8)))]])) 216); (TElem "fallocate" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI32); (TInt TI64); (TInt TI64)]])) 224); (TElem "show_fdinfo" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.file" 248))]])) 232); (TElem "copy_file_range" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI64); (TInt TI32)]])) 240); (TElem "remap_file_range" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI64); (TInt TI32)]])) 248); (TElem "fadvise" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI64); (TInt TI32)]])) 256)]]).

Definition s_struct_kiocb :=
    (TStruct 48 [[(TElem "ki_filp" (TPtr (TNamedStruct "struct.file" 248)) 0); (TElem "ki_pos" (TInt TI64) 8); (TElem "ki_complete" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.kiocb" 48)); (TInt TI64); (TInt TI64)]])) 16); (TElem "private" (TPtr (TInt TI8)) 24); (TElem "ki_flags" (TInt TI32) 32); (TElem "ki_hint" (TInt TI16) 36); (TElem "ki_ioprio" (TInt TI16) 38); (TElem "ki_cookie" (TInt TI32) 40)]]).

Definition s_struct_iov_iter :=
    (TStruct 40 [[(TElem "type" (TInt TI32) 0); (TElem "iov_offset" (TInt TI64) 8); (TElem "count" (TInt TI64) 16); (TElem "iov_iter.3" (TNamedStruct "union.anon.75" 8) 24); (TElem "iov_iter.4" (TNamedStruct "union.anon.76" 8) 32)]]).

Definition s_struct_iovec :=
    (TStruct 16 [[(TElem "iov_base" (TPtr (TInt TI8)) 0); (TElem "iov_len" (TInt TI64) 8)]]).

Definition s_struct_pipe_inode_info :=
    (TStruct 0 [[ ]]).

Definition s_struct_dir_context :=
    (TStruct 16 [[(TElem "actor" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dir_context" 16)); (TPtr (TInt TI8)); (TInt TI32); (TInt TI64); (TInt TI64); (TInt TI32)]])) 0); (TElem "pos" (TInt TI64) 8)]]).

Definition s_struct_poll_table_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_file_lock :=
    (TStruct 216 [[(TElem "fl_blocker" (TPtr (TNamedStruct "struct.file_lock" 216)) 0); (TElem "fl_list" (TNamedStruct "struct.list_head" 16) 8); (TElem "fl_link" (TNamedStruct "struct.hlist_node" 16) 24); (TElem "fl_blocked_requests" (TNamedStruct "struct.list_head" 16) 40); (TElem "fl_blocked_member" (TNamedStruct "struct.list_head" 16) 56); (TElem "fl_owner" (TPtr (TInt TI8)) 72); (TElem "fl_flags" (TInt TI32) 80); (TElem "fl_type" (TInt TI8) 84); (TElem "fl_pid" (TInt TI32) 88); (TElem "fl_link_cpu" (TInt TI32) 92); (TElem "fl_wait" (TNamedStruct "struct.wait_queue_head" 24) 96); (TElem "fl_file" (TPtr (TNamedStruct "struct.file" 248)) 120); (TElem "fl_start" (TInt TI64) 128); (TElem "fl_end" (TInt TI64) 136); (TElem "fl_fasync" (TPtr (TNamedStruct "struct.fasync_struct" 48)) 144); (TElem "fl_break_time" (TInt TI64) 152); (TElem "fl_downgrade_time" (TInt TI64) 160); (TElem "fl_ops" (TPtr (TNamedStruct "struct.file_lock_operations" 16)) 168); (TElem "fl_lmops" (TPtr (TNamedStruct "struct.lock_manager_operations" 56)) 176); (TElem "fl_u" (TNamedStruct "union.anon.78" 32) 184)]]).

Definition s_struct_hlist_node :=
    (TStruct 16 [[(TElem "next" (TPtr (TNamedStruct "struct.hlist_node" 16)) 0); (TElem "pprev" (TPtr (TPtr (TNamedStruct "struct.hlist_node" 16))) 8)]]).

Definition s_struct_wait_queue_head :=
    (TStruct 24 [[(TElem "lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "head" (TNamedStruct "struct.list_head" 16) 8)]]).

Definition s_struct_fasync_struct :=
    (TStruct 48 [[(TElem "fa_lock" (TNamedStruct "struct.rwlock_t" 8) 0); (TElem "magic" (TInt TI32) 8); (TElem "fa_fd" (TInt TI32) 12); (TElem "fa_next" (TPtr (TNamedStruct "struct.fasync_struct" 48)) 16); (TElem "fa_file" (TPtr (TNamedStruct "struct.file" 248)) 24); (TElem "fa_rcu" (TNamedStruct "struct.callback_head" 16) 32)]]).

Definition s_struct_qrwlock :=
    (TStruct 8 [[(TElem "qrwlock.0" (TNamedStruct "union.anon.62" 4) 0); (TElem "wait_lock" (TNamedStruct "struct.qspinlock" 4) 4)]]).

Definition s_struct_file_lock_operations :=
    (TStruct 16 [[(TElem "fl_copy_lock" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.file_lock" 216)); (TPtr (TNamedStruct "struct.file_lock" 216))]])) 0); (TElem "fl_release_private" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.file_lock" 216))]])) 8)]]).

Definition s_struct_lock_manager_operations :=
    (TStruct 56 [[(TElem "lm_get_owner" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TInt TI8))]])) 0); (TElem "lm_put_owner" (TPtr (TFunction TVoid [[(TPtr (TInt TI8))]])) 8); (TElem "lm_notify" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.file_lock" 216))]])) 16); (TElem "lm_grant" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file_lock" 216)); (TInt TI32)]])) 24); (TElem "lm_break" (TPtr (TFunction TBool [[(TPtr (TNamedStruct "struct.file_lock" 216))]])) 32); (TElem "lm_change" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file_lock" 216)); (TInt TI32); (TPtr (TNamedStruct "struct.list_head" 16))]])) 40); (TElem "lm_setup" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.file_lock" 216)); (TPtr (TPtr (TInt TI8)))]])) 48)]]).

Definition s_struct_nfs_lock_info :=
    (TStruct 32 [[(TElem "state" (TInt TI32) 0); (TElem "owner" (TPtr (TNamedStruct "struct.nlm_lockowner" 0)) 8); (TElem "list" (TNamedStruct "struct.list_head" 16) 16)]]).

Definition s_struct_nlm_lockowner :=
    (TStruct 0 [[ ]]).

Definition s_struct_seq_file :=
    (TStruct 128 [[(TElem "buf" (TPtr (TInt TI8)) 0); (TElem "size" (TInt TI64) 8); (TElem "from" (TInt TI64) 16); (TElem "count" (TInt TI64) 24); (TElem "pad_until" (TInt TI64) 32); (TElem "index" (TInt TI64) 40); (TElem "read_pos" (TInt TI64) 48); (TElem "version" (TInt TI64) 56); (TElem "lock" (TNamedStruct "struct.mutex" 32) 64); (TElem "op" (TPtr (TNamedStruct "struct.seq_operations" 32)) 96); (TElem "poll_event" (TInt TI32) 104); (TElem "file" (TPtr (TNamedStruct "struct.file" 248)) 112); (TElem "private" (TPtr (TInt TI8)) 120)]]).

Definition s_struct_seq_operations :=
    (TStruct 32 [[(TElem "start" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI64))]])) 0); (TElem "stop" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8))]])) 8); (TElem "next" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8)); (TPtr (TInt TI64))]])) 16); (TElem "show" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8))]])) 24)]]).

Definition s_struct_fown_struct :=
    (TStruct 32 [[(TElem "lock" (TNamedStruct "struct.rwlock_t" 8) 0); (TElem "pid" (TPtr (TNamedStruct "struct.pid" 96)) 8); (TElem "pid_type" (TInt TI32) 16); (TElem "uid" (TNamedStruct "struct.kuid_t" 4) 20); (TElem "euid" (TNamedStruct "struct.kuid_t" 4) 24); (TElem "signum" (TInt TI32) 28)]]).

Definition s_struct_pid :=
    (TStruct 96 [[(TElem "count" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "level" (TInt TI32) 4); (TElem "tasks" (TArray (TNamedStruct "struct.hlist_head" 8) 4) 8); (TElem "wait_pidfd" (TNamedStruct "struct.wait_queue_head" 24) 40); (TElem "rcu" (TNamedStruct "struct.callback_head" 16) 64); (TElem "numbers" (TArray (TNamedStruct "struct.upid" 16) 1) 80)]]).

Definition s_struct_refcount_struct :=
    (TStruct 4 [[(TElem "refs" (TNamedStruct "struct.atomic_t" 4) 0)]]).

Definition s_struct_hlist_head :=
    (TStruct 8 [[(TElem "first" (TPtr (TNamedStruct "struct.hlist_node" 16)) 0)]]).

Definition s_struct_upid :=
    (TStruct 16 [[(TElem "nr" (TInt TI32) 0); (TElem "ns" (TPtr (TNamedStruct "struct.pid_namespace" 208)) 8)]]).

Definition s_struct_pid_namespace :=
    (TStruct 208 [[(TElem "kref" (TNamedStruct "struct.kref" 4) 0); (TElem "idr" (TNamedStruct "struct.idr" 24) 8); (TElem "rcu" (TNamedStruct "struct.callback_head" 16) 32); (TElem "pid_allocated" (TInt TI32) 48); (TElem "child_reaper" (TPtr (TNamedStruct "struct.task_struct" 0)) 56); (TElem "pid_cachep" (TPtr (TNamedStruct "struct.kmem_cache" 0)) 64); (TElem "level" (TInt TI32) 72); (TElem "parent" (TPtr (TNamedStruct "struct.pid_namespace" 208)) 80); (TElem "proc_mnt" (TPtr (TNamedStruct "struct.vfsmount" 0)) 88); (TElem "proc_self" (TPtr (TNamedStruct "struct.dentry" 192)) 96); (TElem "proc_thread_self" (TPtr (TNamedStruct "struct.dentry" 192)) 104); (TElem "bacct" (TPtr (TNamedStruct "struct.fs_pin" 0)) 112); (TElem "user_ns" (TPtr (TNamedStruct "struct.user_namespace" 528)) 120); (TElem "ucounts" (TPtr (TNamedStruct "struct.ucounts" 72)) 128); (TElem "proc_work" (TNamedStruct "struct.work_struct" 32) 136); (TElem "pid_gid" (TNamedStruct "struct.kgid_t" 4) 168); (TElem "hide_pid" (TInt TI32) 172); (TElem "reboot" (TInt TI32) 176); (TElem "ns" (TNamedStruct "struct.ns_common" 24) 184)]]).

Definition s_struct_kref :=
    (TStruct 4 [[(TElem "refcount" (TNamedStruct "struct.refcount_struct" 4) 0)]]).

Definition s_struct_idr :=
    (TStruct 24 [[(TElem "idr_rt" (TNamedStruct "struct.xarray" 16) 0); (TElem "idr_base" (TInt TI32) 16); (TElem "idr_next" (TInt TI32) 20)]]).

Definition s_struct_xarray :=
    (TStruct 16 [[(TElem "xa_lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "xa_flags" (TInt TI32) 4); (TElem "xa_head" (TPtr (TInt TI8)) 8)]]).

Definition s_struct_thread_info :=
    (TStruct 24 [[(TElem "flags" (TInt TI64) 0); (TElem "addr_limit" (TInt TI64) 8); (TElem "thread_info.2" (TNamedStruct "union.anon.25" 8) 16)]]).

Definition s_struct_sched_class :=
    (TStruct 0 [[ ]]).

Definition s_struct_load_weight :=
    (TStruct 16 [[(TElem "weight" (TInt TI64) 0); (TElem "inv_weight" (TInt TI32) 8)]]).

Definition s_struct_sched_statistics :=
    (TStruct 216 [[(TElem "wait_start" (TInt TI64) 0); (TElem "wait_max" (TInt TI64) 8); (TElem "wait_count" (TInt TI64) 16); (TElem "wait_sum" (TInt TI64) 24); (TElem "iowait_count" (TInt TI64) 32); (TElem "iowait_sum" (TInt TI64) 40); (TElem "sleep_start" (TInt TI64) 48); (TElem "sleep_max" (TInt TI64) 56); (TElem "sum_sleep_runtime" (TInt TI64) 64); (TElem "block_start" (TInt TI64) 72); (TElem "block_max" (TInt TI64) 80); (TElem "exec_max" (TInt TI64) 88); (TElem "slice_max" (TInt TI64) 96); (TElem "nr_migrations_cold" (TInt TI64) 104); (TElem "nr_failed_migrations_affine" (TInt TI64) 112); (TElem "nr_failed_migrations_running" (TInt TI64) 120); (TElem "nr_failed_migrations_hot" (TInt TI64) 128); (TElem "nr_forced_migrations" (TInt TI64) 136); (TElem "nr_wakeups" (TInt TI64) 144); (TElem "nr_wakeups_sync" (TInt TI64) 152); (TElem "nr_wakeups_migrate" (TInt TI64) 160); (TElem "nr_wakeups_local" (TInt TI64) 168); (TElem "nr_wakeups_remote" (TInt TI64) 176); (TElem "nr_wakeups_affine" (TInt TI64) 184); (TElem "nr_wakeups_affine_attempts" (TInt TI64) 192); (TElem "nr_wakeups_passive" (TInt TI64) 200); (TElem "nr_wakeups_idle" (TInt TI64) 208)]]).

Definition s_struct_cfs_rq :=
    (TStruct 0 [[ ]]).

Definition s_struct_sched_avg :=
    (TStruct 64 [[(TElem "last_update_time" (TInt TI64) 0); (TElem "load_sum" (TInt TI64) 8); (TElem "runnable_load_sum" (TInt TI64) 16); (TElem "util_sum" (TInt TI32) 24); (TElem "period_contrib" (TInt TI32) 28); (TElem "load_avg" (TInt TI64) 32); (TElem "runnable_load_avg" (TInt TI64) 40); (TElem "util_avg" (TInt TI64) 48); (TElem "util_est" (TNamedStruct "struct.util_est" 8) 56)]]).

Definition s_struct_util_est :=
    (TStruct 8 [[(TElem "enqueued" (TInt TI32) 0); (TElem "ewma" (TInt TI32) 4)]]).

Definition s_struct_sched_rt_entity :=
    (TStruct 48 [[(TElem "run_list" (TNamedStruct "struct.list_head" 16) 0); (TElem "timeout" (TInt TI64) 16); (TElem "watchdog_stamp" (TInt TI64) 24); (TElem "time_slice" (TInt TI32) 32); (TElem "on_rq" (TInt TI16) 36); (TElem "on_list" (TInt TI16) 38); (TElem "back" (TPtr (TNamedStruct "struct.sched_rt_entity" 48)) 40)]]).

Definition s_struct_task_group :=
    (TStruct 0 [[ ]]).

Definition s_struct_hrtimer :=
    (TStruct 64 [[(TElem "node" (TNamedStruct "struct.timerqueue_node" 32) 0); (TElem "_softexpires" (TInt TI64) 32); (TElem "function" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.hrtimer" 64))]])) 40); (TElem "base" (TPtr (TNamedStruct "struct.hrtimer_clock_base" 64)) 48); (TElem "state" (TInt TI8) 56); (TElem "is_rel" (TInt TI8) 57); (TElem "is_soft" (TInt TI8) 58); (TElem "is_hard" (TInt TI8) 59)]]).

Definition s_struct_timerqueue_node :=
    (TStruct 32 [[(TElem "node" (TNamedStruct "struct.rb_node" 24) 0); (TElem "expires" (TInt TI64) 24)]]).

Definition s_struct_hrtimer_clock_base :=
    (TStruct 64 [[(TElem "cpu_base" (TPtr (TNamedStruct "struct.hrtimer_cpu_base" 0)) 0); (TElem "index" (TInt TI32) 8); (TElem "clockid" (TInt TI32) 12); (TElem "seq" (TNamedStruct "struct.seqcount" 4) 16); (TElem "running" (TPtr (TNamedStruct "struct.hrtimer" 64)) 24); (TElem "active" (TNamedStruct "struct.timerqueue_head" 16) 32); (TElem "get_time" (TPtr (TFunction (TInt TI64) [[ ]])) 48); (TElem "offset" (TInt TI64) 56)]]).

Definition s_struct_timerqueue_head :=
    (TStruct 16 [[(TElem "rb_root" (TNamedStruct "struct.rb_root_cached" 16) 0)]]).

Definition s_struct_rb_root_cached :=
    (TStruct 16 [[(TElem "rb_root" (TNamedStruct "struct.rb_root" 8) 0); (TElem "rb_leftmost" (TPtr (TNamedStruct "struct.rb_node" 24)) 8)]]).

Definition s_struct_rb_root :=
    (TStruct 8 [[(TElem "rb_node" (TPtr (TNamedStruct "struct.rb_node" 24)) 0)]]).

Definition s_struct_cpumask :=
    (TStruct 32 [[(TElem "bits" (TArray (TInt TI64) 4) 0)]]).

Definition s_union_rcu_special :=
    (TStruct 4 [[(TElem "b" (TInt TI32) 0)]]).

Definition s_struct_rcu_node :=
    (TStruct 0 [[ ]]).

Definition s_struct_sched_info :=
    (TStruct 32 [[(TElem "pcount" (TInt TI64) 0); (TElem "run_delay" (TInt TI64) 8); (TElem "last_arrival" (TInt TI64) 16); (TElem "last_queued" (TInt TI64) 24)]]).

Definition s_struct_plist_node :=
    (TStruct 40 [[(TElem "prio" (TInt TI32) 0); (TElem "prio_list" (TNamedStruct "struct.list_head" 16) 8); (TElem "node_list" (TNamedStruct "struct.list_head" 16) 24)]]).

Definition s_struct_vmacache :=
    (TStruct 40 [[(TElem "seqnum" (TInt TI64) 0); (TElem "vmas" (TArray (TPtr (TNamedStruct "struct.vm_area_struct" 192)) 4) 8)]]).

Definition s_struct_task_rss_stat :=
    (TStruct 20 [[(TElem "events" (TInt TI32) 0); (TElem "count" (TArray (TInt TI32) 4) 4)]]).

Definition s_struct_restart_block :=
    (TStruct 48 [[(TElem "fn" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.restart_block" 48))]])) 0); (TElem "restart_block.1" (TNamedStruct "union.anon.28" 40) 8)]]).

Definition s_struct_completion :=
    (TStruct 32 [[(TElem "done" (TInt TI32) 0); (TElem "wait" (TNamedStruct "struct.wait_queue_head" 24) 8)]]).

Definition s_struct_prev_cputime :=
    (TStruct 24 [[(TElem "utime" (TInt TI64) 0); (TElem "stime" (TInt TI64) 8); (TElem "lock" (TNamedStruct "struct.raw_spinlock" 4) 16)]]).

Definition s_struct_posix_cputimers :=
    (TStruct 80 [[(TElem "bases" (TArray (TNamedStruct "struct.posix_cputimer_base" 24) 3) 0); (TElem "timers_active" (TInt TI32) 72); (TElem "expiry_active" (TInt TI32) 76)]]).

Definition s_struct_posix_cputimer_base :=
    (TStruct 24 [[(TElem "nextevt" (TInt TI64) 0); (TElem "tqhead" (TNamedStruct "struct.timerqueue_head" 16) 8)]]).

Definition s_struct_cred :=
    (TStruct 160 [[(TElem "usage" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "uid" (TNamedStruct "struct.kuid_t" 4) 4); (TElem "gid" (TNamedStruct "struct.kgid_t" 4) 8); (TElem "suid" (TNamedStruct "struct.kuid_t" 4) 12); (TElem "sgid" (TNamedStruct "struct.kgid_t" 4) 16); (TElem "euid" (TNamedStruct "struct.kuid_t" 4) 20); (TElem "egid" (TNamedStruct "struct.kgid_t" 4) 24); (TElem "fsuid" (TNamedStruct "struct.kuid_t" 4) 28); (TElem "fsgid" (TNamedStruct "struct.kgid_t" 4) 32); (TElem "securebits" (TInt TI32) 36); (TElem "cap_inheritable" (TNamedStruct "struct.kernel_cap_struct" 8) 40); (TElem "cap_permitted" (TNamedStruct "struct.kernel_cap_struct" 8) 48); (TElem "cap_effective" (TNamedStruct "struct.kernel_cap_struct" 8) 56); (TElem "cap_bset" (TNamedStruct "struct.kernel_cap_struct" 8) 64); (TElem "cap_ambient" (TNamedStruct "struct.kernel_cap_struct" 8) 72); (TElem "jit_keyring" (TInt TI8) 80); (TElem "session_keyring" (TPtr (TNamedStruct "struct.key" 216)) 88); (TElem "process_keyring" (TPtr (TNamedStruct "struct.key" 216)) 96); (TElem "thread_keyring" (TPtr (TNamedStruct "struct.key" 216)) 104); (TElem "request_key_auth" (TPtr (TNamedStruct "struct.key" 216)) 112); (TElem "user" (TPtr (TNamedStruct "struct.user_struct" 128)) 120); (TElem "user_ns" (TPtr (TNamedStruct "struct.user_namespace" 528)) 128); (TElem "group_info" (TPtr (TNamedStruct "struct.group_info" 8)) 136); (TElem "cred.23" (TNamedStruct "union.anon.37" 16) 144)]]).

Definition s_struct_kernel_cap_struct :=
    (TStruct 8 [[(TElem "cap" (TArray (TInt TI32) 2) 0)]]).

Definition s_struct_key :=
    (TStruct 216 [[(TElem "usage" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "serial" (TInt TI32) 4); (TElem "key.2" (TNamedStruct "union.anon.17" 24) 8); (TElem "sem" (TNamedStruct "struct.rw_semaphore" 40) 32); (TElem "user" (TPtr (TNamedStruct "struct.key_user" 0)) 72); (TElem "security" (TPtr (TInt TI8)) 80); (TElem "key.6" (TNamedStruct "union.anon.18" 8) 88); (TElem "last_used_at" (TInt TI64) 96); (TElem "uid" (TNamedStruct "struct.kuid_t" 4) 104); (TElem "gid" (TNamedStruct "struct.kgid_t" 4) 108); (TElem "perm" (TInt TI32) 112); (TElem "quotalen" (TInt TI16) 116); (TElem "datalen" (TInt TI16) 118); (TElem "state" (TInt TI16) 120); (TElem "flags" (TInt TI64) 128); (TElem "key.15" (TNamedStruct "union.anon.19" 40) 136); (TElem "key.16" (TNamedStruct "union.anon.23" 32) 176); (TElem "restrict_link" (TPtr (TNamedStruct "struct.key_restriction" 24)) 208)]]).

Definition s_struct_rw_semaphore :=
    (TStruct 40 [[(TElem "count" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "owner" (TNamedStruct "struct.atomic64_t" 8) 8); (TElem "osq" (TNamedStruct "struct.optimistic_spin_queue" 4) 16); (TElem "wait_lock" (TNamedStruct "struct.raw_spinlock" 4) 20); (TElem "wait_list" (TNamedStruct "struct.list_head" 16) 24)]]).

Definition s_struct_key_user :=
    (TStruct 0 [[ ]]).

Definition s_struct_keyring_index_key :=
    (TStruct 40 [[(TElem "hash" (TInt TI64) 0); (TElem "keyring_index_key.1" (TNamedStruct "union.anon.20" 8) 8); (TElem "type" (TPtr (TNamedStruct "struct.key_type" 0)) 16); (TElem "domain_tag" (TPtr (TNamedStruct "struct.key_tag" 24)) 24); (TElem "description" (TPtr (TInt TI8)) 32)]]).

Definition s_struct_key_type :=
    (TStruct 0 [[ ]]).

Definition s_struct_key_tag :=
    (TStruct 24 [[(TElem "rcu" (TNamedStruct "struct.callback_head" 16) 0); (TElem "usage" (TNamedStruct "struct.refcount_struct" 4) 16); (TElem "removed" (TInt TI8) 20)]]).

Definition s_union_key_payload :=
    (TStruct 32 [[(TElem "rcu_data0" (TArray (TPtr (TInt TI8)) 4) 0)]]).

Definition s_struct_key_restriction :=
    (TStruct 24 [[(TElem "check" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.key" 216)); (TPtr (TNamedStruct "struct.key_type" 0)); (TPtr (TNamedStruct "union.key_payload" 32)); (TPtr (TNamedStruct "struct.key" 216))]])) 0); (TElem "key" (TPtr (TNamedStruct "struct.key" 216)) 8); (TElem "keytype" (TPtr (TNamedStruct "struct.key_type" 0)) 16)]]).

Definition s_struct_user_struct :=
    (TStruct 128 [[(TElem "__count" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "processes" (TNamedStruct "struct.atomic_t" 4) 4); (TElem "sigpending" (TNamedStruct "struct.atomic_t" 4) 8); (TElem "fanotify_listeners" (TNamedStruct "struct.atomic_t" 4) 12); (TElem "epoll_watches" (TNamedStruct "struct.atomic64_t" 8) 16); (TElem "mq_bytes" (TInt TI64) 24); (TElem "locked_shm" (TInt TI64) 32); (TElem "unix_inflight" (TInt TI64) 40); (TElem "pipe_bufs" (TNamedStruct "struct.atomic64_t" 8) 48); (TElem "uidhash_node" (TNamedStruct "struct.hlist_node" 16) 56); (TElem "uid" (TNamedStruct "struct.kuid_t" 4) 72); (TElem "locked_vm" (TNamedStruct "struct.atomic64_t" 8) 80); (TElem "ratelimit" (TNamedStruct "struct.ratelimit_state" 40) 88)]]).

Definition s_struct_ratelimit_state :=
    (TStruct 40 [[(TElem "lock" (TNamedStruct "struct.raw_spinlock" 4) 0); (TElem "interval" (TInt TI32) 4); (TElem "burst" (TInt TI32) 8); (TElem "printed" (TInt TI32) 12); (TElem "missed" (TInt TI32) 16); (TElem "begin" (TInt TI64) 24); (TElem "flags" (TInt TI64) 32)]]).

Definition s_struct_user_namespace :=
    (TStruct 528 [[(TElem "uid_map" (TNamedStruct "struct.uid_gid_map" 72) 0); (TElem "gid_map" (TNamedStruct "struct.uid_gid_map" 72) 72); (TElem "projid_map" (TNamedStruct "struct.uid_gid_map" 72) 144); (TElem "count" (TNamedStruct "struct.atomic_t" 4) 216); (TElem "parent" (TPtr (TNamedStruct "struct.user_namespace" 528)) 224); (TElem "level" (TInt TI32) 232); (TElem "owner" (TNamedStruct "struct.kuid_t" 4) 236); (TElem "group" (TNamedStruct "struct.kgid_t" 4) 240); (TElem "ns" (TNamedStruct "struct.ns_common" 24) 248); (TElem "flags" (TInt TI64) 272); (TElem "keyring_name_list" (TNamedStruct "struct.list_head" 16) 280); (TElem "user_keyring_register" (TPtr (TNamedStruct "struct.key" 216)) 296); (TElem "keyring_sem" (TNamedStruct "struct.rw_semaphore" 40) 304); (TElem "work" (TNamedStruct "struct.work_struct" 32) 344); (TElem "set" (TNamedStruct "struct.ctl_table_set" 96) 376); (TElem "sysctls" (TPtr (TNamedStruct "struct.ctl_table_header" 80)) 472); (TElem "ucounts" (TPtr (TNamedStruct "struct.ucounts" 72)) 480); (TElem "ucount_max" (TArray (TInt TI32) 9) 488)]]).

Definition s_struct_uid_gid_map :=
    (TStruct 72 [[(TElem "nr_extents" (TInt TI32) 0); (TElem "uid_gid_map.1" (TNamedStruct "union.anon.33" 0) 8)]]).

Definition s_struct_uid_gid_extent :=
    (TStruct 12 [[(TElem "first" (TInt TI32) 0); (TElem "lower_first" (TInt TI32) 4); (TElem "count" (TInt TI32) 8)]]).

Definition s_struct_ns_common :=
    (TStruct 24 [[(TElem "stashed" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "ops" (TPtr (TNamedStruct "struct.proc_ns_operations" 0)) 8); (TElem "inum" (TInt TI32) 16)]]).

Definition s_struct_proc_ns_operations :=
    (TStruct 0 [[ ]]).

Definition s_struct_work_struct :=
    (TStruct 32 [[(TElem "data" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "entry" (TNamedStruct "struct.list_head" 16) 8); (TElem "func" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.work_struct" 32))]])) 24)]]).

Definition s_struct_ctl_table_set :=
    (TStruct 96 [[(TElem "is_seen" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.ctl_table_set" 96))]])) 0); (TElem "dir" (TNamedStruct "struct.ctl_dir" 88) 8)]]).

Definition s_struct_ctl_dir :=
    (TStruct 88 [[(TElem "header" (TNamedStruct "struct.ctl_table_header" 80) 0); (TElem "root" (TNamedStruct "struct.rb_root" 8) 80)]]).

Definition s_struct_ctl_table_header :=
    (TStruct 80 [[(TElem "ctl_table_header.0" (TNamedStruct "union.anon.35" 24) 0); (TElem "unregistering" (TPtr (TNamedStruct "struct.completion" 32)) 24); (TElem "ctl_table_arg" (TPtr (TNamedStruct "struct.ctl_table" 64)) 32); (TElem "root" (TPtr (TNamedStruct "struct.ctl_table_root" 120)) 40); (TElem "set" (TPtr (TNamedStruct "struct.ctl_table_set" 96)) 48); (TElem "parent" (TPtr (TNamedStruct "struct.ctl_dir" 88)) 56); (TElem "node" (TPtr (TNamedStruct "struct.ctl_node" 32)) 64); (TElem "inodes" (TNamedStruct "struct.hlist_head" 8) 72)]]).

Definition s_struct_ctl_table :=
    (TStruct 64 [[(TElem "procname" (TPtr (TInt TI8)) 0); (TElem "data" (TPtr (TInt TI8)) 8); (TElem "maxlen" (TInt TI32) 16); (TElem "mode" (TInt TI16) 20); (TElem "child" (TPtr (TNamedStruct "struct.ctl_table" 64)) 24); (TElem "proc_handler" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.ctl_table" 64)); (TInt TI32); (TPtr (TInt TI8)); (TPtr (TInt TI64)); (TPtr (TInt TI64))]])) 32); (TElem "poll" (TPtr (TNamedStruct "struct.ctl_table_poll" 32)) 40); (TElem "extra1" (TPtr (TInt TI8)) 48); (TElem "extra2" (TPtr (TInt TI8)) 56)]]).

Definition s_struct_ctl_table_poll :=
    (TStruct 32 [[(TElem "event" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "wait" (TNamedStruct "struct.wait_queue_head" 24) 8)]]).

Definition s_struct_ctl_table_root :=
    (TStruct 120 [[(TElem "default_set" (TNamedStruct "struct.ctl_table_set" 96) 0); (TElem "lookup" (TPtr (TFunction (TPtr (TNamedStruct "struct.ctl_table_set" 96)) [[(TPtr (TNamedStruct "struct.ctl_table_root" 120))]])) 96); (TElem "set_ownership" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.ctl_table_header" 80)); (TPtr (TNamedStruct "struct.ctl_table" 64)); (TPtr (TNamedStruct "struct.kuid_t" 4)); (TPtr (TNamedStruct "struct.kgid_t" 4))]])) 104); (TElem "permissions" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.ctl_table_header" 80)); (TPtr (TNamedStruct "struct.ctl_table" 64))]])) 112)]]).

Definition s_struct_ctl_node :=
    (TStruct 32 [[(TElem "node" (TNamedStruct "struct.rb_node" 24) 0); (TElem "header" (TPtr (TNamedStruct "struct.ctl_table_header" 80)) 24)]]).

Definition s_struct_ucounts :=
    (TStruct 72 [[(TElem "node" (TNamedStruct "struct.hlist_node" 16) 0); (TElem "ns" (TPtr (TNamedStruct "struct.user_namespace" 528)) 16); (TElem "uid" (TNamedStruct "struct.kuid_t" 4) 24); (TElem "count" (TInt TI32) 28); (TElem "ucount" (TArray (TNamedStruct "struct.atomic_t" 4) 9) 32)]]).

Definition s_struct_group_info :=
    (TStruct 8 [[(TElem "usage" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "ngroups" (TInt TI32) 4); (TElem "gid" (TArray (TNamedStruct "struct.kgid_t" 4) 0) 8)]]).

Definition s_struct_nameidata :=
    (TStruct 0 [[ ]]).

Definition s_struct_sysv_sem :=
    (TStruct 8 [[(TElem "undo_list" (TPtr (TNamedStruct "struct.sem_undo_list" 0)) 0)]]).

Definition s_struct_sem_undo_list :=
    (TStruct 0 [[ ]]).

Definition s_struct_sysv_shm :=
    (TStruct 16 [[(TElem "shm_clist" (TNamedStruct "struct.list_head" 16) 0)]]).

Definition s_struct_fs_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_files_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_nsproxy :=
    (TStruct 56 [[(TElem "count" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "uts_ns" (TPtr (TNamedStruct "struct.uts_namespace" 0)) 8); (TElem "ipc_ns" (TPtr (TNamedStruct "struct.ipc_namespace" 0)) 16); (TElem "mnt_ns" (TPtr (TNamedStruct "struct.mnt_namespace" 0)) 24); (TElem "pid_ns_for_children" (TPtr (TNamedStruct "struct.pid_namespace" 208)) 32); (TElem "net_ns" (TPtr (TNamedStruct "struct.net" 0)) 40); (TElem "cgroup_ns" (TPtr (TNamedStruct "struct.cgroup_namespace" 56)) 48)]]).

Definition s_struct_uts_namespace :=
    (TStruct 0 [[ ]]).

Definition s_struct_ipc_namespace :=
    (TStruct 0 [[ ]]).

Definition s_struct_mnt_namespace :=
    (TStruct 0 [[ ]]).

Definition s_struct_net :=
    (TStruct 0 [[ ]]).

Definition s_struct_cgroup_namespace :=
    (TStruct 56 [[(TElem "count" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "ns" (TNamedStruct "struct.ns_common" 24) 8); (TElem "user_ns" (TPtr (TNamedStruct "struct.user_namespace" 528)) 32); (TElem "ucounts" (TPtr (TNamedStruct "struct.ucounts" 72)) 40); (TElem "root_cset" (TPtr (TNamedStruct "struct.css_set" 456)) 48)]]).

Definition s_struct_css_set :=
    (TStruct 456 [[(TElem "subsys" (TArray (TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)) 9) 0); (TElem "refcount" (TNamedStruct "struct.refcount_struct" 4) 72); (TElem "dom_cset" (TPtr (TNamedStruct "struct.css_set" 456)) 80); (TElem "dfl_cgrp" (TPtr (TNamedStruct "struct.cgroup" 1640)) 88); (TElem "nr_tasks" (TInt TI32) 96); (TElem "tasks" (TNamedStruct "struct.list_head" 16) 104); (TElem "mg_tasks" (TNamedStruct "struct.list_head" 16) 120); (TElem "dying_tasks" (TNamedStruct "struct.list_head" 16) 136); (TElem "task_iters" (TNamedStruct "struct.list_head" 16) 152); (TElem "e_cset_node" (TArray (TNamedStruct "struct.list_head" 16) 9) 168); (TElem "threaded_csets" (TNamedStruct "struct.list_head" 16) 312); (TElem "threaded_csets_node" (TNamedStruct "struct.list_head" 16) 328); (TElem "hlist" (TNamedStruct "struct.hlist_node" 16) 344); (TElem "cgrp_links" (TNamedStruct "struct.list_head" 16) 360); (TElem "mg_preload_node" (TNamedStruct "struct.list_head" 16) 376); (TElem "mg_node" (TNamedStruct "struct.list_head" 16) 392); (TElem "mg_src_cgrp" (TPtr (TNamedStruct "struct.cgroup" 1640)) 408); (TElem "mg_dst_cgrp" (TPtr (TNamedStruct "struct.cgroup" 1640)) 416); (TElem "mg_dst_cset" (TPtr (TNamedStruct "struct.css_set" 456)) 424); (TElem "dead" (TInt TI8) 432); (TElem "callback_head" (TNamedStruct "struct.callback_head" 16) 440)]]).

Definition s_struct_cgroup_subsys_state :=
    (TStruct 240 [[(TElem "cgroup" (TPtr (TNamedStruct "struct.cgroup" 1640)) 0); (TElem "ss" (TPtr (TNamedStruct "struct.cgroup_subsys" 0)) 8); (TElem "refcnt" (TNamedStruct "struct.percpu_ref" 0) 16); (TElem "sibling" (TNamedStruct "struct.list_head" 16) 72); (TElem "children" (TNamedStruct "struct.list_head" 16) 88); (TElem "rstat_css_node" (TNamedStruct "struct.list_head" 16) 104); (TElem "id" (TInt TI32) 120); (TElem "flags" (TInt TI32) 124); (TElem "serial_nr" (TInt TI64) 128); (TElem "online_cnt" (TNamedStruct "struct.atomic_t" 4) 136); (TElem "destroy_work" (TNamedStruct "struct.work_struct" 32) 144); (TElem "destroy_rwork" (TNamedStruct "struct.rcu_work" 56) 176); (TElem "parent" (TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)) 232)]]).

Definition s_struct_cgroup :=
    (TStruct 1640 [[(TElem "self" (TNamedStruct "struct.cgroup_subsys_state" 240) 0); (TElem "flags" (TInt TI64) 240); (TElem "id" (TInt TI32) 248); (TElem "level" (TInt TI32) 252); (TElem "max_depth" (TInt TI32) 256); (TElem "nr_descendants" (TInt TI32) 260); (TElem "nr_dying_descendants" (TInt TI32) 264); (TElem "max_descendants" (TInt TI32) 268); (TElem "nr_populated_csets" (TInt TI32) 272); (TElem "nr_populated_domain_children" (TInt TI32) 276); (TElem "nr_populated_threaded_children" (TInt TI32) 280); (TElem "nr_threaded_children" (TInt TI32) 284); (TElem "kn" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 288); (TElem "procs_file" (TNamedStruct "struct.cgroup_file" 56) 296); (TElem "events_file" (TNamedStruct "struct.cgroup_file" 56) 352); (TElem "subtree_control" (TInt TI16) 408); (TElem "subtree_ss_mask" (TInt TI16) 410); (TElem "old_subtree_control" (TInt TI16) 412); (TElem "old_subtree_ss_mask" (TInt TI16) 414); (TElem "subsys" (TArray (TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)) 9) 416); (TElem "root" (TPtr (TNamedStruct "struct.cgroup_root" 5872)) 488); (TElem "cset_links" (TNamedStruct "struct.list_head" 16) 496); (TElem "e_csets" (TArray (TNamedStruct "struct.list_head" 16) 9) 512); (TElem "dom_cgrp" (TPtr (TNamedStruct "struct.cgroup" 1640)) 656); (TElem "old_dom_cgrp" (TPtr (TNamedStruct "struct.cgroup" 1640)) 664); (TElem "rstat_cpu" (TPtr (TNamedStruct "struct.cgroup_rstat_cpu" 64)) 672); (TElem "rstat_css_list" (TNamedStruct "struct.list_head" 16) 680); (TElem "pending_bstat" (TNamedStruct "struct.cgroup_base_stat" 24) 696); (TElem "bstat" (TNamedStruct "struct.cgroup_base_stat" 24) 720); (TElem "prev_cputime" (TNamedStruct "struct.prev_cputime" 24) 744); (TElem "pidlists" (TNamedStruct "struct.list_head" 16) 768); (TElem "pidlist_mutex" (TNamedStruct "struct.mutex" 32) 784); (TElem "offline_waitq" (TNamedStruct "struct.wait_queue_head" 24) 816); (TElem "release_agent_work" (TNamedStruct "struct.work_struct" 32) 840); (TElem "psi" (TNamedStruct "struct.psi_group" 0) 872); (TElem "bpf" (TNamedStruct "struct.cgroup_bpf" 744) 872); (TElem "congestion_count" (TNamedStruct "struct.atomic_t" 4) 1616); (TElem "freezer" (TNamedStruct "struct.cgroup_freezer_state" 16) 1620); (TElem "ancestor_ids" (TArray (TInt TI32) 0) 1636)]]).

Definition s_struct_kernfs_node :=
    (TStruct 128 [[(TElem "count" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "active" (TNamedStruct "struct.atomic_t" 4) 4); (TElem "parent" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 8); (TElem "name" (TPtr (TInt TI8)) 16); (TElem "rb" (TNamedStruct "struct.rb_node" 24) 24); (TElem "ns" (TPtr (TInt TI8)) 48); (TElem "hash" (TInt TI32) 56); (TElem "kernfs_node.7" (TNamedStruct "union.anon.12" 32) 64); (TElem "priv" (TPtr (TInt TI8)) 96); (TElem "id" (TNamedStruct "union.kernfs_node_id" 8) 104); (TElem "flags" (TInt TI16) 112); (TElem "mode" (TInt TI16) 114); (TElem "iattr" (TPtr (TNamedStruct "struct.kernfs_iattrs" 0)) 120)]]).

Definition s_struct_kernfs_root :=
    (TStruct 96 [[(TElem "kn" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 0); (TElem "flags" (TInt TI32) 8); (TElem "ino_idr" (TNamedStruct "struct.idr" 24) 16); (TElem "last_ino" (TInt TI32) 40); (TElem "next_generation" (TInt TI32) 44); (TElem "syscall_ops" (TPtr (TNamedStruct "struct.kernfs_syscall_ops" 40)) 48); (TElem "supers" (TNamedStruct "struct.list_head" 16) 56); (TElem "deactivate_waitq" (TNamedStruct "struct.wait_queue_head" 24) 72)]]).

Definition s_struct_kernfs_syscall_ops :=
    (TStruct 40 [[(TElem "show_options" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.kernfs_root" 96))]])) 0); (TElem "mkdir" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_node" 128)); (TPtr (TInt TI8)); (TInt TI16)]])) 8); (TElem "rmdir" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_node" 128))]])) 16); (TElem "rename" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_node" 128)); (TPtr (TNamedStruct "struct.kernfs_node" 128)); (TPtr (TInt TI8))]])) 24); (TElem "show_path" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.kernfs_node" 128)); (TPtr (TNamedStruct "struct.kernfs_root" 96))]])) 32)]]).

Definition s_struct_kernfs_elem_attr :=
    (TStruct 32 [[(TElem "ops" (TPtr (TNamedStruct "struct.kernfs_ops" 96)) 0); (TElem "open" (TPtr (TNamedStruct "struct.kernfs_open_node" 0)) 8); (TElem "size" (TInt TI64) 16); (TElem "notify_next" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 24)]]).

Definition s_struct_kernfs_ops :=
    (TStruct 96 [[(TElem "open" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0))]])) 0); (TElem "release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0))]])) 8); (TElem "seq_show" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8))]])) 16); (TElem "seq_start" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI64))]])) 24); (TElem "seq_next" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8)); (TPtr (TInt TI64))]])) 32); (TElem "seq_stop" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8))]])) 40); (TElem "read" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0)); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 48); (TElem "atomic_write_len" (TInt TI64) 56); (TElem "prealloc" (TInt TI8) 64); (TElem "write" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0)); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 72); (TElem "poll" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0)); (TPtr (TNamedStruct "struct.poll_table_struct" 0))]])) 80); (TElem "mmap" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0)); (TPtr (TNamedStruct "struct.vm_area_struct" 192))]])) 88)]]).

Definition s_struct_kernfs_open_node :=
    (TStruct 0 [[ ]]).

Definition s_union_kernfs_node_id :=
    (TStruct 8 [[(TElem "kernfs_node_id.0" (TInt TI64) 0)]]).

Definition s_struct_kernfs_iattrs :=
    (TStruct 0 [[ ]]).

Definition s_struct_cgroup_file :=
    (TStruct 56 [[(TElem "kn" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 0); (TElem "notified_at" (TInt TI64) 8); (TElem "notify_timer" (TNamedStruct "struct.timer_list" 40) 16)]]).

Definition s_struct_timer_list :=
    (TStruct 40 [[(TElem "entry" (TNamedStruct "struct.hlist_node" 16) 0); (TElem "expires" (TInt TI64) 16); (TElem "function" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.timer_list" 40))]])) 24); (TElem "flags" (TInt TI32) 32)]]).

Definition s_struct_cgroup_root :=
    (TStruct 5872 [[(TElem "kf_root" (TPtr (TNamedStruct "struct.kernfs_root" 96)) 0); (TElem "subsys_mask" (TInt TI32) 8); (TElem "hierarchy_id" (TInt TI32) 12); (TElem "cgrp" (TNamedStruct "struct.cgroup" 1640) 16); (TElem "cgrp_ancestor_id_storage" (TInt TI32) 1656); (TElem "nr_cgrps" (TNamedStruct "struct.atomic_t" 4) 1660); (TElem "root_list" (TNamedStruct "struct.list_head" 16) 1664); (TElem "flags" (TInt TI32) 1680); (TElem "cgroup_idr" (TNamedStruct "struct.idr" 24) 1688); (TElem "release_agent_path" (TArray (TInt TI8) 4096) 1712); (TElem "name" (TArray (TInt TI8) 64) 5808)]]).

Definition s_struct_cgroup_rstat_cpu :=
    (TStruct 64 [[(TElem "bsync" (TNamedStruct "struct.u64_stats_sync" 0) 0); (TElem "bstat" (TNamedStruct "struct.cgroup_base_stat" 24) 0); (TElem "last_bstat" (TNamedStruct "struct.cgroup_base_stat" 24) 24); (TElem "updated_children" (TPtr (TNamedStruct "struct.cgroup" 1640)) 48); (TElem "updated_next" (TPtr (TNamedStruct "struct.cgroup" 1640)) 56)]]).

Definition s_struct_u64_stats_sync :=
    (TStruct 0 [[ ]]).

Definition s_struct_cgroup_base_stat :=
    (TStruct 24 [[(TElem "cputime" (TNamedStruct "struct.task_cputime" 24) 0)]]).

Definition s_struct_task_cputime :=
    (TStruct 24 [[(TElem "stime" (TInt TI64) 0); (TElem "utime" (TInt TI64) 8); (TElem "sum_exec_runtime" (TInt TI64) 16)]]).

Definition s_struct_psi_group :=
    (TStruct 0 [[ ]]).

Definition s_struct_cgroup_bpf :=
    (TStruct 744 [[(TElem "effective" (TArray (TPtr (TNamedStruct "struct.bpf_prog_array" 16)) 23) 0); (TElem "progs" (TArray (TNamedStruct "struct.list_head" 16) 23) 184); (TElem "flags" (TArray (TInt TI32) 23) 552); (TElem "inactive" (TPtr (TNamedStruct "struct.bpf_prog_array" 16)) 648); (TElem "refcnt" (TNamedStruct "struct.percpu_ref" 0) 656); (TElem "release_work" (TNamedStruct "struct.work_struct" 32) 712)]]).

Definition s_struct_bpf_prog_array :=
    (TStruct 16 [[(TElem "rcu" (TNamedStruct "struct.callback_head" 16) 0); (TElem "items" (TArray (TNamedStruct "struct.bpf_prog_array_item" 24) 0) 16)]]).

Definition s_struct_bpf_prog_array_item :=
    (TStruct 24 [[(TElem "prog" (TPtr (TNamedStruct "struct.bpf_prog" 0)) 0); (TElem "cgroup_storage" (TArray (TPtr (TNamedStruct "struct.bpf_cgroup_storage" 88)) 2) 8)]]).

Definition s_struct_bpf_prog :=
    (TStruct 0 [[ ]]).

Definition s_struct_bpf_cgroup_storage :=
    (TStruct 88 [[(TElem "bpf_cgroup_storage.0" (TNamedStruct "union.anon.127" 8) 0); (TElem "map" (TPtr (TNamedStruct "struct.bpf_cgroup_storage_map" 0)) 8); (TElem "key" (TNamedStruct "struct.bpf_cgroup_storage_key" 16) 16); (TElem "list" (TNamedStruct "struct.list_head" 16) 32); (TElem "node" (TNamedStruct "struct.rb_node" 24) 48); (TElem "rcu" (TNamedStruct "struct.callback_head" 16) 72)]]).

Definition s_struct_bpf_storage_buffer :=
    (TStruct 16 [[(TElem "rcu" (TNamedStruct "struct.callback_head" 16) 0); (TElem "data" (TArray (TInt TI8) 0) 16)]]).

Definition s_struct_bpf_cgroup_storage_map :=
    (TStruct 0 [[ ]]).

Definition s_struct_bpf_cgroup_storage_key :=
    (TStruct 16 [[(TElem "cgroup_inode_id" (TInt TI64) 0); (TElem "attach_type" (TInt TI32) 8)]]).

Definition s_struct_cgroup_freezer_state :=
    (TStruct 16 [[(TElem "freeze" (TInt TI8) 0); (TElem "e_freeze" (TInt TI32) 4); (TElem "nr_frozen_descendants" (TInt TI32) 8); (TElem "nr_frozen_tasks" (TInt TI32) 12)]]).

Definition s_struct_cgroup_taskset :=
    (TStruct 0 [[ ]]).

Definition s_struct_cftype :=
    (TStruct 216 [[(TElem "name" (TArray (TInt TI8) 64) 0); (TElem "private" (TInt TI64) 64); (TElem "max_write_len" (TInt TI64) 72); (TElem "flags" (TInt TI32) 80); (TElem "file_offset" (TInt TI32) 84); (TElem "ss" (TPtr (TNamedStruct "struct.cgroup_subsys" 0)) 88); (TElem "node" (TNamedStruct "struct.list_head" 16) 96); (TElem "kf_ops" (TPtr (TNamedStruct "struct.kernfs_ops" 96)) 112); (TElem "open" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0))]])) 120); (TElem "release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0))]])) 128); (TElem "read_u64" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)); (TPtr (TNamedStruct "struct.cftype" 216))]])) 136); (TElem "read_s64" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)); (TPtr (TNamedStruct "struct.cftype" 216))]])) 144); (TElem "seq_show" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8))]])) 152); (TElem "seq_start" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI64))]])) 160); (TElem "seq_next" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8)); (TPtr (TInt TI64))]])) 168); (TElem "seq_stop" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TInt TI8))]])) 176); (TElem "write_u64" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)); (TPtr (TNamedStruct "struct.cftype" 216)); (TInt TI64)]])) 184); (TElem "write_s64" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)); (TPtr (TNamedStruct "struct.cftype" 216)); (TInt TI64)]])) 192); (TElem "write" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0)); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 200); (TElem "poll" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kernfs_open_file" 0)); (TPtr (TNamedStruct "struct.poll_table_struct" 0))]])) 208)]]).

Definition s_struct_rcu_work :=
    (TStruct 56 [[(TElem "work" (TNamedStruct "struct.work_struct" 32) 0); (TElem "rcu" (TNamedStruct "struct.callback_head" 16) 32); (TElem "wq" (TPtr (TNamedStruct "struct.workqueue_struct" 0)) 48)]]).

Definition s_struct_workqueue_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_sigpending :=
    (TStruct 24 [[(TElem "list" (TNamedStruct "struct.list_head" 16) 0); (TElem "signal" (TNamedStruct "struct.sigset_t" 8) 16)]]).

Definition s_struct_cpu_itimer :=
    (TStruct 16 [[(TElem "expires" (TInt TI64) 0); (TElem "incr" (TInt TI64) 8)]]).

Definition s_struct_thread_group_cputimer :=
    (TStruct 24 [[(TElem "cputime_atomic" (TNamedStruct "struct.task_cputime_atomic" 24) 0)]]).

Definition s_struct_task_cputime_atomic :=
    (TStruct 24 [[(TElem "utime" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "stime" (TNamedStruct "struct.atomic64_t" 8) 8); (TElem "sum_exec_runtime" (TNamedStruct "struct.atomic64_t" 8) 16)]]).

Definition s_struct_tty_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_autogroup :=
    (TStruct 0 [[ ]]).

Definition s_struct_task_io_accounting :=
    (TStruct 56 [[(TElem "rchar" (TInt TI64) 0); (TElem "wchar" (TInt TI64) 8); (TElem "syscr" (TInt TI64) 16); (TElem "syscw" (TInt TI64) 24); (TElem "read_bytes" (TInt TI64) 32); (TElem "write_bytes" (TInt TI64) 40); (TElem "cancelled_write_bytes" (TInt TI64) 48)]]).

Definition s_struct_rlimit :=
    (TStruct 16 [[(TElem "rlim_cur" (TInt TI64) 0); (TElem "rlim_max" (TInt TI64) 8)]]).

Definition s_struct_pacct_struct :=
    (TStruct 56 [[(TElem "ac_flag" (TInt TI32) 0); (TElem "ac_exitcode" (TInt TI64) 8); (TElem "ac_mem" (TInt TI64) 16); (TElem "ac_utime" (TInt TI64) 24); (TElem "ac_stime" (TInt TI64) 32); (TElem "ac_minflt" (TInt TI64) 40); (TElem "ac_majflt" (TInt TI64) 48)]]).

Definition s_struct_sighand_struct :=
    (TStruct 2080 [[(TElem "siglock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "count" (TNamedStruct "struct.refcount_struct" 4) 4); (TElem "signalfd_wqh" (TNamedStruct "struct.wait_queue_head" 24) 8); (TElem "action" (TArray (TNamedStruct "struct.k_sigaction" 32) 64) 32)]]).

Definition s_struct_k_sigaction :=
    (TStruct 32 [[(TElem "sa" (TNamedStruct "struct.sigaction" 32) 0)]]).

Definition s_struct_sigaction :=
    (TStruct 32 [[(TElem "sa_handler" (TPtr (TFunction TVoid [[(TInt TI32)]])) 0); (TElem "sa_flags" (TInt TI64) 8); (TElem "sa_restorer" (TPtr (TFunction TVoid [[ ]])) 16); (TElem "sa_mask" (TNamedStruct "struct.sigset_t" 8) 24)]]).

Definition s_struct_seccomp :=
    (TStruct 16 [[(TElem "mode" (TInt TI32) 0); (TElem "filter" (TPtr (TNamedStruct "struct.seccomp_filter" 0)) 8)]]).

Definition s_struct_seccomp_filter :=
    (TStruct 0 [[ ]]).

Definition s_struct_wake_q_node :=
    (TStruct 8 [[(TElem "next" (TPtr (TNamedStruct "struct.wake_q_node" 8)) 0)]]).

Definition s_struct_rt_mutex_waiter :=
    (TStruct 0 [[ ]]).

Definition s_struct_bio_list :=
    (TStruct 0 [[ ]]).

Definition s_struct_blk_plug :=
    (TStruct 0 [[ ]]).

Definition s_struct_reclaim_state :=
    (TStruct 0 [[ ]]).

Definition s_struct_backing_dev_info :=
    (TStruct 0 [[ ]]).

Definition s_struct_io_context :=
    (TStruct 104 [[(TElem "refcount" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "active_ref" (TNamedStruct "struct.atomic_t" 4) 8); (TElem "nr_tasks" (TNamedStruct "struct.atomic_t" 4) 12); (TElem "lock" (TNamedStruct "struct.spinlock" 4) 16); (TElem "ioprio" (TInt TI16) 20); (TElem "nr_batch_requests" (TInt TI32) 24); (TElem "last_waited" (TInt TI64) 32); (TElem "icq_tree" (TNamedStruct "struct.xarray" 16) 40); (TElem "icq_hint" (TPtr (TNamedStruct "struct.io_cq" 56)) 56); (TElem "icq_list" (TNamedStruct "struct.hlist_head" 8) 64); (TElem "release_work" (TNamedStruct "struct.work_struct" 32) 72)]]).

Definition s_struct_io_cq :=
    (TStruct 56 [[(TElem "q" (TPtr (TNamedStruct "struct.request_queue" 0)) 0); (TElem "ioc" (TPtr (TNamedStruct "struct.io_context" 104)) 8); (TElem "io_cq.2" (TNamedStruct "union.anon.38" 16) 16); (TElem "io_cq.3" (TNamedStruct "union.anon.39" 16) 32); (TElem "flags" (TInt TI32) 48)]]).

Definition s_struct_request_queue :=
    (TStruct 0 [[ ]]).

Definition s_struct_kmem_cache :=
    (TStruct 0 [[ ]]).

Definition s_struct_capture_control :=
    (TStruct 0 [[ ]]).

Definition s_struct_kernel_siginfo :=
    (TStruct 48 [[(TElem "kernel_siginfo.0" (TNamedStruct "struct.anon.40" 48) 0)]]).

Definition s_union___sifields :=
    (TStruct 32 [[(TElem "_kill" (TNamedStruct "struct.anon.44" 0) 0)]]).

Definition s_struct_robust_list_head :=
    (TStruct 0 [[ ]]).

Definition s_struct_futex_pi_state :=
    (TStruct 0 [[ ]]).

Definition s_struct_perf_event_context :=
    (TStruct 256 [[(TElem "pmu" (TPtr (TNamedStruct "struct.pmu" 280)) 0); (TElem "lock" (TNamedStruct "struct.raw_spinlock" 4) 8); (TElem "mutex" (TNamedStruct "struct.mutex" 32) 16); (TElem "active_ctx_list" (TNamedStruct "struct.list_head" 16) 48); (TElem "pinned_groups" (TNamedStruct "struct.perf_event_groups" 16) 64); (TElem "flexible_groups" (TNamedStruct "struct.perf_event_groups" 16) 80); (TElem "event_list" (TNamedStruct "struct.list_head" 16) 96); (TElem "pinned_active" (TNamedStruct "struct.list_head" 16) 112); (TElem "flexible_active" (TNamedStruct "struct.list_head" 16) 128); (TElem "nr_events" (TInt TI32) 144); (TElem "nr_active" (TInt TI32) 148); (TElem "is_active" (TInt TI32) 152); (TElem "nr_stat" (TInt TI32) 156); (TElem "nr_freq" (TInt TI32) 160); (TElem "rotate_disable" (TInt TI32) 164); (TElem "rotate_necessary" (TInt TI32) 168); (TElem "refcount" (TNamedStruct "struct.refcount_struct" 4) 172); (TElem "task" (TPtr (TNamedStruct "struct.task_struct" 0)) 176); (TElem "time" (TInt TI64) 184); (TElem "timestamp" (TInt TI64) 192); (TElem "parent_ctx" (TPtr (TNamedStruct "struct.perf_event_context" 256)) 200); (TElem "parent_gen" (TInt TI64) 208); (TElem "generation" (TInt TI64) 216); (TElem "pin_count" (TInt TI32) 224); (TElem "task_ctx_data" (TPtr (TInt TI8)) 232); (TElem "callback_head" (TNamedStruct "struct.callback_head" 16) 240)]]).

Definition s_struct_pmu :=
    (TStruct 280 [[(TElem "entry" (TNamedStruct "struct.list_head" 16) 0); (TElem "module" (TPtr (TNamedStruct "struct.module" 0)) 16); (TElem "dev" (TPtr (TNamedStruct "struct.device" 0)) 24); (TElem "attr_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 32); (TElem "attr_update" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 40); (TElem "name" (TPtr (TInt TI8)) 48); (TElem "type" (TInt TI32) 56); (TElem "capabilities" (TInt TI32) 60); (TElem "pmu_disable_count" (TPtr (TInt TI32)) 64); (TElem "pmu_cpu_context" (TPtr (TNamedStruct "struct.perf_cpu_context" 384)) 72); (TElem "exclusive_cnt" (TNamedStruct "struct.atomic_t" 4) 80); (TElem "task_ctx_nr" (TInt TI32) 84); (TElem "hrtimer_interval_ms" (TInt TI32) 88); (TElem "nr_addr_filters" (TInt TI32) 92); (TElem "pmu_enable" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.pmu" 280))]])) 96); (TElem "pmu_disable" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.pmu" 280))]])) 104); (TElem "event_init" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 112); (TElem "event_mapped" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TPtr (TNamedStruct "struct.mm_struct" 864))]])) 120); (TElem "event_unmapped" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TPtr (TNamedStruct "struct.mm_struct" 864))]])) 128); (TElem "add" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TInt TI32)]])) 136); (TElem "del" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TInt TI32)]])) 144); (TElem "start" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TInt TI32)]])) 152); (TElem "stop" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TInt TI32)]])) 160); (TElem "read" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 168); (TElem "start_txn" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.pmu" 280)); (TInt TI32)]])) 176); (TElem "commit_txn" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.pmu" 280))]])) 184); (TElem "cancel_txn" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.pmu" 280))]])) 192); (TElem "event_idx" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 200); (TElem "sched_task" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event_context" 256)); TBool]])) 208); (TElem "task_ctx_size" (TInt TI64) 216); (TElem "setup_aux" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TPtr (TPtr (TInt TI8))); (TInt TI32); TBool]])) 224); (TElem "free_aux" (TPtr (TFunction TVoid [[(TPtr (TInt TI8))]])) 232); (TElem "addr_filters_validate" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.list_head" 16))]])) 240); (TElem "addr_filters_sync" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 248); (TElem "aux_output_match" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 256); (TElem "filter_match" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 264); (TElem "check_period" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TInt TI64)]])) 272)]]).

Definition s_struct_device_private :=
    (TStruct 0 [[ ]]).

Definition s_struct_device_type :=
    (TStruct 48 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 8); (TElem "uevent" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TNamedStruct "struct.kobj_uevent_env" 2336))]])) 16); (TElem "devnode" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TInt TI16)); (TPtr (TNamedStruct "struct.kuid_t" 4)); (TPtr (TNamedStruct "struct.kgid_t" 4))]])) 24); (TElem "release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 32); (TElem "pm" (TPtr (TNamedStruct "struct.dev_pm_ops" 184)) 40)]]).

Definition s_struct_dev_pm_ops :=
    (TStruct 184 [[(TElem "prepare" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 0); (TElem "complete" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 8); (TElem "suspend" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 16); (TElem "resume" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 24); (TElem "freeze" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 32); (TElem "thaw" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 40); (TElem "poweroff" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 48); (TElem "restore" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 56); (TElem "suspend_late" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 64); (TElem "resume_early" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 72); (TElem "freeze_late" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 80); (TElem "thaw_early" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 88); (TElem "poweroff_late" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 96); (TElem "restore_early" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 104); (TElem "suspend_noirq" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 112); (TElem "resume_noirq" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 120); (TElem "freeze_noirq" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 128); (TElem "thaw_noirq" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 136); (TElem "poweroff_noirq" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 144); (TElem "restore_noirq" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 152); (TElem "runtime_suspend" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 160); (TElem "runtime_resume" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 168); (TElem "runtime_idle" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 176)]]).

Definition s_struct_bus_type :=
    (TStruct 168 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "dev_name" (TPtr (TInt TI8)) 8); (TElem "dev_root" (TPtr (TNamedStruct "struct.device" 0)) 16); (TElem "bus_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 24); (TElem "dev_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 32); (TElem "drv_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 40); (TElem "match" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TNamedStruct "struct.device_driver" 136))]])) 48); (TElem "uevent" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TNamedStruct "struct.kobj_uevent_env" 2336))]])) 56); (TElem "probe" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 64); (TElem "remove" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 72); (TElem "shutdown" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 80); (TElem "online" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 88); (TElem "offline" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 96); (TElem "suspend" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0)); (TInt TI64)]])) 104); (TElem "resume" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 112); (TElem "num_vf" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 120); (TElem "dma_configure" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 128); (TElem "pm" (TPtr (TNamedStruct "struct.dev_pm_ops" 184)) 136); (TElem "iommu_ops" (TPtr (TNamedStruct "struct.iommu_ops" 0)) 144); (TElem "p" (TPtr (TNamedStruct "struct.subsys_private" 0)) 152); (TElem "lock_key" (TNamedStruct "struct.lock_class_key" 0) 160); (TElem "need_parent_lock" (TInt TI8) 160)]]).

Definition s_struct_device_driver :=
    (TStruct 136 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "bus" (TPtr (TNamedStruct "struct.bus_type" 168)) 8); (TElem "owner" (TPtr (TNamedStruct "struct.module" 0)) 16); (TElem "mod_name" (TPtr (TInt TI8)) 24); (TElem "suppress_bind_attrs" (TInt TI8) 32); (TElem "probe_type" (TInt TI32) 36); (TElem "of_match_table" (TPtr (TNamedStruct "struct.of_device_id" 200)) 40); (TElem "acpi_match_table" (TPtr (TNamedStruct "struct.acpi_device_id" 32)) 48); (TElem "probe" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 56); (TElem "remove" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 64); (TElem "shutdown" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 72); (TElem "suspend" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0)); (TInt TI64)]])) 80); (TElem "resume" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 88); (TElem "groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 96); (TElem "dev_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 104); (TElem "pm" (TPtr (TNamedStruct "struct.dev_pm_ops" 184)) 112); (TElem "coredump" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 120); (TElem "p" (TPtr (TNamedStruct "struct.driver_private" 0)) 128)]]).

Definition s_struct_of_device_id :=
    (TStruct 200 [[(TElem "name" (TArray (TInt TI8) 32) 0); (TElem "type" (TArray (TInt TI8) 32) 32); (TElem "compatible" (TArray (TInt TI8) 128) 64); (TElem "data" (TPtr (TInt TI8)) 192)]]).

Definition s_struct_acpi_device_id :=
    (TStruct 32 [[(TElem "id" (TArray (TInt TI8) 9) 0); (TElem "driver_data" (TInt TI64) 16); (TElem "cls" (TInt TI32) 24); (TElem "cls_msk" (TInt TI32) 28)]]).

Definition s_struct_pm_message :=
    (TStruct 4 [[(TElem "event" (TInt TI32) 0)]]).

Definition s_struct_driver_private :=
    (TStruct 0 [[ ]]).

Definition s_struct_iommu_ops :=
    (TStruct 0 [[ ]]).

Definition s_struct_subsys_private :=
    (TStruct 0 [[ ]]).

Definition s_struct_lock_class_key :=
    (TStruct 0 [[ ]]).

Definition s_struct_dev_links_info :=
    (TStruct 40 [[(TElem "suppliers" (TNamedStruct "struct.list_head" 16) 0); (TElem "consumers" (TNamedStruct "struct.list_head" 16) 16); (TElem "status" (TInt TI32) 32)]]).

Definition s_struct_wake_irq :=
    (TStruct 0 [[ ]]).

Definition s_struct_pm_subsys_data :=
    (TStruct 32 [[(TElem "lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "refcount" (TInt TI32) 4); (TElem "clock_list" (TNamedStruct "struct.list_head" 16) 8); (TElem "domain_data" (TPtr (TNamedStruct "struct.pm_domain_data" 0)) 24)]]).

Definition s_struct_pm_domain_data :=
    (TStruct 0 [[ ]]).

Definition s_struct_dev_pm_qos :=
    (TStruct 0 [[ ]]).

Definition s_struct_dev_pm_domain :=
    (TStruct 216 [[(TElem "ops" (TNamedStruct "struct.dev_pm_ops" 184) 0); (TElem "detach" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0)); TBool]])) 184); (TElem "activate" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 192); (TElem "sync" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 200); (TElem "dismiss" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 208)]]).

Definition s_struct_irq_domain :=
    (TStruct 0 [[ ]]).

Definition s_struct_dev_pin_info :=
    (TStruct 0 [[ ]]).

Definition s_struct_dma_map_ops :=
    (TStruct 0 [[ ]]).

Definition s_struct_device_dma_parameters :=
    (TStruct 16 [[(TElem "max_segment_size" (TInt TI32) 0); (TElem "segment_boundary_mask" (TInt TI64) 8)]]).

Definition s_struct_dma_coherent_mem :=
    (TStruct 0 [[ ]]).

Definition s_struct_cma :=
    (TStruct 0 [[ ]]).

Definition s_struct_dev_archdata :=
    (TStruct 0 [[ ]]).

Definition s_struct_device_node :=
    (TStruct 160 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "phandle" (TInt TI32) 8); (TElem "full_name" (TPtr (TInt TI8)) 16); (TElem "fwnode" (TNamedStruct "struct.fwnode_handle" 16) 24); (TElem "properties" (TPtr (TNamedStruct "struct.property" 96)) 40); (TElem "deadprops" (TPtr (TNamedStruct "struct.property" 96)) 48); (TElem "parent" (TPtr (TNamedStruct "struct.device_node" 160)) 56); (TElem "child" (TPtr (TNamedStruct "struct.device_node" 160)) 64); (TElem "sibling" (TPtr (TNamedStruct "struct.device_node" 160)) 72); (TElem "kobj" (TNamedStruct "struct.kobject" 0) 80); (TElem "_flags" (TInt TI64) 144); (TElem "data" (TPtr (TInt TI8)) 152)]]).

Definition s_struct_fwnode_handle :=
    (TStruct 16 [[(TElem "secondary" (TPtr (TNamedStruct "struct.fwnode_handle" 16)) 0); (TElem "ops" (TPtr (TNamedStruct "struct.fwnode_operations" 120)) 8)]]).

Definition s_struct_fwnode_operations :=
    (TStruct 120 [[(TElem "get" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 0); (TElem "put" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 8); (TElem "device_is_available" (TPtr (TFunction TBool [[(TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 16); (TElem "device_get_match_data" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TNamedStruct "struct.device" 0))]])) 24); (TElem "property_present" (TPtr (TFunction TBool [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TInt TI8))]])) 32); (TElem "property_read_int_array" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TInt TI8)); (TInt TI32); (TPtr (TInt TI8)); (TInt TI64)]])) 40); (TElem "property_read_string_array" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TInt TI8)); (TPtr (TPtr (TInt TI8))); (TInt TI64)]])) 48); (TElem "get_parent" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 56); (TElem "get_next_child_node" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 64); (TElem "get_named_child_node" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TInt TI8))]])) 72); (TElem "get_reference_args" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TInt TI8)); (TPtr (TInt TI8)); (TInt TI32); (TInt TI32); (TPtr (TNamedStruct "struct.fwnode_reference_args" 80))]])) 80); (TElem "graph_get_next_endpoint" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 88); (TElem "graph_get_remote_endpoint" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 96); (TElem "graph_get_port_parent" (TPtr (TFunction (TPtr (TNamedStruct "struct.fwnode_handle" 16)) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16))]])) 104); (TElem "graph_parse_endpoint" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.fwnode_handle" 16)); (TPtr (TNamedStruct "struct.fwnode_endpoint" 16))]])) 112)]]).

Definition s_struct_fwnode_reference_args :=
    (TStruct 80 [[(TElem "fwnode" (TPtr (TNamedStruct "struct.fwnode_handle" 16)) 0); (TElem "nargs" (TInt TI32) 8); (TElem "args" (TArray (TInt TI64) 8) 16)]]).

Definition s_struct_fwnode_endpoint :=
    (TStruct 16 [[(TElem "port" (TInt TI32) 0); (TElem "id" (TInt TI32) 4); (TElem "local_fwnode" (TPtr (TNamedStruct "struct.fwnode_handle" 16)) 8)]]).

Definition s_struct_property :=
    (TStruct 96 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "length" (TInt TI32) 8); (TElem "value" (TPtr (TInt TI8)) 16); (TElem "next" (TPtr (TNamedStruct "struct.property" 96)) 24); (TElem "_flags" (TInt TI64) 32); (TElem "attr" (TNamedStruct "struct.bin_attribute" 56) 40)]]).

Definition s_struct_class :=
    (TStruct 120 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "owner" (TPtr (TNamedStruct "struct.module" 0)) 8); (TElem "class_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 16); (TElem "dev_groups" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 24); (TElem "dev_kobj" (TPtr (TNamedStruct "struct.kobject" 0)) 32); (TElem "dev_uevent" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TNamedStruct "struct.kobj_uevent_env" 2336))]])) 40); (TElem "devnode" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TInt TI16))]])) 48); (TElem "class_release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.class" 120))]])) 56); (TElem "dev_release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 64); (TElem "shutdown_pre" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.device" 0))]])) 72); (TElem "ns_type" (TPtr (TNamedStruct "struct.kobj_ns_type_operations" 48)) 80); (TElem "namespace" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.device" 0))]])) 88); (TElem "get_ownership" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0)); (TPtr (TNamedStruct "struct.kuid_t" 4)); (TPtr (TNamedStruct "struct.kgid_t" 4))]])) 96); (TElem "pm" (TPtr (TNamedStruct "struct.dev_pm_ops" 184)) 104); (TElem "p" (TPtr (TNamedStruct "struct.subsys_private" 0)) 112)]]).

Definition s_struct_kobj_ns_type_operations :=
    (TStruct 48 [[(TElem "type" (TInt TI32) 0); (TElem "current_may_mount" (TPtr (TFunction TBool [[ ]])) 8); (TElem "grab_current_ns" (TPtr (TFunction (TPtr (TInt TI8)) [[ ]])) 16); (TElem "netlink_ns" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.sock" 0))]])) 24); (TElem "initial_ns" (TPtr (TFunction (TPtr (TInt TI8)) [[ ]])) 32); (TElem "drop_ns" (TPtr (TFunction TVoid [[(TPtr (TInt TI8))]])) 40)]]).

Definition s_struct_sock :=
    (TStruct 0 [[ ]]).

Definition s_struct_iommu_group :=
    (TStruct 0 [[ ]]).

Definition s_struct_iommu_fwspec :=
    (TStruct 0 [[ ]]).

Definition s_struct_iommu_param :=
    (TStruct 0 [[ ]]).

Definition s_struct_perf_cpu_context :=
    (TStruct 384 [[(TElem "ctx" (TNamedStruct "struct.perf_event_context" 256) 0); (TElem "task_ctx" (TPtr (TNamedStruct "struct.perf_event_context" 256)) 256); (TElem "active_oncpu" (TInt TI32) 264); (TElem "exclusive" (TInt TI32) 268); (TElem "hrtimer_lock" (TNamedStruct "struct.raw_spinlock" 4) 272); (TElem "hrtimer" (TNamedStruct "struct.hrtimer" 64) 280); (TElem "hrtimer_interval" (TInt TI64) 344); (TElem "hrtimer_active" (TInt TI32) 352); (TElem "sched_cb_entry" (TNamedStruct "struct.list_head" 16) 360); (TElem "sched_cb_usage" (TInt TI32) 376); (TElem "online" (TInt TI32) 380)]]).

Definition s_struct_perf_event :=
    (TStruct 1136 [[(TElem "event_entry" (TNamedStruct "struct.list_head" 16) 0); (TElem "sibling_list" (TNamedStruct "struct.list_head" 16) 16); (TElem "active_list" (TNamedStruct "struct.list_head" 16) 32); (TElem "group_node" (TNamedStruct "struct.rb_node" 24) 48); (TElem "group_index" (TInt TI64) 72); (TElem "migrate_entry" (TNamedStruct "struct.list_head" 16) 80); (TElem "hlist_entry" (TNamedStruct "struct.hlist_node" 16) 96); (TElem "active_entry" (TNamedStruct "struct.list_head" 16) 112); (TElem "nr_siblings" (TInt TI32) 128); (TElem "event_caps" (TInt TI32) 132); (TElem "group_caps" (TInt TI32) 136); (TElem "group_leader" (TPtr (TNamedStruct "struct.perf_event" 1136)) 144); (TElem "pmu" (TPtr (TNamedStruct "struct.pmu" 280)) 152); (TElem "pmu_private" (TPtr (TInt TI8)) 160); (TElem "state" (TInt TI32) 168); (TElem "attach_state" (TInt TI32) 172); (TElem "count" (TNamedStruct "struct.local64_t" 8) 176); (TElem "child_count" (TNamedStruct "struct.atomic64_t" 8) 184); (TElem "total_time_enabled" (TInt TI64) 192); (TElem "total_time_running" (TInt TI64) 200); (TElem "tstamp" (TInt TI64) 208); (TElem "shadow_ctx_time" (TInt TI64) 216); (TElem "attr" (TNamedStruct "struct.perf_event_attr" 0) 224); (TElem "header_size" (TInt TI16) 336); (TElem "id_header_size" (TInt TI16) 338); (TElem "read_size" (TInt TI16) 340); (TElem "hw" (TNamedStruct "struct.hw_perf_event" 192) 344); (TElem "ctx" (TPtr (TNamedStruct "struct.perf_event_context" 256)) 536); (TElem "refcount" (TNamedStruct "struct.atomic64_t" 8) 544); (TElem "child_total_time_enabled" (TNamedStruct "struct.atomic64_t" 8) 552); (TElem "child_total_time_running" (TNamedStruct "struct.atomic64_t" 8) 560); (TElem "child_mutex" (TNamedStruct "struct.mutex" 32) 568); (TElem "child_list" (TNamedStruct "struct.list_head" 16) 600); (TElem "parent" (TPtr (TNamedStruct "struct.perf_event" 1136)) 616); (TElem "oncpu" (TInt TI32) 624); (TElem "cpu" (TInt TI32) 628); (TElem "owner_entry" (TNamedStruct "struct.list_head" 16) 632); (TElem "owner" (TPtr (TNamedStruct "struct.task_struct" 0)) 648); (TElem "mmap_mutex" (TNamedStruct "struct.mutex" 32) 656); (TElem "mmap_count" (TNamedStruct "struct.atomic_t" 4) 688); (TElem "rb" (TPtr (TNamedStruct "struct.ring_buffer" 0)) 696); (TElem "rb_entry" (TNamedStruct "struct.list_head" 16) 704); (TElem "rcu_batches" (TInt TI64) 720); (TElem "rcu_pending" (TInt TI32) 728); (TElem "waitq" (TNamedStruct "struct.wait_queue_head" 24) 736); (TElem "fasync" (TPtr (TNamedStruct "struct.fasync_struct" 48)) 760); (TElem "pending_wakeup" (TInt TI32) 768); (TElem "pending_kill" (TInt TI32) 772); (TElem "pending_disable" (TInt TI32) 776); (TElem "pending" (TNamedStruct "struct.irq_work" 24) 784); (TElem "event_limit" (TNamedStruct "struct.atomic_t" 4) 808); (TElem "addr_filters" (TNamedStruct "struct.perf_addr_filters_head" 24) 816); (TElem "addr_filter_ranges" (TPtr (TNamedStruct "struct.perf_addr_filter_range" 16)) 840); (TElem "addr_filters_gen" (TInt TI64) 848); (TElem "aux_event" (TPtr (TNamedStruct "struct.perf_event" 1136)) 856); (TElem "destroy" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136))]])) 864); (TElem "callback_head" (TNamedStruct "struct.callback_head" 16) 872); (TElem "ns" (TPtr (TNamedStruct "struct.pid_namespace" 208)) 888); (TElem "id" (TInt TI64) 896); (TElem "clock" (TPtr (TFunction (TInt TI64) [[ ]])) 904); (TElem "overflow_handler" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TPtr (TNamedStruct "struct.perf_sample_data" 0)); (TPtr (TNamedStruct "struct.pt_regs" 320))]])) 912); (TElem "overflow_handler_context" (TPtr (TInt TI8)) 920); (TElem "orig_overflow_handler" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.perf_event" 1136)); (TPtr (TNamedStruct "struct.perf_sample_data" 0)); (TPtr (TNamedStruct "struct.pt_regs" 320))]])) 928); (TElem "prog" (TPtr (TNamedStruct "struct.bpf_prog" 0)) 936); (TElem "tp_event" (TPtr (TNamedStruct "struct.trace_event_call" 0)) 944); (TElem "filter" (TPtr (TNamedStruct "struct.event_filter" 0)) 952); (TElem "ftrace_ops" (TNamedStruct "struct.ftrace_ops" 160) 960); (TElem "sb_list" (TNamedStruct "struct.list_head" 16) 1120)]]).

Definition s_struct_hw_perf_event :=
    (TStruct 192 [[(TElem "hw_perf_event.0" (TNamedStruct "union.anon.55" 96) 0); (TElem "target" (TPtr (TNamedStruct "struct.task_struct" 0)) 96); (TElem "addr_filters" (TPtr (TInt TI8)) 104); (TElem "addr_filters_gen" (TInt TI64) 112); (TElem "state" (TInt TI32) 120); (TElem "prev_count" (TNamedStruct "struct.local64_t" 8) 128); (TElem "sample_period" (TInt TI64) 136); (TElem "last_period" (TInt TI64) 144); (TElem "period_left" (TNamedStruct "struct.local64_t" 8) 152); (TElem "interrupts_seq" (TInt TI64) 160); (TElem "interrupts" (TInt TI64) 168); (TElem "freq_time_stamp" (TInt TI64) 176); (TElem "freq_count_stamp" (TInt TI64) 184)]]).

Definition s_struct_hw_perf_event_extra :=
    (TStruct 24 [[(TElem "config" (TInt TI64) 0); (TElem "reg" (TInt TI32) 8); (TElem "alloc" (TInt TI32) 12); (TElem "idx" (TInt TI32) 16)]]).

Definition s_struct_ring_buffer :=
    (TStruct 0 [[ ]]).

Definition s_struct_irq_work :=
    (TStruct 24 [[(TElem "flags" (TInt TI64) 0); (TElem "llnode" (TNamedStruct "struct.llist_node" 8) 8); (TElem "func" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.irq_work" 24))]])) 16)]]).

Definition s_struct_perf_addr_filters_head :=
    (TStruct 24 [[(TElem "list" (TNamedStruct "struct.list_head" 16) 0); (TElem "lock" (TNamedStruct "struct.raw_spinlock" 4) 16); (TElem "nr_file_filters" (TInt TI32) 20)]]).

Definition s_struct_perf_addr_filter_range :=
    (TStruct 16 [[(TElem "start" (TInt TI64) 0); (TElem "size" (TInt TI64) 8)]]).

Definition s_struct_perf_raw_record :=
    (TStruct 32 [[(TElem "frag" (TNamedStruct "struct.perf_raw_frag" 28) 0); (TElem "size" (TInt TI32) 28)]]).

Definition s_struct_perf_raw_frag :=
    (TStruct 28 [[(TElem "perf_raw_frag.0" (TNamedStruct "union.anon.64" 8) 0); (TElem "copy" (TPtr (TFunction (TInt TI64) [[(TPtr (TInt TI8)); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 8); (TElem "data" (TPtr (TInt TI8)) 16); (TElem "size" (TInt TI32) 24)]]).

Definition s_struct_perf_branch_stack :=
    (TStruct 8 [[(TElem "nr" (TInt TI64) 0); (TElem "entries" (TArray (TNamedStruct "struct.perf_branch_entry" 0) 0) 8)]]).

Definition s_union_perf_mem_data_src :=
    (TStruct 8 [[(TElem "val" (TInt TI64) 0)]]).

Definition s_struct_perf_callchain_entry :=
    (TStruct 8 [[(TElem "nr" (TInt TI64) 0); (TElem "ip" (TArray (TInt TI64) 0) 8)]]).

Definition s_struct_perf_regs :=
    (TStruct 16 [[(TElem "abi" (TInt TI64) 0); (TElem "regs" (TPtr (TNamedStruct "struct.pt_regs" 320)) 8)]]).

Definition s_struct_pt_regs :=
    (TStruct 320 [[(TElem "pt_regs.0" (TNamedStruct "union.anon.68" 272) 0); (TElem "orig_x0" (TInt TI64) 272); (TElem "syscallno" (TInt TI32) 280); (TElem "unused2" (TInt TI32) 284); (TElem "orig_addr_limit" (TInt TI64) 288); (TElem "pmr_save" (TInt TI64) 296); (TElem "stackframe" (TArray (TInt TI64) 2) 304)]]).

Definition s_struct_trace_event_call :=
    (TStruct 0 [[ ]]).

Definition s_struct_event_filter :=
    (TStruct 0 [[ ]]).

Definition s_struct_ftrace_ops :=
    (TStruct 160 [[(TElem "func" (TPtr (TFunction TVoid [[(TInt TI64); (TInt TI64); (TPtr (TNamedStruct "struct.ftrace_ops" 160)); (TPtr (TNamedStruct "struct.pt_regs" 320))]])) 0); (TElem "next" (TPtr (TNamedStruct "struct.ftrace_ops" 160)) 8); (TElem "flags" (TInt TI64) 16); (TElem "private" (TPtr (TInt TI8)) 24); (TElem "saved_func" (TPtr (TFunction TVoid [[(TInt TI64); (TInt TI64); (TPtr (TNamedStruct "struct.ftrace_ops" 160)); (TPtr (TNamedStruct "struct.pt_regs" 320))]])) 32); (TElem "local_hash" (TNamedStruct "struct.ftrace_ops_hash" 48) 40); (TElem "func_hash" (TPtr (TNamedStruct "struct.ftrace_ops_hash" 48)) 88); (TElem "old_hash" (TNamedStruct "struct.ftrace_ops_hash" 48) 96); (TElem "trampoline" (TInt TI64) 144); (TElem "trampoline_size" (TInt TI64) 152)]]).

Definition s_struct_ftrace_ops_hash :=
    (TStruct 48 [[(TElem "notrace_hash" (TPtr (TNamedStruct "struct.ftrace_hash" 0)) 0); (TElem "filter_hash" (TPtr (TNamedStruct "struct.ftrace_hash" 0)) 8); (TElem "regex_lock" (TNamedStruct "struct.mutex" 32) 16)]]).

Definition s_struct_ftrace_hash :=
    (TStruct 0 [[ ]]).

Definition s_struct_perf_event_groups :=
    (TStruct 16 [[(TElem "tree" (TNamedStruct "struct.rb_root" 8) 0); (TElem "index" (TInt TI64) 8)]]).

Definition s_struct_tlbflush_unmap_batch :=
    (TStruct 0 [[ ]]).

Definition s_struct_page_frag :=
    (TStruct 16 [[(TElem "page" (TPtr (TNamedStruct "struct.page" 64)) 0); (TElem "offset" (TInt TI32) 8); (TElem "size" (TInt TI32) 12)]]).

Definition s_struct_task_delay_info :=
    (TStruct 0 [[ ]]).

Definition s_struct_latency_record :=
    (TStruct 120 [[(TElem "backtrace" (TArray (TInt TI64) 12) 0); (TElem "count" (TInt TI32) 96); (TElem "time" (TInt TI64) 104); (TElem "max" (TInt TI64) 112)]]).

Definition s_struct_ftrace_ret_stack :=
    (TStruct 40 [[(TElem "ret" (TInt TI64) 0); (TElem "func" (TInt TI64) 8); (TElem "calltime" (TInt TI64) 16); (TElem "subtime" (TInt TI64) 24); (TElem "fp" (TInt TI64) 32)]]).

Definition s_struct_mem_cgroup :=
    (TStruct 0 [[ ]]).

Definition s_struct_vm_struct :=
    (TStruct 64 [[(TElem "next" (TPtr (TNamedStruct "struct.vm_struct" 64)) 0); (TElem "addr" (TPtr (TInt TI8)) 8); (TElem "size" (TInt TI64) 16); (TElem "flags" (TInt TI64) 24); (TElem "pages" (TPtr (TPtr (TNamedStruct "struct.page" 64))) 32); (TElem "nr_pages" (TInt TI32) 40); (TElem "phys_addr" (TInt TI64) 48); (TElem "caller" (TPtr (TInt TI8)) 56)]]).

Definition s_struct_thread_struct :=
    (TStruct 976 [[(TElem "cpu_context" (TNamedStruct "struct.cpu_context" 104) 0); (TElem "uw" (TNamedStruct "struct.anon.72" 544) 112); (TElem "fpsimd_cpu" (TInt TI32) 656); (TElem "sve_state" (TPtr (TInt TI8)) 664); (TElem "sve_vl" (TInt TI32) 672); (TElem "sve_vl_onexec" (TInt TI32) 676); (TElem "fault_address" (TInt TI64) 680); (TElem "fault_code" (TInt TI64) 688); (TElem "debug" (TNamedStruct "struct.debug_info" 272) 696)]]).

Definition s_struct_cpu_context :=
    (TStruct 104 [[(TElem "x19" (TInt TI64) 0); (TElem "x20" (TInt TI64) 8); (TElem "x21" (TInt TI64) 16); (TElem "x22" (TInt TI64) 24); (TElem "x23" (TInt TI64) 32); (TElem "x24" (TInt TI64) 40); (TElem "x25" (TInt TI64) 48); (TElem "x26" (TInt TI64) 56); (TElem "x27" (TInt TI64) 64); (TElem "x28" (TInt TI64) 72); (TElem "fp" (TInt TI64) 80); (TElem "sp" (TInt TI64) 88); (TElem "pc" (TInt TI64) 96)]]).

Definition s_struct_debug_info :=
    (TStruct 272 [[(TElem "suspended_step" (TInt TI32) 0); (TElem "bps_disabled" (TInt TI32) 4); (TElem "wps_disabled" (TInt TI32) 8); (TElem "hbp_break" (TArray (TPtr (TNamedStruct "struct.perf_event" 1136)) 16) 16); (TElem "hbp_watch" (TArray (TPtr (TNamedStruct "struct.perf_event" 1136)) 16) 144)]]).

Definition s_struct_fs_pin :=
    (TStruct 0 [[ ]]).

Definition s_struct_file_ra_state :=
    (TStruct 32 [[(TElem "start" (TInt TI64) 0); (TElem "size" (TInt TI32) 8); (TElem "async_size" (TInt TI32) 12); (TElem "ra_pages" (TInt TI32) 16); (TElem "mmap_miss" (TInt TI32) 20); (TElem "prev_pos" (TInt TI64) 24)]]).

Definition s_struct_module_param_attrs :=
    (TStruct 0 [[ ]]).

Definition s_struct_module_attribute :=
    (TStruct 56 [[(TElem "attr" (TNamedStruct "struct.attribute" 16) 0); (TElem "show" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.module_attribute" 56)); (TPtr (TNamedStruct "struct.module_kobject" 96)); (TPtr (TInt TI8))]])) 16); (TElem "store" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.module_attribute" 56)); (TPtr (TNamedStruct "struct.module_kobject" 96)); (TPtr (TInt TI8)); (TInt TI64)]])) 24); (TElem "setup" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.module" 0)); (TPtr (TInt TI8))]])) 32); (TElem "test" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.module" 0))]])) 40); (TElem "free" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.module" 0))]])) 48)]]).

Definition s_struct_kernel_symbol :=
    (TStruct 12 [[(TElem "value_offset" (TInt TI32) 0); (TElem "name_offset" (TInt TI32) 4); (TElem "namespace_offset" (TInt TI32) 8)]]).

Definition s_struct_kernel_param :=
    (TStruct 40 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "mod" (TPtr (TNamedStruct "struct.module" 0)) 8); (TElem "ops" (TPtr (TNamedStruct "struct.kernel_param_ops" 32)) 16); (TElem "perm" (TInt TI16) 24); (TElem "level" (TInt TI8) 26); (TElem "flags" (TInt TI8) 27); (TElem "kernel_param.6" (TNamedStruct "union.anon.14" 8) 32)]]).

Definition s_struct_kernel_param_ops :=
    (TStruct 32 [[(TElem "flags" (TInt TI32) 0); (TElem "set" (TPtr (TFunction (TInt TI32) [[(TPtr (TInt TI8)); (TPtr (TNamedStruct "struct.kernel_param" 40))]])) 8); (TElem "get" (TPtr (TFunction (TInt TI32) [[(TPtr (TInt TI8)); (TPtr (TNamedStruct "struct.kernel_param" 40))]])) 16); (TElem "free" (TPtr (TFunction TVoid [[(TPtr (TInt TI8))]])) 24)]]).

Definition s_struct_exception_table_entry :=
    (TStruct 8 [[(TElem "insn" (TInt TI32) 0); (TElem "fixup" (TInt TI32) 4)]]).

Definition s_struct_module_layout :=
    (TStruct 80 [[(TElem "base" (TPtr (TInt TI8)) 0); (TElem "size" (TInt TI32) 8); (TElem "text_size" (TInt TI32) 12); (TElem "ro_size" (TInt TI32) 16); (TElem "ro_after_init_size" (TInt TI32) 20); (TElem "mtn" (TNamedStruct "struct.mod_tree_node" 56) 24)]]).

Definition s_struct_mod_tree_node :=
    (TStruct 56 [[(TElem "mod" (TPtr (TNamedStruct "struct.module" 0)) 0); (TElem "node" (TNamedStruct "struct.latch_tree_node" 48) 8)]]).

Definition s_struct_latch_tree_node :=
    (TStruct 48 [[(TElem "node" (TArray (TNamedStruct "struct.rb_node" 24) 2) 0)]]).

Definition s_struct_mod_arch_specific :=
    (TStruct 32 [[(TElem "core" (TNamedStruct "struct.mod_plt_sec" 12) 0); (TElem "init" (TNamedStruct "struct.mod_plt_sec" 12) 12); (TElem "ftrace_trampoline" (TPtr (TNamedStruct "struct.plt_entry" 12)) 24)]]).

Definition s_struct_mod_plt_sec :=
    (TStruct 12 [[(TElem "plt_shndx" (TInt TI32) 0); (TElem "plt_num_entries" (TInt TI32) 4); (TElem "plt_max_entries" (TInt TI32) 8)]]).

Definition s_struct_plt_entry :=
    (TStruct 12 [[(TElem "adrp" (TInt TI32) 0); (TElem "add" (TInt TI32) 4); (TElem "br" (TInt TI32) 8)]]).

Definition s_struct_bug_entry :=
    (TStruct 12 [[(TElem "bug_addr_disp" (TInt TI32) 0); (TElem "file_disp" (TInt TI32) 4); (TElem "line" (TInt TI16) 8); (TElem "flags" (TInt TI16) 10)]]).

Definition s_struct_mod_kallsyms :=
    (TStruct 32 [[(TElem "symtab" (TPtr (TNamedStruct "struct.elf64_sym" 24)) 0); (TElem "num_symtab" (TInt TI32) 8); (TElem "strtab" (TPtr (TInt TI8)) 16); (TElem "typetab" (TPtr (TInt TI8)) 24)]]).

Definition s_struct_elf64_sym :=
    (TStruct 24 [[(TElem "st_name" (TInt TI32) 0); (TElem "st_info" (TInt TI8) 4); (TElem "st_other" (TInt TI8) 5); (TElem "st_shndx" (TInt TI16) 6); (TElem "st_value" (TInt TI64) 8); (TElem "st_size" (TInt TI64) 16)]]).

Definition s_struct_module_sect_attrs :=
    (TStruct 0 [[ ]]).

Definition s_struct_module_notes_attrs :=
    (TStruct 0 [[ ]]).

Definition s_struct_srcu_struct :=
    (TStruct 1944 [[(TElem "node" (TArray (TNamedStruct "struct.srcu_node" 96) 17) 0); (TElem "level" (TArray (TPtr (TNamedStruct "struct.srcu_node" 96)) 3) 1632); (TElem "srcu_cb_mutex" (TNamedStruct "struct.mutex" 32) 1656); (TElem "lock" (TNamedStruct "struct.spinlock" 4) 1688); (TElem "srcu_gp_mutex" (TNamedStruct "struct.mutex" 32) 1696); (TElem "srcu_idx" (TInt TI32) 1728); (TElem "srcu_gp_seq" (TInt TI64) 1736); (TElem "srcu_gp_seq_needed" (TInt TI64) 1744); (TElem "srcu_gp_seq_needed_exp" (TInt TI64) 1752); (TElem "srcu_last_gp_end" (TInt TI64) 1760); (TElem "sda" (TPtr (TNamedStruct "struct.srcu_data" 0)) 1768); (TElem "srcu_barrier_seq" (TInt TI64) 1776); (TElem "srcu_barrier_mutex" (TNamedStruct "struct.mutex" 32) 1784); (TElem "srcu_barrier_completion" (TNamedStruct "struct.completion" 32) 1816); (TElem "srcu_barrier_cpu_cnt" (TNamedStruct "struct.atomic_t" 4) 1848); (TElem "work" (TNamedStruct "struct.delayed_work" 88) 1856)]]).

Definition s_struct_srcu_node :=
    (TStruct 96 [[(TElem "lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "srcu_have_cbs" (TArray (TInt TI64) 4) 8); (TElem "srcu_data_have_cbs" (TArray (TInt TI64) 4) 40); (TElem "srcu_gp_seq_needed_exp" (TInt TI64) 72); (TElem "srcu_parent" (TPtr (TNamedStruct "struct.srcu_node" 96)) 80); (TElem "grplo" (TInt TI32) 88); (TElem "grphi" (TInt TI32) 92)]]).

Definition s_struct_rcu_segcblist :=
    (TStruct 96 [[(TElem "head" (TPtr (TNamedStruct "struct.callback_head" 16)) 0); (TElem "tails" (TArray (TPtr (TPtr (TNamedStruct "struct.callback_head" 16))) 4) 8); (TElem "gp_seq" (TArray (TInt TI64) 4) 40); (TElem "len" (TInt TI64) 72); (TElem "len_lazy" (TInt TI64) 80); (TElem "enabled" (TInt TI8) 88); (TElem "offloaded" (TInt TI8) 89)]]).

Definition s_struct_delayed_work :=
    (TStruct 88 [[(TElem "work" (TNamedStruct "struct.work_struct" 32) 0); (TElem "timer" (TNamedStruct "struct.timer_list" 40) 32); (TElem "wq" (TPtr (TNamedStruct "struct.workqueue_struct" 0)) 72); (TElem "cpu" (TInt TI32) 80)]]).

Definition s_struct_tracepoint :=
    (TStruct 48 [[(TElem "name" (TPtr (TInt TI8)) 0); (TElem "key" (TNamedStruct "struct.static_key" 16) 8); (TElem "regfunc" (TPtr (TFunction (TInt TI32) [[ ]])) 24); (TElem "unregfunc" (TPtr (TFunction TVoid [[ ]])) 32); (TElem "funcs" (TPtr (TNamedStruct "struct.tracepoint_func" 24)) 40)]]).

Definition s_struct_static_key :=
    (TStruct 16 [[(TElem "enabled" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "static_key.1" (TNamedStruct "union.anon.15" 8) 8)]]).

Definition s_struct_jump_entry :=
    (TStruct 16 [[(TElem "code" (TInt TI32) 0); (TElem "target" (TInt TI32) 4); (TElem "key" (TInt TI64) 8)]]).

Definition s_struct_tracepoint_func :=
    (TStruct 24 [[(TElem "func" (TPtr (TInt TI8)) 0); (TElem "data" (TPtr (TInt TI8)) 8); (TElem "prio" (TInt TI32) 16)]]).

Definition s_struct_trace_eval_map :=
    (TStruct 24 [[(TElem "system" (TPtr (TInt TI8)) 0); (TElem "eval_string" (TPtr (TInt TI8)) 8); (TElem "eval_value" (TInt TI64) 16)]]).

Definition s_struct_error_injection_entry :=
    (TStruct 16 [[(TElem "addr" (TInt TI64) 0); (TElem "etype" (TInt TI32) 8)]]).

Definition s_struct_super_operations :=
    (TStruct 216 [[(TElem "alloc_inode" (TPtr (TFunction (TPtr (TNamedStruct "struct.inode" 584)) [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 0); (TElem "destroy_inode" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.inode" 584))]])) 8); (TElem "free_inode" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.inode" 584))]])) 16); (TElem "dirty_inode" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.inode" 584)); (TInt TI32)]])) 24); (TElem "write_inode" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.writeback_control" 0))]])) 32); (TElem "drop_inode" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584))]])) 40); (TElem "evict_inode" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.inode" 584))]])) 48); (TElem "put_super" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 56); (TElem "sync_fs" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 64); (TElem "freeze_super" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 72); (TElem "freeze_fs" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 80); (TElem "thaw_super" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 88); (TElem "unfreeze_fs" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 96); (TElem "statfs" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.kstatfs" 0))]])) 104); (TElem "remount_fs" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TInt TI32)); (TPtr (TInt TI8))]])) 112); (TElem "umount_begin" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.super_block" 0))]])) 120); (TElem "show_options" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 128); (TElem "show_devname" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 136); (TElem "show_path" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 144); (TElem "show_stats" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 152); (TElem "quota_read" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 160); (TElem "quota_write" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32); (TPtr (TInt TI8)); (TInt TI64); (TInt TI64)]])) 168); (TElem "get_dquots" (TPtr (TFunction (TPtr (TPtr (TNamedStruct "struct.dquot" 208))) [[(TPtr (TNamedStruct "struct.inode" 584))]])) 176); (TElem "bdev_try_to_free_page" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.page" 64)); (TInt TI32)]])) 184); (TElem "nr_cached_objects" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.shrink_control" 32))]])) 192); (TElem "free_cached_objects" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.shrink_control" 32))]])) 200); (TElem "real_loop" (TPtr (TFunction (TPtr (TNamedStruct "struct.file" 248)) [[(TPtr (TNamedStruct "struct.file" 248))]])) 208)]]).

Definition s_struct_writeback_control :=
    (TStruct 0 [[ ]]).

Definition s_struct_kstatfs :=
    (TStruct 0 [[ ]]).

Definition s_struct_dquot :=
    (TStruct 208 [[(TElem "dq_hash" (TNamedStruct "struct.hlist_node" 16) 0); (TElem "dq_inuse" (TNamedStruct "struct.list_head" 16) 16); (TElem "dq_free" (TNamedStruct "struct.list_head" 16) 32); (TElem "dq_dirty" (TNamedStruct "struct.list_head" 16) 48); (TElem "dq_lock" (TNamedStruct "struct.mutex" 32) 64); (TElem "dq_dqb_lock" (TNamedStruct "struct.spinlock" 4) 96); (TElem "dq_count" (TNamedStruct "struct.atomic_t" 4) 100); (TElem "dq_sb" (TPtr (TNamedStruct "struct.super_block" 0)) 104); (TElem "dq_id" (TNamedStruct "struct.kqid" 8) 112); (TElem "dq_off" (TInt TI64) 120); (TElem "dq_flags" (TInt TI64) 128); (TElem "dq_dqb" (TNamedStruct "struct.mem_dqblk" 72) 136)]]).

Definition s_struct_kqid :=
    (TStruct 8 [[(TElem "kqid.0" (TNamedStruct "union.anon.16" 4) 0); (TElem "type" (TInt TI32) 4)]]).

Definition s_struct_mem_dqblk :=
    (TStruct 72 [[(TElem "dqb_bhardlimit" (TInt TI64) 0); (TElem "dqb_bsoftlimit" (TInt TI64) 8); (TElem "dqb_curspace" (TInt TI64) 16); (TElem "dqb_rsvspace" (TInt TI64) 24); (TElem "dqb_ihardlimit" (TInt TI64) 32); (TElem "dqb_isoftlimit" (TInt TI64) 40); (TElem "dqb_curinodes" (TInt TI64) 48); (TElem "dqb_btime" (TInt TI64) 56); (TElem "dqb_itime" (TInt TI64) 64)]]).

Definition s_struct_shrink_control :=
    (TStruct 32 [[(TElem "gfp_mask" (TInt TI32) 0); (TElem "nid" (TInt TI32) 4); (TElem "nr_to_scan" (TInt TI64) 8); (TElem "nr_scanned" (TInt TI64) 16); (TElem "memcg" (TPtr (TNamedStruct "struct.mem_cgroup" 0)) 24)]]).

Definition s_struct_dquot_operations :=
    (TStruct 88 [[(TElem "write_dquot" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 0); (TElem "alloc_dquot" (TPtr (TFunction (TPtr (TNamedStruct "struct.dquot" 208)) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 8); (TElem "destroy_dquot" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 16); (TElem "acquire_dquot" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 24); (TElem "release_dquot" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 32); (TElem "mark_dirty" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 40); (TElem "write_info" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 48); (TElem "get_reserved_space" (TPtr (TFunction (TPtr (TInt TI64)) [[(TPtr (TNamedStruct "struct.inode" 584))]])) 56); (TElem "get_projid" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.kprojid_t" 0))]])) 64); (TElem "get_inode_usage" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TInt TI64))]])) 72); (TElem "get_next_id" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.kqid" 8))]])) 80)]]).

Definition s_struct_quotactl_ops :=
    (TStruct 88 [[(TElem "quota_on" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32); (TInt TI32); (TPtr (TNamedStruct "struct.path" 16))]])) 0); (TElem "quota_off" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 8); (TElem "quota_enable" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 16); (TElem "quota_disable" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 24); (TElem "quota_sync" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 32); (TElem "set_info" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32); (TPtr (TNamedStruct "struct.qc_info" 32))]])) 40); (TElem "get_dqblk" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI64); (TPtr (TNamedStruct "struct.qc_dqblk" 120))]])) 48); (TElem "get_nextdqblk" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.kqid" 8)); (TPtr (TNamedStruct "struct.qc_dqblk" 120))]])) 56); (TElem "set_dqblk" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI64); (TPtr (TNamedStruct "struct.qc_dqblk" 120))]])) 64); (TElem "get_state" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.qc_state" 176))]])) 72); (TElem "rm_xquota" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 80)]]).

Definition s_struct_qc_info :=
    (TStruct 32 [[(TElem "i_fieldmask" (TInt TI32) 0); (TElem "i_flags" (TInt TI32) 4); (TElem "i_spc_timelimit" (TInt TI32) 8); (TElem "i_ino_timelimit" (TInt TI32) 12); (TElem "i_rt_spc_timelimit" (TInt TI32) 16); (TElem "i_spc_warnlimit" (TInt TI32) 20); (TElem "i_ino_warnlimit" (TInt TI32) 24); (TElem "i_rt_spc_warnlimit" (TInt TI32) 28)]]).

Definition s_struct_qc_dqblk :=
    (TStruct 120 [[(TElem "d_fieldmask" (TInt TI32) 0); (TElem "d_spc_hardlimit" (TInt TI64) 8); (TElem "d_spc_softlimit" (TInt TI64) 16); (TElem "d_ino_hardlimit" (TInt TI64) 24); (TElem "d_ino_softlimit" (TInt TI64) 32); (TElem "d_space" (TInt TI64) 40); (TElem "d_ino_count" (TInt TI64) 48); (TElem "d_ino_timer" (TInt TI64) 56); (TElem "d_spc_timer" (TInt TI64) 64); (TElem "d_ino_warns" (TInt TI32) 72); (TElem "d_spc_warns" (TInt TI32) 76); (TElem "d_rt_spc_hardlimit" (TInt TI64) 80); (TElem "d_rt_spc_softlimit" (TInt TI64) 88); (TElem "d_rt_space" (TInt TI64) 96); (TElem "d_rt_spc_timer" (TInt TI64) 104); (TElem "d_rt_spc_warns" (TInt TI32) 112)]]).

Definition s_struct_qc_state :=
    (TStruct 176 [[(TElem "s_incoredqs" (TInt TI32) 0); (TElem "s_state" (TArray (TNamedStruct "struct.qc_type_state" 56) 3) 8)]]).

Definition s_struct_qc_type_state :=
    (TStruct 56 [[(TElem "flags" (TInt TI32) 0); (TElem "spc_timelimit" (TInt TI32) 4); (TElem "ino_timelimit" (TInt TI32) 8); (TElem "rt_spc_timelimit" (TInt TI32) 12); (TElem "spc_warnlimit" (TInt TI32) 16); (TElem "ino_warnlimit" (TInt TI32) 20); (TElem "rt_spc_warnlimit" (TInt TI32) 24); (TElem "ino" (TInt TI64) 32); (TElem "blocks" (TInt TI64) 40); (TElem "nextents" (TInt TI64) 48)]]).

Definition s_struct_export_operations :=
    (TStruct 0 [[ ]]).

Definition s_struct_xattr_handler :=
    (TStruct 0 [[ ]]).

Definition s_struct_fscrypt_operations :=
    (TStruct 0 [[ ]]).

Definition s_struct_hlist_bl_head :=
    (TStruct 8 [[(TElem "first" (TPtr (TNamedStruct "struct.hlist_bl_node" 16)) 0)]]).

Definition s_struct_block_device :=
    (TStruct 216 [[(TElem "bd_dev" (TInt TI32) 0); (TElem "bd_openers" (TInt TI32) 4); (TElem "bd_inode" (TPtr (TNamedStruct "struct.inode" 584)) 8); (TElem "bd_super" (TPtr (TNamedStruct "struct.super_block" 0)) 16); (TElem "bd_mutex" (TNamedStruct "struct.mutex" 32) 24); (TElem "bd_claiming" (TPtr (TInt TI8)) 56); (TElem "bd_holder" (TPtr (TInt TI8)) 64); (TElem "bd_holders" (TInt TI32) 72); (TElem "bd_write_holder" (TInt TI8) 76); (TElem "bd_holder_disks" (TNamedStruct "struct.list_head" 16) 80); (TElem "bd_contains" (TPtr (TNamedStruct "struct.block_device" 216)) 96); (TElem "bd_block_size" (TInt TI32) 104); (TElem "bd_partno" (TInt TI8) 108); (TElem "bd_part" (TPtr (TNamedStruct "struct.hd_struct" 0)) 112); (TElem "bd_part_count" (TInt TI32) 120); (TElem "bd_invalidated" (TInt TI32) 124); (TElem "bd_disk" (TPtr (TNamedStruct "struct.gendisk" 0)) 128); (TElem "bd_queue" (TPtr (TNamedStruct "struct.request_queue" 0)) 136); (TElem "bd_bdi" (TPtr (TNamedStruct "struct.backing_dev_info" 0)) 144); (TElem "bd_list" (TNamedStruct "struct.list_head" 16) 152); (TElem "bd_private" (TInt TI64) 168); (TElem "bd_fsfreeze_count" (TInt TI32) 176); (TElem "bd_fsfreeze_mutex" (TNamedStruct "struct.mutex" 32) 184)]]).

Definition s_struct_hd_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_gendisk :=
    (TStruct 0 [[ ]]).

Definition s_struct_mtd_info :=
    (TStruct 0 [[ ]]).

Definition s_struct_quota_info :=
    (TStruct 312 [[(TElem "flags" (TInt TI32) 0); (TElem "dqio_sem" (TNamedStruct "struct.rw_semaphore" 40) 8); (TElem "files" (TArray (TPtr (TNamedStruct "struct.inode" 584)) 3) 48); (TElem "info" (TArray (TNamedStruct "struct.mem_dqinfo" 72) 3) 72); (TElem "ops" (TArray (TPtr (TNamedStruct "struct.quota_format_ops" 64)) 3) 288)]]).

Definition s_struct_mem_dqinfo :=
    (TStruct 72 [[(TElem "dqi_format" (TPtr (TNamedStruct "struct.quota_format_type" 32)) 0); (TElem "dqi_fmt_id" (TInt TI32) 8); (TElem "dqi_dirty_list" (TNamedStruct "struct.list_head" 16) 16); (TElem "dqi_flags" (TInt TI64) 32); (TElem "dqi_bgrace" (TInt TI32) 40); (TElem "dqi_igrace" (TInt TI32) 44); (TElem "dqi_max_spc_limit" (TInt TI64) 48); (TElem "dqi_max_ino_limit" (TInt TI64) 56); (TElem "dqi_priv" (TPtr (TInt TI8)) 64)]]).

Definition s_struct_quota_format_type :=
    (TStruct 32 [[(TElem "qf_fmt_id" (TInt TI32) 0); (TElem "qf_ops" (TPtr (TNamedStruct "struct.quota_format_ops" 64)) 8); (TElem "qf_owner" (TPtr (TNamedStruct "struct.module" 0)) 16); (TElem "qf_next" (TPtr (TNamedStruct "struct.quota_format_type" 32)) 24)]]).

Definition s_struct_quota_format_ops :=
    (TStruct 64 [[(TElem "check_quota_file" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 0); (TElem "read_file_info" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 8); (TElem "write_file_info" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 16); (TElem "free_file_info" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TInt TI32)]])) 24); (TElem "read_dqblk" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 32); (TElem "commit_dqblk" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 40); (TElem "release_dqblk" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dquot" 208))]])) 48); (TElem "get_next_id" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.super_block" 0)); (TPtr (TNamedStruct "struct.kqid" 8))]])) 56)]]).

Definition s_struct_sb_writers :=
    (TStruct 368 [[(TElem "frozen" (TInt TI32) 0); (TElem "wait_unfrozen" (TNamedStruct "struct.wait_queue_head" 24) 8); (TElem "rw_sem" (TArray (TNamedStruct "struct.percpu_rw_semaphore" 112) 3) 32)]]).

Definition s_struct_percpu_rw_semaphore :=
    (TStruct 112 [[(TElem "rss" (TNamedStruct "struct.rcu_sync" 48) 0); (TElem "read_count" (TPtr (TInt TI32)) 48); (TElem "rw_sem" (TNamedStruct "struct.rw_semaphore" 40) 56); (TElem "writer" (TNamedStruct "struct.rcuwait" 8) 96); (TElem "readers_block" (TInt TI32) 104)]]).

Definition s_struct_rcu_sync :=
    (TStruct 48 [[(TElem "gp_state" (TInt TI32) 0); (TElem "gp_count" (TInt TI32) 4); (TElem "gp_wait" (TNamedStruct "struct.wait_queue_head" 24) 8); (TElem "cb_head" (TNamedStruct "struct.callback_head" 16) 32)]]).

Definition s_struct_rcuwait :=
    (TStruct 8 [[(TElem "task" (TPtr (TNamedStruct "struct.task_struct" 0)) 0)]]).

Definition s_struct_fsnotify_mark_connector :=
    (TStruct 0 [[ ]]).

Definition s_struct_shrinker :=
    (TStruct 64 [[(TElem "count_objects" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.shrinker" 64)); (TPtr (TNamedStruct "struct.shrink_control" 32))]])) 0); (TElem "scan_objects" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.shrinker" 64)); (TPtr (TNamedStruct "struct.shrink_control" 32))]])) 8); (TElem "batch" (TInt TI64) 16); (TElem "seeks" (TInt TI32) 24); (TElem "flags" (TInt TI32) 28); (TElem "list" (TNamedStruct "struct.list_head" 16) 32); (TElem "id" (TInt TI32) 48); (TElem "nr_deferred" (TPtr (TNamedStruct "struct.atomic64_t" 8)) 56)]]).

Definition s_struct_list_lru :=
    (TStruct 32 [[(TElem "node" (TPtr (TNamedStruct "struct.list_lru_node" 0)) 0); (TElem "list" (TNamedStruct "struct.list_head" 16) 8); (TElem "shrinker_id" (TInt TI32) 24); (TElem "memcg_aware" (TInt TI8) 28)]]).

Definition s_struct_list_lru_one :=
    (TStruct 24 [[(TElem "list" (TNamedStruct "struct.list_head" 16) 0); (TElem "nr_items" (TInt TI64) 16)]]).

Definition s_struct_list_lru_memcg :=
    (TStruct 16 [[(TElem "rcu" (TNamedStruct "struct.callback_head" 16) 0); (TElem "lru" (TArray (TPtr (TNamedStruct "struct.list_lru_one" 24)) 0) 16)]]).

Definition s_struct_delayed_call :=
    (TStruct 16 [[(TElem "fn" (TPtr (TFunction TVoid [[(TPtr (TInt TI8))]])) 0); (TElem "arg" (TPtr (TInt TI8)) 8)]]).

Definition s_struct_iattr :=
    (TStruct 80 [[(TElem "ia_valid" (TInt TI32) 0); (TElem "ia_mode" (TInt TI16) 4); (TElem "ia_uid" (TNamedStruct "struct.kuid_t" 4) 8); (TElem "ia_gid" (TNamedStruct "struct.kgid_t" 4) 12); (TElem "ia_size" (TInt TI64) 16); (TElem "ia_atime" (TNamedStruct "struct.timespec64" 16) 24); (TElem "ia_mtime" (TNamedStruct "struct.timespec64" 16) 40); (TElem "ia_ctime" (TNamedStruct "struct.timespec64" 16) 56); (TElem "ia_file" (TPtr (TNamedStruct "struct.file" 248)) 72)]]).

Definition s_struct_timespec64 :=
    (TStruct 16 [[(TElem "tv_sec" (TInt TI64) 0); (TElem "tv_nsec" (TInt TI64) 8)]]).

Definition s_struct_kstat :=
    (TStruct 136 [[(TElem "result_mask" (TInt TI32) 0); (TElem "mode" (TInt TI16) 4); (TElem "nlink" (TInt TI32) 8); (TElem "blksize" (TInt TI32) 12); (TElem "attributes" (TInt TI64) 16); (TElem "attributes_mask" (TInt TI64) 24); (TElem "ino" (TInt TI64) 32); (TElem "dev" (TInt TI32) 40); (TElem "rdev" (TInt TI32) 44); (TElem "uid" (TNamedStruct "struct.kuid_t" 4) 48); (TElem "gid" (TNamedStruct "struct.kgid_t" 4) 52); (TElem "size" (TInt TI64) 56); (TElem "atime" (TNamedStruct "struct.timespec64" 16) 64); (TElem "mtime" (TNamedStruct "struct.timespec64" 16) 80); (TElem "ctime" (TNamedStruct "struct.timespec64" 16) 96); (TElem "btime" (TNamedStruct "struct.timespec64" 16) 112); (TElem "blocks" (TInt TI64) 128)]]).

Definition s_struct_fiemap_extent_info :=
    (TStruct 24 [[(TElem "fi_flags" (TInt TI32) 0); (TElem "fi_extents_mapped" (TInt TI32) 4); (TElem "fi_extents_max" (TInt TI32) 8); (TElem "fi_extents_start" (TPtr (TNamedStruct "struct.fiemap_extent" 56)) 16)]]).

Definition s_struct_fiemap_extent :=
    (TStruct 56 [[(TElem "fe_logical" (TInt TI64) 0); (TElem "fe_physical" (TInt TI64) 8); (TElem "fe_length" (TInt TI64) 16); (TElem "fe_reserved64" (TArray (TInt TI64) 2) 24); (TElem "fe_flags" (TInt TI32) 40); (TElem "fe_reserved" (TArray (TInt TI32) 3) 44)]]).

Definition s_struct_bdi_writeback :=
    (TStruct 0 [[ ]]).

Definition s_struct_file_lock_context :=
    (TStruct 56 [[(TElem "flc_lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "flc_flock" (TNamedStruct "struct.list_head" 16) 8); (TElem "flc_posix" (TNamedStruct "struct.list_head" 16) 24); (TElem "flc_lease" (TNamedStruct "struct.list_head" 16) 40)]]).

Definition s_struct_fscrypt_info :=
    (TStruct 0 [[ ]]).

Definition s_struct_address_space_operations :=
    (TStruct 168 [[(TElem "writepage" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.page" 64)); (TPtr (TNamedStruct "struct.writeback_control" 0))]])) 0); (TElem "readpage" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.page" 64))]])) 8); (TElem "writepages" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.address_space" 160)); (TPtr (TNamedStruct "struct.writeback_control" 0))]])) 16); (TElem "set_page_dirty" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.page" 64))]])) 24); (TElem "readpages" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.address_space" 160)); (TPtr (TNamedStruct "struct.list_head" 16)); (TInt TI32)]])) 32); (TElem "write_begin" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.address_space" 160)); (TInt TI64); (TInt TI32); (TInt TI32); (TPtr (TPtr (TNamedStruct "struct.page" 64))); (TPtr (TPtr (TInt TI8)))]])) 40); (TElem "write_end" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.file" 248)); (TPtr (TNamedStruct "struct.address_space" 160)); (TInt TI64); (TInt TI32); (TInt TI32); (TPtr (TNamedStruct "struct.page" 64)); (TPtr (TInt TI8))]])) 48); (TElem "bmap" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.address_space" 160)); (TInt TI64)]])) 56); (TElem "invalidatepage" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.page" 64)); (TInt TI32); (TInt TI32)]])) 64); (TElem "releasepage" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.page" 64)); (TInt TI32)]])) 72); (TElem "freepage" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.page" 64))]])) 80); (TElem "direct_IO" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.kiocb" 48)); (TPtr (TNamedStruct "struct.iov_iter" 40))]])) 88); (TElem "migratepage" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.address_space" 160)); (TPtr (TNamedStruct "struct.page" 64)); (TPtr (TNamedStruct "struct.page" 64)); (TInt TI32)]])) 96); (TElem "isolate_page" (TPtr (TFunction TBool [[(TPtr (TNamedStruct "struct.page" 64)); (TInt TI32)]])) 104); (TElem "putback_page" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.page" 64))]])) 112); (TElem "launder_page" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.page" 64))]])) 120); (TElem "is_partially_uptodate" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.page" 64)); (TInt TI64); (TInt TI64)]])) 128); (TElem "is_dirty_writeback" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.page" 64)); (TPtr (TInt TI8)); (TPtr (TInt TI8))]])) 136); (TElem "error_remove_page" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.address_space" 160)); (TPtr (TNamedStruct "struct.page" 64))]])) 144); (TElem "swap_activate" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.swap_info_struct" 0)); (TPtr (TNamedStruct "struct.file" 248)); (TPtr (TInt TI64))]])) 152); (TElem "swap_deactivate" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.file" 248))]])) 160)]]).

Definition s_struct_swap_info_struct :=
    (TStruct 0 [[ ]]).

Definition s_struct_vm_userfaultfd_ctx :=
    (TStruct 0 [[ ]]).

Definition s_struct_mm_rss_stat :=
    (TStruct 32 [[(TElem "count" (TArray (TNamedStruct "struct.atomic64_t" 8) 4) 0)]]).

Definition s_struct_linux_binfmt :=
    (TStruct 0 [[ ]]).

Definition s_struct_core_state :=
    (TStruct 56 [[(TElem "nr_threads" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "dumper" (TNamedStruct "struct.core_thread" 16) 8); (TElem "startup" (TNamedStruct "struct.completion" 32) 24)]]).

Definition s_struct_core_thread :=
    (TStruct 16 [[(TElem "task" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "next" (TPtr (TNamedStruct "struct.core_thread" 16)) 8)]]).

Definition s_struct_kioctx_table :=
    (TStruct 0 [[ ]]).

Definition s_struct_mmu_notifier_mm :=
    (TStruct 16 [[(TElem "list" (TNamedStruct "struct.hlist_head" 8) 0); (TElem "lock" (TNamedStruct "struct.spinlock" 4) 8)]]).

Definition s_struct_uprobes_state :=
    (TStruct 0 [[ ]]).

Definition s_struct_kvm_memslots :=
    (TStruct 21520 [[(TElem "generation" (TInt TI64) 0); (TElem "memslots" (TArray (TNamedStruct "struct.kvm_memory_slot" 40) 512) 8); (TElem "id_to_index" (TArray (TInt TI16) 512) 20488); (TElem "lru_slot" (TNamedStruct "struct.atomic_t" 4) 21512); (TElem "used_slots" (TInt TI32) 21516)]]).

Definition s_struct_kvm_memory_slot :=
    (TStruct 40 [[(TElem "base_gfn" (TInt TI64) 0); (TElem "npages" (TInt TI64) 8); (TElem "dirty_bitmap" (TPtr (TInt TI64)) 16); (TElem "arch" (TNamedStruct "struct.kvm_arch_memory_slot" 0) 24); (TElem "userspace_addr" (TInt TI64) 24); (TElem "flags" (TInt TI32) 32); (TElem "id" (TInt TI16) 36)]]).

Definition s_struct_kvm_arch_memory_slot :=
    (TStruct 0 [[ ]]).

Definition s_struct_kvm_io_bus :=
    (TStruct 8 [[(TElem "dev_count" (TInt TI32) 0); (TElem "ioeventfd_count" (TInt TI32) 4); (TElem "range" (TArray (TNamedStruct "struct.kvm_io_range" 24) 0) 8)]]).

Definition s_struct_kvm_io_range :=
    (TStruct 24 [[(TElem "addr" (TInt TI64) 0); (TElem "len" (TInt TI32) 8); (TElem "dev" (TPtr (TNamedStruct "struct.kvm_io_device" 8)) 16)]]).

Definition s_struct_kvm_io_device :=
    (TStruct 8 [[(TElem "ops" (TPtr (TNamedStruct "struct.kvm_io_device_ops" 24)) 0)]]).

Definition s_struct_kvm_io_device_ops :=
    (TStruct 24 [[(TElem "read" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kvm_vcpu" 9056)); (TPtr (TNamedStruct "struct.kvm_io_device" 8)); (TInt TI64); (TInt TI32); (TPtr (TInt TI8))]])) 0); (TElem "write" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.kvm_vcpu" 9056)); (TPtr (TNamedStruct "struct.kvm_io_device" 8)); (TInt TI64); (TInt TI32); (TPtr (TInt TI8))]])) 8); (TElem "destructor" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.kvm_io_device" 8))]])) 16)]]).

Definition s_struct_kvm_vm_stat :=
    (TStruct 8 [[(TElem "remote_tlb_flush" (TInt TI64) 0)]]).

Definition s_struct_kvm_arch :=
    (TStruct 368 [[(TElem "vmid" (TNamedStruct "struct.kvm_vmid" 16) 0); (TElem "pgd" (TPtr (TNamedStruct "struct.pgd_t" 0)) 16); (TElem "pgd_phys" (TInt TI64) 24); (TElem "vtcr" (TInt TI64) 32); (TElem "last_vcpu_ran" (TPtr (TInt TI32)) 40); (TElem "max_vcpus" (TInt TI32) 48); (TElem "vgic" (TNamedStruct "struct.vgic_dist" 304) 56); (TElem "psci_version" (TInt TI32) 360)]]).

Definition s_struct_kvm_vmid :=
    (TStruct 16 [[(TElem "vmid_gen" (TInt TI64) 0); (TElem "vmid" (TInt TI32) 8)]]).

Definition s_struct_vgic_dist :=
    (TStruct 304 [[(TElem "in_kernel" (TInt TI8) 0); (TElem "ready" (TInt TI8) 1); (TElem "initialized" (TInt TI8) 2); (TElem "vgic_model" (TInt TI32) 4); (TElem "implementation_rev" (TInt TI32) 8); (TElem "v2_groups_user_writable" (TInt TI8) 12); (TElem "msis_require_devid" (TInt TI8) 13); (TElem "nr_spis" (TInt TI32) 16); (TElem "vgic_dist_base" (TInt TI64) 24); (TElem "vgic_dist.9" (TNamedStruct "union.anon.125" 16) 32); (TElem "enabled" (TInt TI8) 48); (TElem "spis" (TPtr (TNamedStruct "struct.vgic_irq" 112)) 56); (TElem "dist_iodev" (TNamedStruct "struct.vgic_io_device" 40) 64); (TElem "has_its" (TInt TI8) 104); (TElem "propbaser" (TInt TI64) 112); (TElem "lpi_list_lock" (TNamedStruct "struct.raw_spinlock" 4) 120); (TElem "lpi_list_head" (TNamedStruct "struct.list_head" 16) 128); (TElem "lpi_list_count" (TInt TI32) 144); (TElem "lpi_translation_cache" (TNamedStruct "struct.list_head" 16) 152); (TElem "iter" (TPtr (TNamedStruct "struct.vgic_state_iter" 0)) 168); (TElem "its_vm" (TNamedStruct "struct.its_vm" 128) 176)]]).

Definition s_struct_vgic_irq :=
    (TStruct 112 [[(TElem "irq_lock" (TNamedStruct "struct.raw_spinlock" 4) 0); (TElem "lpi_list" (TNamedStruct "struct.list_head" 16) 8); (TElem "ap_list" (TNamedStruct "struct.list_head" 16) 24); (TElem "vcpu" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 40); (TElem "target_vcpu" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 48); (TElem "intid" (TInt TI32) 56); (TElem "line_level" (TInt TI8) 60); (TElem "pending_latch" (TInt TI8) 61); (TElem "active" (TInt TI8) 62); (TElem "enabled" (TInt TI8) 63); (TElem "hw" (TInt TI8) 64); (TElem "refcount" (TNamedStruct "struct.kref" 4) 68); (TElem "hwintid" (TInt TI32) 72); (TElem "host_irq" (TInt TI32) 76); (TElem "vgic_irq.14" (TNamedStruct "union.anon.120" 4) 80); (TElem "source" (TInt TI8) 84); (TElem "active_source" (TInt TI8) 85); (TElem "priority" (TInt TI8) 86); (TElem "group" (TInt TI8) 87); (TElem "config" (TInt TI32) 88); (TElem "get_input_level" (TPtr (TFunction TBool [[(TInt TI32)]])) 96); (TElem "owner" (TPtr (TInt TI8)) 104)]]).

Definition s_struct_vgic_io_device :=
    (TStruct 40 [[(TElem "base_addr" (TInt TI64) 0); (TElem "vgic_io_device.1" (TNamedStruct "union.anon.121" 8) 8); (TElem "regions" (TPtr (TNamedStruct "struct.vgic_register_region" 0)) 16); (TElem "iodev_type" (TInt TI32) 24); (TElem "nr_regions" (TInt TI32) 28); (TElem "dev" (TNamedStruct "struct.kvm_io_device" 8) 32)]]).

Definition s_struct_vgic_register_region :=
    (TStruct 0 [[ ]]).

Definition s_struct_vgic_state_iter :=
    (TStruct 0 [[ ]]).

Definition s_struct_its_vm :=
    (TStruct 128 [[(TElem "fwnode" (TPtr (TNamedStruct "struct.fwnode_handle" 16)) 0); (TElem "domain" (TPtr (TNamedStruct "struct.irq_domain" 0)) 8); (TElem "vprop_page" (TPtr (TNamedStruct "struct.page" 64)) 16); (TElem "vpes" (TPtr (TPtr (TNamedStruct "struct.its_vpe" 48))) 24); (TElem "nr_vpes" (TInt TI32) 32); (TElem "db_lpi_base" (TInt TI64) 40); (TElem "db_bitmap" (TPtr (TInt TI64)) 48); (TElem "nr_db_lpis" (TInt TI32) 56); (TElem "vlpi_count" (TArray (TInt TI32) 16) 60)]]).

Definition s_struct_its_vpe :=
    (TStruct 48 [[(TElem "vpt_page" (TPtr (TNamedStruct "struct.page" 64)) 0); (TElem "its_vm" (TPtr (TNamedStruct "struct.its_vm" 128)) 8); (TElem "irq" (TInt TI32) 16); (TElem "vpe_db_lpi" (TInt TI64) 24); (TElem "vpe_proxy_event" (TInt TI32) 32); (TElem "col_idx" (TInt TI16) 36); (TElem "vpe_id" (TInt TI16) 38); (TElem "idai" (TInt TI8) 40); (TElem "pending_last" (TInt TI8) 41)]]).

Definition s_struct_kvm_coalesced_mmio_ring :=
    (TStruct 8 [[(TElem "first" (TInt TI32) 0); (TElem "last" (TInt TI32) 4); (TElem "coalesced_mmio" (TArray (TNamedStruct "struct.kvm_coalesced_mmio" 24) 0) 8)]]).

Definition s_struct_kvm_coalesced_mmio :=
    (TStruct 24 [[(TElem "phys_addr" (TInt TI64) 0); (TElem "len" (TInt TI32) 8); (TElem "kvm_coalesced_mmio.2" (TNamedStruct "union.anon.126" 4) 12); (TElem "data" (TArray (TInt TI8) 8) 16)]]).

Definition s_struct_kvm_irq_routing_table :=
    (TStruct 3960 [[(TElem "chip" (TArray (TArray (TInt TI32) 988) 1) 0); (TElem "nr_rt_entries" (TInt TI32) 3952); (TElem "map" (TArray (TNamedStruct "struct.hlist_head" 8) 0) 3960)]]).

Definition s_struct_mmu_notifier :=
    (TStruct 56 [[(TElem "hlist" (TNamedStruct "struct.hlist_node" 16) 0); (TElem "ops" (TPtr (TNamedStruct "struct.mmu_notifier_ops" 80)) 16); (TElem "mm" (TPtr (TNamedStruct "struct.mm_struct" 864)) 24); (TElem "rcu" (TNamedStruct "struct.callback_head" 16) 32); (TElem "users" (TInt TI32) 48)]]).

Definition s_struct_mmu_notifier_ops :=
    (TStruct 80 [[(TElem "release" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mm_struct" 864))]])) 0); (TElem "clear_flush_young" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mm_struct" 864)); (TInt TI64); (TInt TI64)]])) 8); (TElem "clear_young" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mm_struct" 864)); (TInt TI64); (TInt TI64)]])) 16); (TElem "test_young" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mm_struct" 864)); (TInt TI64)]])) 24); (TElem "change_pte" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mm_struct" 864)); (TInt TI64); (TInt TI64)]])) 32); (TElem "invalidate_range_start" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mmu_notifier_range" 40))]])) 40); (TElem "invalidate_range_end" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mmu_notifier_range" 40))]])) 48); (TElem "invalidate_range" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.mmu_notifier" 56)); (TPtr (TNamedStruct "struct.mm_struct" 864)); (TInt TI64); (TInt TI64)]])) 56); (TElem "alloc_notifier" (TPtr (TFunction (TPtr (TNamedStruct "struct.mmu_notifier" 56)) [[(TPtr (TNamedStruct "struct.mm_struct" 864))]])) 64); (TElem "free_notifier" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.mmu_notifier" 56))]])) 72)]]).

Definition s_struct_mmu_notifier_range :=
    (TStruct 40 [[(TElem "vma" (TPtr (TNamedStruct "struct.vm_area_struct" 192)) 0); (TElem "mm" (TPtr (TNamedStruct "struct.mm_struct" 864)) 8); (TElem "start" (TInt TI64) 16); (TElem "end" (TInt TI64) 24); (TElem "flags" (TInt TI32) 32); (TElem "event" (TInt TI32) 36)]]).

Definition s_struct_kvm_stat_data :=
    (TStruct 16 [[(TElem "offset" (TInt TI32) 0); (TElem "mode" (TInt TI32) 4); (TElem "kvm" (TPtr (TNamedStruct "struct.kvm" 8824)) 8)]]).

Definition s_struct_preempt_notifier :=
    (TStruct 24 [[(TElem "link" (TNamedStruct "struct.hlist_node" 16) 0); (TElem "ops" (TPtr (TNamedStruct "struct.preempt_ops" 16)) 16)]]).

Definition s_struct_preempt_ops :=
    (TStruct 16 [[(TElem "sched_in" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.preempt_notifier" 24)); (TInt TI32)]])) 0); (TElem "sched_out" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.preempt_notifier" 24)); (TPtr (TNamedStruct "struct.task_struct" 0))]])) 8)]]).

Definition s_struct_kvm_run :=
    (TStruct 2352 [[(TElem "request_interrupt_window" (TInt TI8) 0); (TElem "immediate_exit" (TInt TI8) 1); (TElem "padding1" (TArray (TInt TI8) 6) 2); (TElem "exit_reason" (TInt TI32) 8); (TElem "ready_for_interrupt_injection" (TInt TI8) 12); (TElem "if_flag" (TInt TI8) 13); (TElem "flags" (TInt TI16) 14); (TElem "cr8" (TInt TI64) 16); (TElem "apic_base" (TInt TI64) 24); (TElem "kvm_run.9" (TNamedStruct "union.anon.92" 256) 32); (TElem "kvm_valid_regs" (TInt TI64) 288); (TElem "kvm_dirty_regs" (TInt TI64) 296); (TElem "s" (TNamedStruct "union.anon.115" 0) 304)]]).

Definition s_struct_kvm_sync_regs :=
    (TStruct 8 [[(TElem "device_irq_level" (TInt TI64) 0)]]).

Definition s_struct_swait_queue_head :=
    (TStruct 24 [[(TElem "lock" (TNamedStruct "struct.raw_spinlock" 4) 0); (TElem "task_list" (TNamedStruct "struct.list_head" 16) 8)]]).

Definition s_struct_kvm_vcpu_stat :=
    (TStruct 80 [[(TElem "halt_successful_poll" (TInt TI64) 0); (TElem "halt_attempted_poll" (TInt TI64) 8); (TElem "halt_poll_invalid" (TInt TI64) 16); (TElem "halt_wakeup" (TInt TI64) 24); (TElem "hvc_exit_stat" (TInt TI64) 32); (TElem "wfe_exit_stat" (TInt TI64) 40); (TElem "wfi_exit_stat" (TInt TI64) 48); (TElem "mmio_exit_user" (TInt TI64) 56); (TElem "mmio_exit_kernel" (TInt TI64) 64); (TElem "exits" (TInt TI64) 72)]]).

Definition s_struct_kvm_mmio_fragment :=
    (TStruct 24 [[(TElem "gpa" (TInt TI64) 0); (TElem "data" (TPtr (TInt TI8)) 8); (TElem "len" (TInt TI32) 16)]]).

Definition s_struct_kvm_vcpu_arch :=
    (TStruct 8688 [[(TElem "vmid" (TInt TI32) 0); (TElem "was_preempted" (TInt TI8) 4); (TElem "walk_result" (TNamedStruct "struct.s2_trans" 32) 8); (TElem "ctxt" (TNamedStruct "struct.kvm_cpu_context" 1760) 48); (TElem "sve_state" (TPtr (TInt TI8)) 1808); (TElem "sve_max_vl" (TInt TI32) 1816); (TElem "hcr_el2" (TInt TI64) 1824); (TElem "mdcr_el2" (TInt TI32) 1832); (TElem "fault" (TNamedStruct "struct.kvm_vcpu_fault_info" 32) 1840); (TElem "workaround_flags" (TInt TI64) 1872); (TElem "flags" (TInt TI64) 1880); (TElem "debug_ptr" (TPtr (TNamedStruct "struct.kvm_guest_debug_arch" 512)) 1888); (TElem "vcpu_debug_state" (TNamedStruct "struct.kvm_guest_debug_arch" 512) 1896); (TElem "external_debug_state" (TNamedStruct "struct.kvm_guest_debug_arch" 512) 2408); (TElem "host_cpu_context" (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) 2920); (TElem "host_thread_info" (TPtr (TNamedStruct "struct.thread_info" 24)) 2928); (TElem "host_fpsimd_state" (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)) 2936); (TElem "host_debug_state" (TNamedStruct "struct.anon.118" 520) 2944); (TElem "vgic_cpu" (TNamedStruct "struct.vgic_cpu" 3960) 3464); (TElem "timer_cpu" (TNamedStruct "struct.arch_timer_cpu" 312) 7424); (TElem "pmu" (TNamedStruct "struct.kvm_pmu" 536) 7736); (TElem "guest_debug_preserved" (TNamedStruct "struct.anon.123" 4) 8272); (TElem "power_off" (TInt TI8) 8276); (TElem "pause" (TInt TI8) 8277); (TElem "mmio_decode" (TNamedStruct "struct.kvm_decode" 16) 8280); (TElem "mmu_page_cache" (TNamedStruct "struct.kvm_mmu_memory_cache" 328) 8296); (TElem "target" (TInt TI32) 8624); (TElem "features" (TArray (TInt TI64) 1) 8632); (TElem "has_run_once" (TInt TI8) 8640); (TElem "vsesr_el2" (TInt TI64) 8648); (TElem "reset_state" (TNamedStruct "struct.vcpu_reset_state" 24) 8656); (TElem "sysregs_loaded_on_cpu" (TInt TI8) 8680)]]).

Definition s_struct_s2_trans :=
    (TStruct 32 [[(TElem "pfn" (TInt TI64) 0); (TElem "output" (TInt TI64) 8); (TElem "writable" (TInt TI8) 16); (TElem "readable" (TInt TI8) 17); (TElem "level" (TInt TI32) 20); (TElem "desc" (TInt TI64) 24)]]).

Definition s_struct_kvm_vcpu_fault_info :=
    (TStruct 32 [[(TElem "esr_el2" (TInt TI32) 0); (TElem "far_el2" (TInt TI64) 8); (TElem "hpfar_el2" (TInt TI64) 16); (TElem "disr_el1" (TInt TI64) 24)]]).

Definition s_struct_kvm_guest_debug_arch :=
    (TStruct 512 [[(TElem "dbg_bcr" (TArray (TInt TI64) 16) 0); (TElem "dbg_bvr" (TArray (TInt TI64) 16) 128); (TElem "dbg_wcr" (TArray (TInt TI64) 16) 256); (TElem "dbg_wvr" (TArray (TInt TI64) 16) 384)]]).

Definition s_struct_vgic_cpu :=
    (TStruct 3960 [[(TElem "vgic_cpu.0" (TNamedStruct "union.anon.119" 0) 0); (TElem "used_lrs" (TInt TI32) 272); (TElem "private_irqs" (TArray (TNamedStruct "struct.vgic_irq" 112) 32) 280); (TElem "ap_list_lock" (TNamedStruct "struct.raw_spinlock" 4) 3864); (TElem "ap_list_head" (TNamedStruct "struct.list_head" 16) 3872); (TElem "rd_iodev" (TNamedStruct "struct.vgic_io_device" 40) 3888); (TElem "rdreg" (TPtr (TNamedStruct "struct.vgic_redist_region" 40)) 3928); (TElem "pendbaser" (TInt TI64) 3936); (TElem "lpis_enabled" (TInt TI8) 3944); (TElem "num_pri_bits" (TInt TI32) 3948); (TElem "num_id_bits" (TInt TI32) 3952)]]).

Definition s_struct_vgic_v3_cpu_if :=
    (TStruct 224 [[(TElem "vgic_hcr" (TInt TI32) 0); (TElem "vgic_vmcr" (TInt TI32) 4); (TElem "vgic_sre" (TInt TI32) 8); (TElem "vgic_ap0r" (TArray (TInt TI32) 4) 12); (TElem "vgic_ap1r" (TArray (TInt TI32) 4) 28); (TElem "vgic_lr" (TArray (TInt TI64) 16) 48); (TElem "its_vpe" (TNamedStruct "struct.its_vpe" 48) 176)]]).

Definition s_struct_vgic_redist_region :=
    (TStruct 40 [[(TElem "index" (TInt TI32) 0); (TElem "base" (TInt TI64) 8); (TElem "count" (TInt TI32) 16); (TElem "free_index" (TInt TI32) 20); (TElem "list" (TNamedStruct "struct.list_head" 16) 24)]]).

Definition s_struct_arch_timer_cpu :=
    (TStruct 312 [[(TElem "timers" (TArray (TNamedStruct "struct.arch_timer_context" 120) 2) 0); (TElem "bg_timer" (TNamedStruct "struct.hrtimer" 64) 240); (TElem "enabled" (TInt TI8) 304)]]).

Definition s_struct_arch_timer_context :=
    (TStruct 120 [[(TElem "vcpu" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 0); (TElem "cnt_ctl" (TInt TI32) 8); (TElem "cnt_cval" (TInt TI64) 16); (TElem "irq" (TNamedStruct "struct.kvm_irq_level" 8) 24); (TElem "cntvoff" (TInt TI64) 32); (TElem "hrtimer" (TNamedStruct "struct.hrtimer" 64) 40); (TElem "loaded" (TInt TI8) 104); (TElem "host_timer_irq" (TInt TI32) 108); (TElem "host_timer_irq_flags" (TInt TI32) 112)]]).

Definition s_struct_kvm_irq_level :=
    (TStruct 8 [[(TElem "kvm_irq_level.0" (TNamedStruct "union.anon.122" 4) 0); (TElem "level" (TInt TI32) 4)]]).

Definition s_struct_kvm_pmu :=
    (TStruct 536 [[(TElem "irq_num" (TInt TI32) 0); (TElem "pmc" (TArray (TNamedStruct "struct.kvm_pmc" 16) 32) 8); (TElem "chained" (TArray (TInt TI64) 1) 520); (TElem "ready" (TInt TI8) 528); (TElem "created" (TInt TI8) 529); (TElem "irq_level" (TInt TI8) 530)]]).

Definition s_struct_kvm_pmc :=
    (TStruct 16 [[(TElem "idx" (TInt TI8) 0); (TElem "perf_event" (TPtr (TNamedStruct "struct.perf_event" 1136)) 8)]]).

Definition s_struct_kvm_decode :=
    (TStruct 16 [[(TElem "rt" (TInt TI64) 0); (TElem "sign_extend" (TInt TI8) 8); (TElem "sixty_four" (TInt TI8) 9)]]).

Definition s_struct_kvm_mmu_memory_cache :=
    (TStruct 328 [[(TElem "nobjs" (TInt TI32) 0); (TElem "objects" (TArray (TPtr (TInt TI8)) 40) 8)]]).

Definition s_struct_vcpu_reset_state :=
    (TStruct 24 [[(TElem "pc" (TInt TI64) 0); (TElem "r0" (TInt TI64) 8); (TElem "be" (TInt TI8) 16); (TElem "reset" (TInt TI8) 17)]]).

Definition s_struct_el2_data :=
    (TStruct 33731152 [[(TElem "regions" (TArray (TNamedStruct "struct.memblock_region" 24) 32) 0); (TElem "s2_memblock_info" (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32) 768); (TElem "arch" (TNamedStruct "struct.s2_cpu_arch" 16) 1024); (TElem "regions_cnt" (TInt TI32) 1040); (TElem "page_pool_start" (TInt TI64) 1048); (TElem "host_vttbr" (TInt TI64) 1056); (TElem "used_pages" (TInt TI64) 1064); (TElem "used_tmp_pages" (TInt TI64) 1072); (TElem "pl011_base" (TInt TI64) 1080); (TElem "uart_8250_base" (TInt TI64) 1088); (TElem "s2pages_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 1096); (TElem "abs_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 1100); (TElem "el2_pt_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 1104); (TElem "console_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 1108); (TElem "smmu_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 1112); (TElem "spt_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 1116); (TElem "ram_start_pfn" (TInt TI64) 1120); (TElem "s2_pages" (TArray (TNamedStruct "struct.s2_page" 16) 2097152) 1128); (TElem "shadow_vcpu_ctxt" (TArray (TNamedStruct "struct.shadow_vcpu_context" 1808) 72) 33555568); (TElem "used_shadow_vcpu_ctxt" (TInt TI32) 33685744); (TElem "s2_sys_reg_descs" (TArray (TNamedStruct "struct.s2_sys_reg_desc" 24) 28) 33685752); (TElem "vm_info" (TArray (TNamedStruct "struct.el2_vm_info" 768) 19) 33686424); (TElem "used_vm_info" (TInt TI32) 33701016); (TElem "last_remap_ptr" (TInt TI64) 33701024); (TElem "smmu_cfg" (TArray (TNamedStruct "struct.el2_smmu_cfg" 16) 16) 33701032); (TElem "smmus" (TArray (TNamedStruct "struct.el2_arm_smmu_device" 96) 2) 33701288); (TElem "el2_smmu_num" (TInt TI32) 33701480); (TElem "next_vmid" (TInt TI32) 33701484); (TElem "vgic_cpu_base" (TInt TI64) 33701488); (TElem "installed" (TInt TI8) 33701496); (TElem "per_cpu_data" (TArray (TNamedStruct "struct.el2_per_cpu_data" 1792) 16) 33701504); (TElem "core_start" (TInt TI64) 33730176); (TElem "core_end" (TInt TI64) 33730184); (TElem "hacl_hash" (TArray (TInt TI64) 80) 33730192); (TElem "hacl_hash0" (TArray (TInt TI32) 64) 33730832); (TElem "key" (TArray (TInt TI8) 16) 33731088); (TElem "smmu_page_pool_start" (TInt TI64) 33731104); (TElem "smmu_pgd_used_pages" (TInt TI64) 33731112); (TElem "smmu_pmd_used_pages" (TInt TI64) 33731120); (TElem "phys_mem_start" (TInt TI64) 33731128); (TElem "phys_mem_size" (TInt TI64) 33731136)]]).

Definition s_struct_memblock_region :=
    (TStruct 24 [[(TElem "base" (TInt TI64) 0); (TElem "size" (TInt TI64) 8); (TElem "flags" (TInt TI32) 16)]]).

Definition s_struct_s2_memblock_info :=
    (TStruct 8 [[(TElem "index" (TInt TI64) 0)]]).

Definition s_struct_s2_cpu_arch :=
    (TStruct 16 [[(TElem "host_hcr_el2" (TInt TI64) 0); (TElem "host_vttbr_el2" (TInt TI64) 8)]]).

Definition s_struct_b_arch_spinlock_t :=
    (TStruct 4 [[(TElem "lock" (TInt TI32) 0)]]).

Definition s_struct_s2_page :=
    (TStruct 16 [[(TElem "count" (TInt TI32) 0); (TElem "vmid" (TInt TI32) 4); (TElem "gfn" (TInt TI64) 8)]]).

Definition s_struct_shadow_vcpu_context :=
    (TStruct 1808 [[(TElem "regs" (TArray (TInt TI64) 41) 0); (TElem "far_el2" (TInt TI64) 328); (TElem "hpfar" (TInt TI64) 336); (TElem "hcr_el2" (TInt TI64) 344); (TElem "ec" (TInt TI64) 352); (TElem "dirty" (TInt TI64) 360); (TElem "flags" (TInt TI64) 368); (TElem "shadow_vcpu_context.7" (TNamedStruct "union.anon" 888) 376); (TElem "fp_regs" (TNamedStruct "struct.user_fpsimd_state" 528) 1264); (TElem "esr" (TInt TI32) 1792); (TElem "vmid" (TInt TI32) 1796)]]).

Definition s_struct_el2_vm_info :=
    (TStruct 768 [[(TElem "vttbr" (TInt TI64) 0); (TElem "vmid" (TInt TI32) 8); (TElem "load_info_cnt" (TInt TI32) 12); (TElem "kvm_pg_cnt" (TInt TI32) 16); (TElem "inc_exe" (TInt TI8) 20); (TElem "state" (TInt TI32) 24); (TElem "load_info" (TArray (TNamedStruct "struct.el2_load_info" 96) 5) 32); (TElem "shadow_pt_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 512); (TElem "vm_lock" (TNamedStruct "struct.b_arch_spinlock_t" 4) 516); (TElem "kvm" (TPtr (TNamedStruct "struct.kvm" 8824)) 520); (TElem "int_vcpus" (TArray (TNamedStruct "struct.int_vcpu" 24) 4) 528); (TElem "shadow_ctxt" (TArray (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) 4) 624); (TElem "key" (TArray (TInt TI8) 16) 656); (TElem "iv" (TArray (TInt TI8) 16) 672); (TElem "public_key" (TArray (TInt TI8) 32) 688); (TElem "powered_on" (TInt TI8) 720); (TElem "page_pool_start" (TInt TI64) 728); (TElem "used_pages" (TInt TI64) 736); (TElem "pmd_used_pages" (TInt TI64) 744); (TElem "pud_used_pages" (TInt TI64) 752); (TElem "pte_used_pages" (TInt TI64) 760)]]).

Definition s_struct_el2_load_info :=
    (TStruct 96 [[(TElem "load_addr" (TInt TI64) 0); (TElem "size" (TInt TI64) 8); (TElem "el2_remap_addr" (TInt TI64) 16); (TElem "el2_mapped_pages" (TInt TI32) 24); (TElem "signature" (TArray (TInt TI8) 64) 28)]]).

Definition s_struct_int_vcpu :=
    (TStruct 24 [[(TElem "vcpu" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 0); (TElem "vcpu_pg_cnt" (TInt TI32) 8); (TElem "state" (TInt TI32) 12); (TElem "ctxtid" (TInt TI32) 16)]]).

Definition s_struct_el2_smmu_cfg :=
    (TStruct 16 [[(TElem "vmid" (TInt TI32) 0); (TElem "hw_ttbr" (TInt TI64) 8)]]).

Definition s_struct_el2_arm_smmu_device :=
    (TStruct 96 [[(TElem "phys_base" (TInt TI64) 0); (TElem "size" (TInt TI64) 8); (TElem "pgshift" (TInt TI64) 16); (TElem "features" (TInt TI32) 24); (TElem "num_context_banks" (TInt TI32) 28); (TElem "num_s2_context_banks" (TInt TI32) 32); (TElem "num_mapping_groups" (TInt TI32) 36); (TElem "va_size" (TInt TI64) 40); (TElem "ipa_size" (TInt TI64) 48); (TElem "pa_size" (TInt TI64) 56); (TElem "num_global_irqs" (TInt TI32) 64); (TElem "num_context_irqs" (TInt TI32) 68); (TElem "exists" (TInt TI8) 72); (TElem "hyp_base" (TInt TI64) 80); (TElem "index" (TInt TI32) 88)]]).

Definition s_struct_el2_per_cpu_data :=
    (TStruct 1792 [[(TElem "vmid" (TInt TI32) 0); (TElem "vcpu_id" (TInt TI32) 4); (TElem "core_ctxt" (TNamedStruct "struct.kvm_cpu_context" 1760) 16); (TElem "host_regs" (TPtr (TNamedStruct "struct.s2_host_regs" 256)) 1776)]]).

Definition s_struct_shared_data :=
    (TStruct 810864 [[(TElem "kvm_pool" (TArray (TNamedStruct "struct.kvm" 8824) 18) 0); (TElem "vcpu_pool" (TArray (TNamedStruct "struct.kvm_vcpu" 9056) 72) 158832)]]).

Definition s_union_anon_117 :=
    (TStruct 888 [[(TElem "sys_regs" (TArray (TInt TI64) 111) 0)]]).

Definition s_struct_sigset_t :=
    (TStruct 8 [[(TElem "sig" (TArray (TInt TI64) 1) 0)]]).

Definition s_struct_anon_116 :=
    (TStruct 2 [[(TElem "in_spin_loop" (TInt TI8) 0); (TElem "dy_eligible" (TInt TI8) 1)]]).

Definition s_struct_atomic_t :=
    (TStruct 4 [[(TElem "counter" (TInt TI32) 0)]]).

Definition s_struct_anon_124 :=
    (TStruct 72 [[(TElem "lock" (TNamedStruct "struct.spinlock" 4) 0); (TElem "items" (TNamedStruct "struct.list_head" 16) 8); (TElem "resampler_list" (TNamedStruct "struct.list_head" 16) 24); (TElem "resampler_lock" (TNamedStruct "struct.mutex" 32) 40)]]).

Definition s_union_anon_0 :=
    (TStruct 4 [[(TElem "rlock" (TNamedStruct "struct.raw_spinlock" 4) 0)]]).

Definition s_union_anon_1 :=
    (TStruct 4 [[(TElem "val" (TNamedStruct "struct.atomic_t" 4) 0)]]).

Definition s_struct_atomic64_t :=
    (TStruct 8 [[(TElem "counter" (TInt TI64) 0)]]).

Definition s_struct_anon_3 :=
    (TStruct 864 [[(TElem "mmap" (TPtr (TNamedStruct "struct.vm_area_struct" 192)) 0); (TElem "mm_rb" (TNamedStruct "struct.rb_root" 8) 8); (TElem "vmacache_seqnum" (TInt TI64) 16); (TElem "get_unmapped_area" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.file" 248)); (TInt TI64); (TInt TI64); (TInt TI64); (TInt TI64)]])) 24); (TElem "mmap_base" (TInt TI64) 32); (TElem "mmap_legacy_base" (TInt TI64) 40); (TElem "task_size" (TInt TI64) 48); (TElem "highest_vm_end" (TInt TI64) 56); (TElem "pgd" (TPtr (TNamedStruct "struct.pgd_t" 0)) 64); (TElem "membarrier_state" (TNamedStruct "struct.atomic_t" 4) 72); (TElem "mm_users" (TNamedStruct "struct.atomic_t" 4) 76); (TElem "mm_count" (TNamedStruct "struct.atomic_t" 4) 80); (TElem "pgtables_bytes" (TNamedStruct "struct.atomic64_t" 8) 88); (TElem "map_count" (TInt TI32) 96); (TElem "page_table_lock" (TNamedStruct "struct.spinlock" 4) 100); (TElem "mmap_sem" (TNamedStruct "struct.rw_semaphore" 40) 104); (TElem "mmlist" (TNamedStruct "struct.list_head" 16) 144); (TElem "hiwater_rss" (TInt TI64) 160); (TElem "hiwater_vm" (TInt TI64) 168); (TElem "total_vm" (TInt TI64) 176); (TElem "locked_vm" (TInt TI64) 184); (TElem "pinned_vm" (TNamedStruct "struct.atomic64_t" 8) 192); (TElem "data_vm" (TInt TI64) 200); (TElem "exec_vm" (TInt TI64) 208); (TElem "stack_vm" (TInt TI64) 216); (TElem "def_flags" (TInt TI64) 224); (TElem "arg_lock" (TNamedStruct "struct.spinlock" 4) 232); (TElem "start_code" (TInt TI64) 240); (TElem "end_code" (TInt TI64) 248); (TElem "start_data" (TInt TI64) 256); (TElem "end_data" (TInt TI64) 264); (TElem "start_brk" (TInt TI64) 272); (TElem "brk" (TInt TI64) 280); (TElem "start_stack" (TInt TI64) 288); (TElem "arg_start" (TInt TI64) 296); (TElem "arg_end" (TInt TI64) 304); (TElem "env_start" (TInt TI64) 312); (TElem "env_end" (TInt TI64) 320); (TElem "saved_auxv" (TArray (TInt TI64) 46) 328); (TElem "rss_stat" (TNamedStruct "struct.mm_rss_stat" 32) 696); (TElem "binfmt" (TPtr (TNamedStruct "struct.linux_binfmt" 0)) 728); (TElem "context" (TNamedStruct "struct.mm_context_t" 24) 736); (TElem "flags" (TInt TI64) 760); (TElem "core_state" (TPtr (TNamedStruct "struct.core_state" 56)) 768); (TElem "ioctx_lock" (TNamedStruct "struct.spinlock" 4) 776); (TElem "ioctx_table" (TPtr (TNamedStruct "struct.kioctx_table" 0)) 784); (TElem "owner" (TPtr (TNamedStruct "struct.task_struct" 0)) 792); (TElem "user_ns" (TPtr (TNamedStruct "struct.user_namespace" 528)) 800); (TElem "exe_file" (TPtr (TNamedStruct "struct.file" 248)) 808); (TElem "mmu_notifier_mm" (TPtr (TNamedStruct "struct.mmu_notifier_mm" 16)) 816); (TElem "tlb_flush_pending" (TNamedStruct "struct.atomic_t" 4) 824); (TElem "uprobes_state" (TNamedStruct "struct.uprobes_state" 0) 828); (TElem "async_put_work" (TNamedStruct "struct.work_struct" 32) 832)]]).

Definition s_struct_pgprot_t :=
    (TStruct 8 [[(TElem "pgprot" (TInt TI64) 0)]]).

Definition s_struct_anon_4 :=
    (TStruct 32 [[(TElem "rb" (TNamedStruct "struct.rb_node" 24) 0); (TElem "rb_subtree_last" (TInt TI64) 24)]]).

Definition s_struct_pte_t :=
    (TStruct 8 [[(TElem "pte" (TInt TI64) 0)]]).

Definition s_union_anon_5 :=
    (TStruct 40 [[(TElem ".0" (TNamedStruct "struct.anon.6" 40) 0)]]).

Definition s_union_anon_91 :=
    (TStruct 4 [[(TElem "_mapcount" (TNamedStruct "struct.atomic_t" 4) 0)]]).

Definition s_struct_kuid_t :=
    (TStruct 4 [[(TElem "val" (TInt TI32) 0)]]).

Definition s_struct_kgid_t :=
    (TStruct 4 [[(TElem "val" (TInt TI32) 0)]]).

Definition s_union_anon_128 :=
    (TStruct 4 [[(TElem "i_nlink" (TInt TI32) 0)]]).

Definition s_union_anon_129 :=
    (TStruct 16 [[(TElem "i_dentry" (TNamedStruct "struct.callback_head" 16) 0)]]).

Definition s_union_anon_130 :=
    (TStruct 8 [[(TElem "i_fop" (TPtr (TNamedStruct "struct.file_operations" 264)) 0)]]).

Definition s_union_anon_131 :=
    (TStruct 8 [[(TElem "i_pipe" (TPtr (TNamedStruct "struct.pipe_inode_info" 0)) 0)]]).

Definition s_union_anon_73 :=
    (TStruct 16 [[(TElem "d_lru" (TNamedStruct "struct.list_head" 16) 0)]]).

Definition s_union_anon_74 :=
    (TStruct 16 [[(TElem "d_alias" (TNamedStruct "struct.hlist_node" 16) 0)]]).

Definition s_union_anon_8 :=
    (TStruct 8 [[(TElem ".0" (TInt TI64) 0)]]).

Definition s_union_anon_10 :=
    (TStruct 8 [[(TElem "lock_count" (TInt TI64) 0)]]).

Definition s_union_anon_7 :=
    (TStruct 16 [[(TElem "fu_llist" (TNamedStruct "struct.callback_head" 16) 0)]]).

Definition s_union_anon_75 :=
    (TStruct 8 [[(TElem "iov" (TPtr (TNamedStruct "struct.iovec" 16)) 0)]]).

Definition s_union_anon_76 :=
    (TStruct 8 [[(TElem "nr_segs" (TInt TI64) 0)]]).

Definition s_union_anon_78 :=
    (TStruct 32 [[(TElem "nfs_fl" (TNamedStruct "struct.nfs_lock_info" 32) 0)]]).

Definition s_struct_rwlock_t :=
    (TStruct 8 [[(TElem "raw_lock" (TNamedStruct "struct.qrwlock" 8) 0)]]).

Definition s_union_anon_62 :=
    (TStruct 4 [[(TElem "cnts" (TNamedStruct "struct.atomic_t" 4) 0)]]).

Definition s_union_anon_25 :=
    (TStruct 8 [[(TElem "preempt_count" (TInt TI64) 0)]]).

Definition s_union_anon_28 :=
    (TStruct 40 [[(TElem "futex" (TNamedStruct "struct.anon.29" 40) 0)]]).

Definition s_union_anon_37 :=
    (TStruct 16 [[(TElem "non_rcu" (TNamedStruct "struct.callback_head" 16) 0)]]).

Definition s_union_anon_17 :=
    (TStruct 24 [[(TElem "graveyard_link" (TNamedStruct "struct.rb_node" 24) 0)]]).

Definition s_union_anon_18 :=
    (TStruct 8 [[(TElem "expiry" (TInt TI64) 0)]]).

Definition s_union_anon_19 :=
    (TStruct 40 [[(TElem "index_key" (TNamedStruct "struct.keyring_index_key" 40) 0)]]).

Definition s_union_anon_23 :=
    (TStruct 32 [[(TElem "payload" (TNamedStruct "union.key_payload" 32) 0)]]).

Definition s_union_anon_20 :=
    (TStruct 8 [[(TElem ".0" (TInt TI64) 0)]]).

Definition s_union_anon_35 :=
    (TStruct 24 [[(TElem ".0" (TNamedStruct "struct.anon.36" 24) 0)]]).

Definition s_union_anon_12 :=
    (TStruct 32 [[(TElem "dir" (TNamedStruct "struct.kernfs_elem_attr" 32) 0)]]).

Definition s_union_anon_127 :=
    (TStruct 8 [[(TElem "buf" (TPtr (TNamedStruct "struct.bpf_storage_buffer" 16)) 0)]]).

Definition s_union_anon_38 :=
    (TStruct 16 [[(TElem "q_node" (TNamedStruct "struct.list_head" 16) 0)]]).

Definition s_union_anon_39 :=
    (TStruct 16 [[(TElem "ioc_node" (TNamedStruct "struct.hlist_node" 16) 0)]]).

Definition s_struct_anon_40 :=
    (TStruct 48 [[(TElem "si_signo" (TInt TI32) 0); (TElem "si_errno" (TInt TI32) 4); (TElem "si_code" (TInt TI32) 8); (TElem "_sifields" (TNamedStruct "union.__sifields" 32) 16)]]).

Definition s_struct_local64_t :=
    (TStruct 8 [[(TElem "a" (TNamedStruct "struct.local_t" 8) 0)]]).

Definition s_union_anon_55 :=
    (TStruct 96 [[(TElem ".0" (TNamedStruct "struct.anon.56" 96) 0)]]).

Definition s_union_anon_64 :=
    (TStruct 8 [[(TElem "next" (TPtr (TNamedStruct "struct.perf_raw_frag" 28)) 0)]]).

Definition s_union_anon_68 :=
    (TStruct 272 [[(TElem "user_regs" (TNamedStruct "struct.user_pt_regs" 272) 0)]]).

Definition s_struct_anon_72 :=
    (TStruct 544 [[(TElem "tp_value" (TInt TI64) 0); (TElem "tp2_value" (TInt TI64) 8); (TElem "fpsimd_state" (TNamedStruct "struct.user_fpsimd_state" 528) 16)]]).

Definition s_union_anon_14 :=
    (TStruct 8 [[(TElem "arg" (TPtr (TInt TI8)) 0)]]).

Definition s_union_anon_15 :=
    (TStruct 8 [[(TElem "type" (TInt TI64) 0)]]).

Definition s_union_anon_16 :=
    (TStruct 4 [[(TElem "uid" (TNamedStruct "struct.kuid_t" 4) 0)]]).

Definition s_union_anon_125 :=
    (TStruct 16 [[(TElem "vgic_cpu_base" (TNamedStruct "struct.list_head" 16) 0)]]).

Definition s_union_anon_120 :=
    (TStruct 4 [[(TElem "targets" (TInt TI32) 0)]]).

Definition s_union_anon_121 :=
    (TStruct 8 [[(TElem "redist_vcpu" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) 0)]]).

Definition s_union_anon_126 :=
    (TStruct 4 [[(TElem "pad" (TInt TI32) 0)]]).

Definition s_union_anon_92 :=
    (TStruct 256 [[(TElem "hw" (TNamedStruct "struct.anon.105" 8) 0)]]).

Definition s_struct_anon_118 :=
    (TStruct 520 [[(TElem "regs" (TNamedStruct "struct.kvm_guest_debug_arch" 512) 0); (TElem "pmscr_el1" (TInt TI64) 512)]]).

Definition s_struct_anon_123 :=
    (TStruct 4 [[(TElem "mdscr_el1" (TInt TI32) 0)]]).

Definition s_union_anon_122 :=
    (TStruct 4 [[(TElem "irq" (TInt TI32) 0)]]).

Definition s_union_anon :=
    (TStruct 888 [[(TElem "sys_regs" (TArray (TInt TI64) 111) 0)]]).

Definition s_struct_mm_context_t :=
    (TStruct 24 [[(TElem "id" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "vdso" (TPtr (TInt TI8)) 8); (TElem "flags" (TInt TI64) 16)]]).

Definition s_struct_anon_6 :=
    (TStruct 40 [[(TElem "lru" (TNamedStruct "struct.list_head" 16) 0); (TElem "mapping" (TPtr (TNamedStruct "struct.address_space" 160)) 16); (TElem "index" (TInt TI64) 24); (TElem "private" (TInt TI64) 32)]]).

Definition s_struct_anon_29 :=
    (TStruct 40 [[(TElem "uaddr" (TPtr (TInt TI32)) 0); (TElem "val" (TInt TI32) 8); (TElem "flags" (TInt TI32) 12); (TElem "bitset" (TInt TI32) 16); (TElem "time" (TInt TI64) 24); (TElem "uaddr2" (TPtr (TInt TI32)) 32)]]).

Definition s_struct_anon_36 :=
    (TStruct 24 [[(TElem "ctl_table" (TPtr (TNamedStruct "struct.ctl_table" 64)) 0); (TElem "used" (TInt TI32) 8); (TElem "count" (TInt TI32) 12); (TElem "nreg" (TInt TI32) 16)]]).

Definition s_struct_local_t :=
    (TStruct 8 [[(TElem "a" (TNamedStruct "struct.atomic64_t" 8) 0)]]).

Definition s_struct_anon_56 :=
    (TStruct 96 [[(TElem "config" (TInt TI64) 0); (TElem "last_tag" (TInt TI64) 8); (TElem "config_base" (TInt TI64) 16); (TElem "event_base" (TInt TI64) 24); (TElem "event_base_rdpmc" (TInt TI32) 32); (TElem "idx" (TInt TI32) 36); (TElem "last_cpu" (TInt TI32) 40); (TElem "flags" (TInt TI32) 44); (TElem "extra_reg" (TNamedStruct "struct.hw_perf_event_extra" 24) 48); (TElem "branch_reg" (TNamedStruct "struct.hw_perf_event_extra" 24) 72)]]).

Definition s_struct_anon_105 :=
    (TStruct 8 [[(TElem "hardware_exit_reason" (TArray (TInt TI64) 32) 0)]]).

Definition s_struct_kprojid_t :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0)]]).

Definition s_struct_memblock :=
    (TStruct 0 [[(TElem "" (TInt TI8) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.memblock_type" 0) 0); (TElem "" (TNamedStruct "struct.memblock_type" 0) 0)]]).

Definition s_union_anon_53 :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_struct_rseq :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "union.anon.70" 0) 0); (TElem "" (TInt TI32) 0); (TElem "" (TArray (TInt TI8) 12) 0)]]).

Definition s_struct_kobject :=
    (TStruct 0 [[(TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.kobject" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.kset" 96)) 0); (TElem "" (TPtr (TNamedStruct "struct.kobj_type" 56)) 0); (TElem "" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 0); (TElem "" (TNamedStruct "struct.kref" 4) 0); (TElem "" (TInt TI8) 0)]]).

Definition s_union_anon_71 :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.callback_head" 16) 0)]]).

Definition s_struct_super_block :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.file_system_type" 72)) 0); (TElem "" (TPtr (TNamedStruct "struct.super_operations" 216)) 0); (TElem "" (TPtr (TNamedStruct "struct.dquot_operations" 88)) 0); (TElem "" (TPtr (TNamedStruct "struct.quotactl_ops" 88)) 0); (TElem "" (TPtr (TNamedStruct "struct.export_operations" 0)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.dentry" 192)) 0); (TElem "" (TNamedStruct "struct.rw_semaphore" 40) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TPtr (TPtr (TNamedStruct "struct.xattr_handler" 0))) 0); (TElem "" (TPtr (TNamedStruct "struct.fscrypt_operations" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.key" 216)) 0); (TElem "" (TNamedStruct "struct.hlist_bl_head" 8) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.block_device" 216)) 0); (TElem "" (TPtr (TNamedStruct "struct.backing_dev_info" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.mtd_info" 0)) 0); (TElem "" (TNamedStruct "struct.hlist_node" 16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.quota_info" 312) 0); (TElem "" (TNamedStruct "struct.sb_writers" 368) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.fsnotify_mark_connector" 0)) 0); (TElem "" (TArray (TInt TI8) 32) 0); (TElem "" (TNamedStruct "struct.uuid_t" 0) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TNamedStruct "struct.dentry_operations" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.shrinker" 64) 0); (TElem "" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.workqueue_struct" 0)) 0); (TElem "" (TNamedStruct "struct.hlist_head" 8) 0); (TElem "" (TPtr (TNamedStruct "struct.user_namespace" 528)) 0); (TElem "" (TNamedStruct "struct.list_lru" 32) 0); (TElem "" (TNamedStruct "struct.list_lru" 32) 0); (TElem "" (TNamedStruct "struct.callback_head" 16) 0); (TElem "" (TNamedStruct "struct.work_struct" 32) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TArray (TInt TI8) 52) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TArray (TInt TI8) 16) 0)]]).

Definition s_struct_uuid_t :=
    (TStruct 0 [[(TElem "" (TArray (TInt TI8) 16) 0)]]).

Definition s_struct_device :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.kobject" 0) 0); (TElem "" (TPtr (TNamedStruct "struct.device" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.device_private" 0)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TNamedStruct "struct.device_type" 48)) 0); (TElem "" (TPtr (TNamedStruct "struct.bus_type" 168)) 0); (TElem "" (TPtr (TNamedStruct "struct.device_driver" 136)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TNamedStruct "struct.dev_links_info" 40) 0); (TElem "" (TNamedStruct "struct.dev_pm_info" 0) 0); (TElem "" (TPtr (TNamedStruct "struct.dev_pm_domain" 216)) 0); (TElem "" (TPtr (TNamedStruct "struct.irq_domain" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.dev_pin_info" 0)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.dma_map_ops" 0)) 0); (TElem "" (TPtr (TInt TI64)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.device_dma_parameters" 16)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.dma_coherent_mem" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.cma" 0)) 0); (TElem "" (TNamedStruct "struct.dev_archdata" 0) 0); (TElem "" (TPtr (TNamedStruct "struct.device_node" 160)) 0); (TElem "" (TPtr (TNamedStruct "struct.fwnode_handle" 16)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.class" 120)) 0); (TElem "" (TPtr (TPtr (TNamedStruct "struct.attribute_group" 40))) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0))]])) 0); (TElem "" (TPtr (TNamedStruct "struct.iommu_group" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.iommu_fwspec" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.iommu_param" 0)) 0); (TElem "" (TInt TI8) 0)]]).

Definition s_union_anon_70 :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_struct_anon_44 :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0)]]).

Definition s_struct_task_struct :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.thread_info" 24) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.llist_node" 8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.sched_class" 0)) 0); (TElem "" (TArray (TInt TI8) 56) 0); (TElem "" (TNamedStruct "struct.sched_entity" 0) 0); (TElem "" (TNamedStruct "struct.sched_rt_entity" 48) 0); (TElem "" (TPtr (TNamedStruct "struct.task_group" 0)) 0); (TElem "" (TNamedStruct "struct.sched_dl_entity" 0) 0); (TElem "" (TNamedStruct "struct.hlist_head" 8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.cpumask" 32)) 0); (TElem "" (TNamedStruct "struct.cpumask" 32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "union.rcu_special" 4) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.rcu_node" 0)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.sched_info" 32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.plist_node" 40) 0); (TElem "" (TNamedStruct "struct.rb_node" 24) 0); (TElem "" (TPtr (TNamedStruct "struct.mm_struct" 864)) 0); (TElem "" (TPtr (TNamedStruct "struct.mm_struct" 864)) 0); (TElem "" (TNamedStruct "struct.vmacache" 40) 0); (TElem "" (TNamedStruct "struct.task_rss_stat" 20) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TArray (TInt TI8) 3) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.restart_block" 48) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.pid" 96)) 0); (TElem "" (TArray (TNamedStruct "struct.hlist_node" 16) 4) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.completion" 32)) 0); (TElem "" (TPtr (TInt TI32)) 0); (TElem "" (TPtr (TInt TI32)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.prev_cputime" 24) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.posix_cputimers" 80) 0); (TElem "" (TPtr (TNamedStruct "struct.cred" 160)) 0); (TElem "" (TPtr (TNamedStruct "struct.cred" 160)) 0); (TElem "" (TPtr (TNamedStruct "struct.cred" 160)) 0); (TElem "" (TPtr (TNamedStruct "struct.key" 216)) 0); (TElem "" (TArray (TInt TI8) 16) 0); (TElem "" (TPtr (TNamedStruct "struct.nameidata" 0)) 0); (TElem "" (TNamedStruct "struct.sysv_sem" 8) 0); (TElem "" (TNamedStruct "struct.sysv_shm" 16) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.fs_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.files_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.nsproxy" 56)) 0); (TElem "" (TPtr (TNamedStruct "struct.signal_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.sighand_struct" 2080)) 0); (TElem "" (TNamedStruct "struct.sigset_t" 8) 0); (TElem "" (TNamedStruct "struct.sigset_t" 8) 0); (TElem "" (TNamedStruct "struct.sigset_t" 8) 0); (TElem "" (TNamedStruct "struct.sigpending" 24) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.callback_head" 16)) 0); (TElem "" (TNamedStruct "struct.seccomp" 16) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TNamedStruct "struct.raw_spinlock" 4) 0); (TElem "" (TNamedStruct "struct.wake_q_node" 8) 0); (TElem "" (TNamedStruct "struct.rb_root_cached" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.rt_mutex_waiter" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TNamedStruct "struct.bio_list" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.blk_plug" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.reclaim_state" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.backing_dev_info" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.io_context" 104)) 0); (TElem "" (TPtr (TNamedStruct "struct.capture_control" 0)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.kernel_siginfo" 48)) 0); (TElem "" (TNamedStruct "struct.task_io_accounting" 56) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.nodemask_t" 0) 0); (TElem "" (TNamedStruct "struct.seqcount" 4) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.css_set" 456)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.robust_list_head" 0)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.futex_pi_state" 0)) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TArray (TPtr (TNamedStruct "struct.perf_event_context" 256)) 2) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.rseq" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.tlbflush_unmap_batch" 0) 0); (TElem "" (TNamedStruct "union.anon.71" 0) 0); (TElem "" (TPtr (TNamedStruct "struct.pipe_inode_info" 0)) 0); (TElem "" (TNamedStruct "struct.page_frag" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.task_delay_info" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TArray (TNamedStruct "struct.latency_record" 120) 32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.ftrace_ret_stack" 40)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.mem_cgroup" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.mem_cgroup" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.request_queue" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.vm_struct" 64)) 0); (TElem "" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "" (TNamedStruct "struct.thread_struct" 976) 0); (TElem "" (TArray (TInt TI8) 48) 0)]]).

Definition s_struct_list_lru_node :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TNamedStruct "struct.list_lru_one" 24) 0); (TElem "" (TPtr (TNamedStruct "struct.list_lru_memcg" 16)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TArray (TInt TI8) 16) 0)]]).

Definition s_struct_pgd_t :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_struct_cgroup_subsys :=
    (TStruct 0 [[(TElem "" (TPtr (TFunction (TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)) [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.seq_file" 128)); (TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.cgroup_taskset" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_taskset" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_taskset" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[ ]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.task_struct" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.task_struct" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.task_struct" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.task_struct" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.task_struct" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.cgroup_subsys_state" 240))]])) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TNamedStruct "struct.cgroup_root" 5872)) 0); (TElem "" (TNamedStruct "struct.idr" 24) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.cftype" 216)) 0); (TElem "" (TPtr (TNamedStruct "struct.cftype" 216)) 0); (TElem "" (TInt TI32) 0)]]).

Definition s_struct_memblock_type :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.memblock_region" 24)) 0); (TElem "" (TPtr (TInt TI8)) 0)]]).

Definition s_struct_pmd_t :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_union_anon_54 :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_struct_bpf_raw_event_map :=
    (TStruct 0 [[(TElem "" (TPtr (TNamedStruct "struct.tracepoint" 48)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TArray (TInt TI8) 8) 0)]]).

Definition s_struct_perf_event_attr :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "union.anon.51" 0) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "union.anon.52" 0) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "union.anon.53" 0) 0); (TElem "" (TNamedStruct "union.anon.54" 0) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI16) 0); (TElem "" (TInt TI16) 0)]]).

Definition s_struct_inode_operations :=
    (TStruct 0 [[(TElem "" (TPtr (TFunction (TPtr (TNamedStruct "struct.dentry" 192)) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.delayed_call" 16))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TPtr (TNamedStruct "struct.posix_acl" 0)) [[(TPtr (TNamedStruct "struct.inode" 584)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TInt TI8)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI16); TBool]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TInt TI8))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI16)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI16); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.iattr" 80))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.path" 16)); (TPtr (TNamedStruct "struct.kstat" 136)); (TInt TI32); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI64) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TInt TI8)); (TInt TI64)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.fiemap_extent_info" 24)); (TInt TI64); (TInt TI64)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.timespec64" 16)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.file" 248)); (TInt TI32); (TInt TI16)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI16)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.inode" 584)); (TPtr (TNamedStruct "struct.posix_acl" 0)); (TInt TI32)]])) 0); (TElem "" (TArray (TInt TI8) 24) 0)]]).

Definition s_struct_dentry_operations :=
    (TStruct 0 [[(TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.qstr" 16))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TInt TI32); (TPtr (TInt TI8)); (TPtr (TNamedStruct "struct.qstr" 16))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.dentry" 192))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.inode" 584))]])) 0); (TElem "" (TPtr (TFunction (TPtr (TInt TI8)) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TInt TI8)); (TInt TI32)]])) 0); (TElem "" (TPtr (TFunction (TPtr (TNamedStruct "struct.vfsmount" 0)) [[(TPtr (TNamedStruct "struct.path" 16))]])) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[(TPtr (TNamedStruct "struct.path" 16)); TBool]])) 0); (TElem "" (TPtr (TFunction (TPtr (TNamedStruct "struct.dentry" 192)) [[(TPtr (TNamedStruct "struct.dentry" 192)); (TPtr (TNamedStruct "struct.inode" 584))]])) 0); (TElem "" (TArray (TInt TI8) 24) 0)]]).

Definition s_struct_module :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TArray (TInt TI8) 56) 0); (TElem "" (TNamedStruct "struct.module_kobject" 96) 0); (TElem "" (TPtr (TNamedStruct "struct.module_attribute" 56)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TNamedStruct "struct.kobject" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.kernel_symbol" 12)) 0); (TElem "" (TPtr (TInt TI32)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TPtr (TNamedStruct "struct.kernel_param" 40)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.kernel_symbol" 12)) 0); (TElem "" (TPtr (TInt TI32)) 0); (TElem "" (TInt TI8) 0); (TElem "" (TPtr (TNamedStruct "struct.kernel_symbol" 12)) 0); (TElem "" (TPtr (TInt TI32)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.exception_table_entry" 8)) 0); (TElem "" (TPtr (TFunction (TInt TI32) [[ ]])) 0); (TElem "" (TArray (TInt TI8) 40) 0); (TElem "" (TNamedStruct "struct.module_layout" 80) 0); (TElem "" (TNamedStruct "struct.module_layout" 80) 0); (TElem "" (TNamedStruct "struct.mod_arch_specific" 32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.bug_entry" 12)) 0); (TElem "" (TPtr (TNamedStruct "struct.mod_kallsyms" 32)) 0); (TElem "" (TNamedStruct "struct.mod_kallsyms" 32) 0); (TElem "" (TPtr (TNamedStruct "struct.module_sect_attrs" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.module_notes_attrs" 0)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TInt TI32)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TPtr (TNamedStruct "struct.srcu_struct" 1944))) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.bpf_raw_event_map" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.jump_entry" 16)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TPtr (TInt TI8))) 0); (TElem "" (TPtr (TPtr (TNamedStruct "struct.trace_event_call" 0))) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TPtr (TNamedStruct "struct.trace_eval_map" 24))) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TInt TI64)) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TFunction TVoid [[ ]])) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TPtr (TNamedStruct "struct.error_injection_entry" 16)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TArray (TInt TI8) 36) 0)]]).

Definition s_struct_perf_sample_data :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.perf_raw_record" 32)) 0); (TElem "" (TPtr (TNamedStruct "struct.perf_branch_stack" 8)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "union.perf_mem_data_src" 8) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.anon.66" 0) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.anon.67" 0) 0); (TElem "" (TPtr (TNamedStruct "struct.perf_callchain_entry" 8)) 0); (TElem "" (TNamedStruct "struct.perf_regs" 16) 0); (TElem "" (TNamedStruct "struct.pt_regs" 320) 0); (TElem "" (TNamedStruct "struct.perf_regs" 16) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TArray (TInt TI8) 24) 0)]]).

Definition s_struct_sched_entity :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.load_weight" 16) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.rb_node" 24) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.sched_statistics" 216) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.sched_entity" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.cfs_rq" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.cfs_rq" 0)) 0); (TElem "" (TArray (TInt TI8) 24) 0); (TElem "" (TNamedStruct "struct.sched_avg" 64) 0)]]).

Definition s_union_anon_33 :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.anon.34" 0) 0); (TElem "" (TArray (TInt TI8) 48) 0)]]).

Definition s_struct_percpu_ref :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.atomic64_t" 8) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.percpu_ref" 0))]])) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.percpu_ref" 0))]])) 0); (TElem "" (TInt TI8) 0); (TElem "" (TNamedStruct "struct.callback_head" 16) 0)]]).

Definition s_union_anon_115 :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.kvm_sync_regs" 8) 0); (TElem "" (TArray (TInt TI8) 2040) 0)]]).

Definition s_union_anon_119 :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.vgic_v3_cpu_if" 224) 0); (TElem "" (TArray (TInt TI8) 48) 0)]]).

Definition s_struct_anon_67 :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0)]]).

Definition s_union_anon_52 :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0)]]).

Definition s_struct_pud_t :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_struct_sched_dl_entity :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.rb_node" 24) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TNamedStruct "struct.hrtimer" 64) 0); (TElem "" (TNamedStruct "struct.hrtimer" 64) 0)]]).

Definition s_struct_dev_pm_info :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.pm_message" 4) 0); (TElem "" (TInt TI16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TInt TI8) 0); (TElem "" (TNamedStruct "struct.hrtimer" 64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.work_struct" 32) 0); (TElem "" (TNamedStruct "struct.wait_queue_head" 24) 0); (TElem "" (TPtr (TNamedStruct "struct.wake_irq" 0)) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TInt TI16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.pm_subsys_data" 32)) 0); (TElem "" (TPtr (TFunction TVoid [[(TPtr (TNamedStruct "struct.device" 0)); (TInt TI32)]])) 0); (TElem "" (TPtr (TNamedStruct "struct.dev_pm_qos" 0)) 0)]]).

Definition s_struct_srcu_data :=
    (TStruct 0 [[(TElem "" (TArray (TInt TI64) 2) 0); (TElem "" (TArray (TInt TI64) 2) 0); (TElem "" (TArray (TInt TI8) 32) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0); (TElem "" (TNamedStruct "struct.rcu_segcblist" 96) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI8) 0); (TElem "" (TNamedStruct "struct.timer_list" 40) 0); (TElem "" (TNamedStruct "struct.work_struct" 32) 0); (TElem "" (TNamedStruct "struct.callback_head" 16) 0); (TElem "" (TPtr (TNamedStruct "struct.srcu_node" 96)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.srcu_struct" 1944)) 0); (TElem "" (TArray (TInt TI8) 8) 0)]]).

Definition s_struct_seqlock_t :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.seqcount" 4) 0); (TElem "" (TNamedStruct "struct.spinlock" 4) 0)]]).

Definition s_struct_kernfs_open_file :=
    (TStruct 0 [[(TElem "" (TPtr (TNamedStruct "struct.kernfs_node" 128)) 0); (TElem "" (TPtr (TNamedStruct "struct.file" 248)) 0); (TElem "" (TPtr (TNamedStruct "struct.seq_file" 128)) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TPtr (TInt TI8)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI8) 0); (TElem "" (TPtr (TNamedStruct "struct.vm_operations_struct" 104)) 0)]]).

Definition s_struct_nodemask_t :=
    (TStruct 0 [[(TElem "" (TArray (TInt TI64) 1) 0)]]).

Definition s_union_anon_51 :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0)]]).

Definition s_struct_perf_branch_entry :=
    (TStruct 0 [[(TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0)]]).

Definition s_struct_hrtimer_cpu_base :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.raw_spinlock" 4) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI16) 0); (TElem "" (TInt TI16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.hrtimer" 64)) 0); (TElem "" (TInt TI64) 0); (TElem "" (TPtr (TNamedStruct "struct.hrtimer" 64)) 0); (TElem "" (TArray (TNamedStruct "struct.hrtimer_clock_base" 64) 8) 0)]]).

Definition s_struct_anon_66 :=
    (TStruct 0 [[(TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0)]]).

Definition s_struct_anon_34 :=
    (TStruct 0 [[(TElem "" (TPtr (TNamedStruct "struct.uid_gid_extent" 12)) 0); (TElem "" (TPtr (TNamedStruct "struct.uid_gid_extent" 12)) 0)]]).

Definition s_struct_signal_struct :=
    (TStruct 0 [[(TElem "" (TNamedStruct "struct.refcount_struct" 4) 0); (TElem "" (TNamedStruct "struct.atomic_t" 4) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.wait_queue_head" 24) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TNamedStruct "struct.sigpending" 24) 0); (TElem "" (TNamedStruct "struct.hlist_head" 8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.task_struct" 0)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI32) 0); (TElem "" (TNamedStruct "struct.list_head" 16) 0); (TElem "" (TNamedStruct "struct.hrtimer" 64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TArray (TNamedStruct "struct.cpu_itimer" 16) 2) 0); (TElem "" (TNamedStruct "struct.thread_group_cputimer" 24) 0); (TElem "" (TNamedStruct "struct.posix_cputimers" 80) 0); (TElem "" (TArray (TPtr (TNamedStruct "struct.pid" 96)) 4) 0); (TElem "" (TPtr (TNamedStruct "struct.pid" 96)) 0); (TElem "" (TInt TI32) 0); (TElem "" (TPtr (TNamedStruct "struct.tty_struct" 0)) 0); (TElem "" (TPtr (TNamedStruct "struct.autogroup" 0)) 0); (TElem "" (TNamedStruct "struct.seqlock_t" 0) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.prev_cputime" 24) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TNamedStruct "struct.task_io_accounting" 56) 0); (TElem "" (TInt TI64) 0); (TElem "" (TArray (TNamedStruct "struct.rlimit" 16) 16) 0); (TElem "" (TNamedStruct "struct.pacct_struct" 56) 0); (TElem "" (TPtr (TNamedStruct "struct.taskstats" 0)) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI16) 0); (TElem "" (TInt TI16) 0); (TElem "" (TPtr (TNamedStruct "struct.mm_struct" 864)) 0); (TElem "" (TNamedStruct "struct.mutex" 32) 0)]]).

Definition s_struct_taskstats :=
    (TStruct 0 [[(TElem "" (TInt TI16) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI8) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TArray (TInt TI8) 32) 0); (TElem "" (TInt TI8) 0); (TElem "" (TArray (TInt TI8) 3) 0); (TElem "" (TArray (TInt TI8) 4) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI32) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0); (TElem "" (TInt TI64) 0)]]).

Definition structures :  list (string * typ) :=
    (("struct.s2_sys_reg_desc", s_struct_s2_sys_reg_desc)
     :: ("struct.s2_host_regs", s_struct_s2_host_regs)
     :: ("struct.kvm_cpu_context", s_struct_kvm_cpu_context)
     :: ("struct.kvm_regs", s_struct_kvm_regs)
     :: ("struct.user_pt_regs", s_struct_user_pt_regs)
     :: ("struct.user_fpsimd_state", s_struct_user_fpsimd_state)
     :: ("struct.kvm_vcpu", s_struct_kvm_vcpu)
     :: ("struct.kvm", s_struct_kvm)
     :: ("struct.spinlock", s_struct_spinlock)
     :: ("struct.raw_spinlock", s_struct_raw_spinlock)
     :: ("struct.qspinlock", s_struct_qspinlock)
     :: ("struct.mutex", s_struct_mutex)
     :: ("struct.optimistic_spin_queue", s_struct_optimistic_spin_queue)
     :: ("struct.list_head", s_struct_list_head)
     :: ("struct.mm_struct", s_struct_mm_struct)
     :: ("struct.vm_area_struct", s_struct_vm_area_struct)
     :: ("struct.rb_node", s_struct_rb_node)
     :: ("struct.anon_vma", s_struct_anon_vma)
     :: ("struct.vm_operations_struct", s_struct_vm_operations_struct)
     :: ("struct.vm_fault", s_struct_vm_fault)
     :: ("struct.page", s_struct_page)
     :: ("struct.address_space", s_struct_address_space)
     :: ("struct.inode", s_struct_inode)
     :: ("struct.posix_acl", s_struct_posix_acl)
     :: ("struct.dentry", s_struct_dentry)
     :: ("struct.seqcount", s_struct_seqcount)
     :: ("struct.hlist_bl_node", s_struct_hlist_bl_node)
     :: ("struct.qstr", s_struct_qstr)
     :: ("struct.lockref", s_struct_lockref)
     :: ("struct.vfsmount", s_struct_vfsmount)
     :: ("struct.path", s_struct_path)
     :: ("struct.file_system_type", s_struct_file_system_type)
     :: ("struct.fs_context", s_struct_fs_context)
     :: ("struct.fs_parameter_description", s_struct_fs_parameter_description)
     :: ("struct.module_kobject", s_struct_module_kobject)
     :: ("struct.kset", s_struct_kset)
     :: ("struct.kset_uevent_ops", s_struct_kset_uevent_ops)
     :: ("struct.kobj_uevent_env", s_struct_kobj_uevent_env)
     :: ("struct.kobj_type", s_struct_kobj_type)
     :: ("struct.sysfs_ops", s_struct_sysfs_ops)
     :: ("struct.attribute", s_struct_attribute)
     :: ("struct.attribute_group", s_struct_attribute_group)
     :: ("struct.bin_attribute", s_struct_bin_attribute)
     :: ("struct.file", s_struct_file)
     :: ("struct.llist_node", s_struct_llist_node)
     :: ("struct.callback_head", s_struct_callback_head)
     :: ("struct.file_operations", s_struct_file_operations)
     :: ("struct.kiocb", s_struct_kiocb)
     :: ("struct.iov_iter", s_struct_iov_iter)
     :: ("struct.iovec", s_struct_iovec)
     :: ("struct.pipe_inode_info", s_struct_pipe_inode_info)
     :: ("struct.dir_context", s_struct_dir_context)
     :: ("struct.poll_table_struct", s_struct_poll_table_struct)
     :: ("struct.file_lock", s_struct_file_lock)
     :: ("struct.hlist_node", s_struct_hlist_node)
     :: ("struct.wait_queue_head", s_struct_wait_queue_head)
     :: ("struct.fasync_struct", s_struct_fasync_struct)
     :: ("struct.qrwlock", s_struct_qrwlock)
     :: ("struct.file_lock_operations", s_struct_file_lock_operations)
     :: ("struct.lock_manager_operations", s_struct_lock_manager_operations)
     :: ("struct.nfs_lock_info", s_struct_nfs_lock_info)
     :: ("struct.nlm_lockowner", s_struct_nlm_lockowner)
     :: ("struct.seq_file", s_struct_seq_file)
     :: ("struct.seq_operations", s_struct_seq_operations)
     :: ("struct.fown_struct", s_struct_fown_struct)
     :: ("struct.pid", s_struct_pid)
     :: ("struct.refcount_struct", s_struct_refcount_struct)
     :: ("struct.hlist_head", s_struct_hlist_head)
     :: ("struct.upid", s_struct_upid)
     :: ("struct.pid_namespace", s_struct_pid_namespace)
     :: ("struct.kref", s_struct_kref)
     :: ("struct.idr", s_struct_idr)
     :: ("struct.xarray", s_struct_xarray)
     :: ("struct.thread_info", s_struct_thread_info)
     :: ("struct.sched_class", s_struct_sched_class)
     :: ("struct.load_weight", s_struct_load_weight)
     :: ("struct.sched_statistics", s_struct_sched_statistics)
     :: ("struct.cfs_rq", s_struct_cfs_rq)
     :: ("struct.sched_avg", s_struct_sched_avg)
     :: ("struct.util_est", s_struct_util_est)
     :: ("struct.sched_rt_entity", s_struct_sched_rt_entity)
     :: ("struct.task_group", s_struct_task_group)
     :: ("struct.hrtimer", s_struct_hrtimer)
     :: ("struct.timerqueue_node", s_struct_timerqueue_node)
     :: ("struct.hrtimer_clock_base", s_struct_hrtimer_clock_base)
     :: ("struct.timerqueue_head", s_struct_timerqueue_head)
     :: ("struct.rb_root_cached", s_struct_rb_root_cached)
     :: ("struct.rb_root", s_struct_rb_root)
     :: ("struct.cpumask", s_struct_cpumask)
     :: ("union.rcu_special", s_union_rcu_special)
     :: ("struct.rcu_node", s_struct_rcu_node)
     :: ("struct.sched_info", s_struct_sched_info)
     :: ("struct.plist_node", s_struct_plist_node)
     :: ("struct.vmacache", s_struct_vmacache)
     :: ("struct.task_rss_stat", s_struct_task_rss_stat)
     :: ("struct.restart_block", s_struct_restart_block)
     :: ("struct.completion", s_struct_completion)
     :: ("struct.prev_cputime", s_struct_prev_cputime)
     :: ("struct.posix_cputimers", s_struct_posix_cputimers)
     :: ("struct.posix_cputimer_base", s_struct_posix_cputimer_base)
     :: ("struct.cred", s_struct_cred)
     :: ("struct.kernel_cap_struct", s_struct_kernel_cap_struct)
     :: ("struct.key", s_struct_key)
     :: ("struct.rw_semaphore", s_struct_rw_semaphore)
     :: ("struct.key_user", s_struct_key_user)
     :: ("struct.keyring_index_key", s_struct_keyring_index_key)
     :: ("struct.key_type", s_struct_key_type)
     :: ("struct.key_tag", s_struct_key_tag)
     :: ("union.key_payload", s_union_key_payload)
     :: ("struct.key_restriction", s_struct_key_restriction)
     :: ("struct.user_struct", s_struct_user_struct)
     :: ("struct.ratelimit_state", s_struct_ratelimit_state)
     :: ("struct.user_namespace", s_struct_user_namespace)
     :: ("struct.uid_gid_map", s_struct_uid_gid_map)
     :: ("struct.uid_gid_extent", s_struct_uid_gid_extent)
     :: ("struct.ns_common", s_struct_ns_common)
     :: ("struct.proc_ns_operations", s_struct_proc_ns_operations)
     :: ("struct.work_struct", s_struct_work_struct)
     :: ("struct.ctl_table_set", s_struct_ctl_table_set)
     :: ("struct.ctl_dir", s_struct_ctl_dir)
     :: ("struct.ctl_table_header", s_struct_ctl_table_header)
     :: ("struct.ctl_table", s_struct_ctl_table)
     :: ("struct.ctl_table_poll", s_struct_ctl_table_poll)
     :: ("struct.ctl_table_root", s_struct_ctl_table_root)
     :: ("struct.ctl_node", s_struct_ctl_node)
     :: ("struct.ucounts", s_struct_ucounts)
     :: ("struct.group_info", s_struct_group_info)
     :: ("struct.nameidata", s_struct_nameidata)
     :: ("struct.sysv_sem", s_struct_sysv_sem)
     :: ("struct.sem_undo_list", s_struct_sem_undo_list)
     :: ("struct.sysv_shm", s_struct_sysv_shm)
     :: ("struct.fs_struct", s_struct_fs_struct)
     :: ("struct.files_struct", s_struct_files_struct)
     :: ("struct.nsproxy", s_struct_nsproxy)
     :: ("struct.uts_namespace", s_struct_uts_namespace)
     :: ("struct.ipc_namespace", s_struct_ipc_namespace)
     :: ("struct.mnt_namespace", s_struct_mnt_namespace)
     :: ("struct.net", s_struct_net)
     :: ("struct.cgroup_namespace", s_struct_cgroup_namespace)
     :: ("struct.css_set", s_struct_css_set)
     :: ("struct.cgroup_subsys_state", s_struct_cgroup_subsys_state)
     :: ("struct.cgroup", s_struct_cgroup)
     :: ("struct.kernfs_node", s_struct_kernfs_node)
     :: ("struct.kernfs_root", s_struct_kernfs_root)
     :: ("struct.kernfs_syscall_ops", s_struct_kernfs_syscall_ops)
     :: ("struct.kernfs_elem_attr", s_struct_kernfs_elem_attr)
     :: ("struct.kernfs_ops", s_struct_kernfs_ops)
     :: ("struct.kernfs_open_node", s_struct_kernfs_open_node)
     :: ("union.kernfs_node_id", s_union_kernfs_node_id)
     :: ("struct.kernfs_iattrs", s_struct_kernfs_iattrs)
     :: ("struct.cgroup_file", s_struct_cgroup_file)
     :: ("struct.timer_list", s_struct_timer_list)
     :: ("struct.cgroup_root", s_struct_cgroup_root)
     :: ("struct.cgroup_rstat_cpu", s_struct_cgroup_rstat_cpu)
     :: ("struct.u64_stats_sync", s_struct_u64_stats_sync)
     :: ("struct.cgroup_base_stat", s_struct_cgroup_base_stat)
     :: ("struct.task_cputime", s_struct_task_cputime)
     :: ("struct.psi_group", s_struct_psi_group)
     :: ("struct.cgroup_bpf", s_struct_cgroup_bpf)
     :: ("struct.bpf_prog_array", s_struct_bpf_prog_array)
     :: ("struct.bpf_prog_array_item", s_struct_bpf_prog_array_item)
     :: ("struct.bpf_prog", s_struct_bpf_prog)
     :: ("struct.bpf_cgroup_storage", s_struct_bpf_cgroup_storage)
     :: ("struct.bpf_storage_buffer", s_struct_bpf_storage_buffer)
     :: ("struct.bpf_cgroup_storage_map", s_struct_bpf_cgroup_storage_map)
     :: ("struct.bpf_cgroup_storage_key", s_struct_bpf_cgroup_storage_key)
     :: ("struct.cgroup_freezer_state", s_struct_cgroup_freezer_state)
     :: ("struct.cgroup_taskset", s_struct_cgroup_taskset)
     :: ("struct.cftype", s_struct_cftype)
     :: ("struct.rcu_work", s_struct_rcu_work)
     :: ("struct.workqueue_struct", s_struct_workqueue_struct)
     :: ("struct.sigpending", s_struct_sigpending)
     :: ("struct.cpu_itimer", s_struct_cpu_itimer)
     :: ("struct.thread_group_cputimer", s_struct_thread_group_cputimer)
     :: ("struct.task_cputime_atomic", s_struct_task_cputime_atomic)
     :: ("struct.tty_struct", s_struct_tty_struct)
     :: ("struct.autogroup", s_struct_autogroup)
     :: ("struct.task_io_accounting", s_struct_task_io_accounting)
     :: ("struct.rlimit", s_struct_rlimit)
     :: ("struct.pacct_struct", s_struct_pacct_struct)
     :: ("struct.sighand_struct", s_struct_sighand_struct)
     :: ("struct.k_sigaction", s_struct_k_sigaction)
     :: ("struct.sigaction", s_struct_sigaction)
     :: ("struct.seccomp", s_struct_seccomp)
     :: ("struct.seccomp_filter", s_struct_seccomp_filter)
     :: ("struct.wake_q_node", s_struct_wake_q_node)
     :: ("struct.rt_mutex_waiter", s_struct_rt_mutex_waiter)
     :: ("struct.bio_list", s_struct_bio_list)
     :: ("struct.blk_plug", s_struct_blk_plug)
     :: ("struct.reclaim_state", s_struct_reclaim_state)
     :: ("struct.backing_dev_info", s_struct_backing_dev_info)
     :: ("struct.io_context", s_struct_io_context)
     :: ("struct.io_cq", s_struct_io_cq)
     :: ("struct.request_queue", s_struct_request_queue)
     :: ("struct.kmem_cache", s_struct_kmem_cache)
     :: ("struct.capture_control", s_struct_capture_control)
     :: ("struct.kernel_siginfo", s_struct_kernel_siginfo)
     :: ("union.__sifields", s_union___sifields)
     :: ("struct.robust_list_head", s_struct_robust_list_head)
     :: ("struct.futex_pi_state", s_struct_futex_pi_state)
     :: ("struct.perf_event_context", s_struct_perf_event_context)
     :: ("struct.pmu", s_struct_pmu)
     :: ("struct.device_private", s_struct_device_private)
     :: ("struct.device_type", s_struct_device_type)
     :: ("struct.dev_pm_ops", s_struct_dev_pm_ops)
     :: ("struct.bus_type", s_struct_bus_type)
     :: ("struct.device_driver", s_struct_device_driver)
     :: ("struct.of_device_id", s_struct_of_device_id)
     :: ("struct.acpi_device_id", s_struct_acpi_device_id)
     :: ("struct.pm_message", s_struct_pm_message)
     :: ("struct.driver_private", s_struct_driver_private)
     :: ("struct.iommu_ops", s_struct_iommu_ops)
     :: ("struct.subsys_private", s_struct_subsys_private)
     :: ("struct.lock_class_key", s_struct_lock_class_key)
     :: ("struct.dev_links_info", s_struct_dev_links_info)
     :: ("struct.wake_irq", s_struct_wake_irq)
     :: ("struct.pm_subsys_data", s_struct_pm_subsys_data)
     :: ("struct.pm_domain_data", s_struct_pm_domain_data)
     :: ("struct.dev_pm_qos", s_struct_dev_pm_qos)
     :: ("struct.dev_pm_domain", s_struct_dev_pm_domain)
     :: ("struct.irq_domain", s_struct_irq_domain)
     :: ("struct.dev_pin_info", s_struct_dev_pin_info)
     :: ("struct.dma_map_ops", s_struct_dma_map_ops)
     :: ("struct.device_dma_parameters", s_struct_device_dma_parameters)
     :: ("struct.dma_coherent_mem", s_struct_dma_coherent_mem)
     :: ("struct.cma", s_struct_cma)
     :: ("struct.dev_archdata", s_struct_dev_archdata)
     :: ("struct.device_node", s_struct_device_node)
     :: ("struct.fwnode_handle", s_struct_fwnode_handle)
     :: ("struct.fwnode_operations", s_struct_fwnode_operations)
     :: ("struct.fwnode_reference_args", s_struct_fwnode_reference_args)
     :: ("struct.fwnode_endpoint", s_struct_fwnode_endpoint)
     :: ("struct.property", s_struct_property)
     :: ("struct.class", s_struct_class)
     :: ("struct.kobj_ns_type_operations", s_struct_kobj_ns_type_operations)
     :: ("struct.sock", s_struct_sock)
     :: ("struct.iommu_group", s_struct_iommu_group)
     :: ("struct.iommu_fwspec", s_struct_iommu_fwspec)
     :: ("struct.iommu_param", s_struct_iommu_param)
     :: ("struct.perf_cpu_context", s_struct_perf_cpu_context)
     :: ("struct.perf_event", s_struct_perf_event)
     :: ("struct.hw_perf_event", s_struct_hw_perf_event)
     :: ("struct.hw_perf_event_extra", s_struct_hw_perf_event_extra)
     :: ("struct.ring_buffer", s_struct_ring_buffer)
     :: ("struct.irq_work", s_struct_irq_work)
     :: ("struct.perf_addr_filters_head", s_struct_perf_addr_filters_head)
     :: ("struct.perf_addr_filter_range", s_struct_perf_addr_filter_range)
     :: ("struct.perf_raw_record", s_struct_perf_raw_record)
     :: ("struct.perf_raw_frag", s_struct_perf_raw_frag)
     :: ("struct.perf_branch_stack", s_struct_perf_branch_stack)
     :: ("union.perf_mem_data_src", s_union_perf_mem_data_src)
     :: ("struct.perf_callchain_entry", s_struct_perf_callchain_entry)
     :: ("struct.perf_regs", s_struct_perf_regs)
     :: ("struct.pt_regs", s_struct_pt_regs)
     :: ("struct.trace_event_call", s_struct_trace_event_call)
     :: ("struct.event_filter", s_struct_event_filter)
     :: ("struct.ftrace_ops", s_struct_ftrace_ops)
     :: ("struct.ftrace_ops_hash", s_struct_ftrace_ops_hash)
     :: ("struct.ftrace_hash", s_struct_ftrace_hash)
     :: ("struct.perf_event_groups", s_struct_perf_event_groups)
     :: ("struct.tlbflush_unmap_batch", s_struct_tlbflush_unmap_batch)
     :: ("struct.page_frag", s_struct_page_frag)
     :: ("struct.task_delay_info", s_struct_task_delay_info)
     :: ("struct.latency_record", s_struct_latency_record)
     :: ("struct.ftrace_ret_stack", s_struct_ftrace_ret_stack)
     :: ("struct.mem_cgroup", s_struct_mem_cgroup)
     :: ("struct.vm_struct", s_struct_vm_struct)
     :: ("struct.thread_struct", s_struct_thread_struct)
     :: ("struct.cpu_context", s_struct_cpu_context)
     :: ("struct.debug_info", s_struct_debug_info)
     :: ("struct.fs_pin", s_struct_fs_pin)
     :: ("struct.file_ra_state", s_struct_file_ra_state)
     :: ("struct.module_param_attrs", s_struct_module_param_attrs)
     :: ("struct.module_attribute", s_struct_module_attribute)
     :: ("struct.kernel_symbol", s_struct_kernel_symbol)
     :: ("struct.kernel_param", s_struct_kernel_param)
     :: ("struct.kernel_param_ops", s_struct_kernel_param_ops)
     :: ("struct.exception_table_entry", s_struct_exception_table_entry)
     :: ("struct.module_layout", s_struct_module_layout)
     :: ("struct.mod_tree_node", s_struct_mod_tree_node)
     :: ("struct.latch_tree_node", s_struct_latch_tree_node)
     :: ("struct.mod_arch_specific", s_struct_mod_arch_specific)
     :: ("struct.mod_plt_sec", s_struct_mod_plt_sec)
     :: ("struct.plt_entry", s_struct_plt_entry)
     :: ("struct.bug_entry", s_struct_bug_entry)
     :: ("struct.mod_kallsyms", s_struct_mod_kallsyms)
     :: ("struct.elf64_sym", s_struct_elf64_sym)
     :: ("struct.module_sect_attrs", s_struct_module_sect_attrs)
     :: ("struct.module_notes_attrs", s_struct_module_notes_attrs)
     :: ("struct.srcu_struct", s_struct_srcu_struct)
     :: ("struct.srcu_node", s_struct_srcu_node)
     :: ("struct.rcu_segcblist", s_struct_rcu_segcblist)
     :: ("struct.delayed_work", s_struct_delayed_work)
     :: ("struct.tracepoint", s_struct_tracepoint)
     :: ("struct.static_key", s_struct_static_key)
     :: ("struct.jump_entry", s_struct_jump_entry)
     :: ("struct.tracepoint_func", s_struct_tracepoint_func)
     :: ("struct.trace_eval_map", s_struct_trace_eval_map)
     :: ("struct.error_injection_entry", s_struct_error_injection_entry)
     :: ("struct.super_operations", s_struct_super_operations)
     :: ("struct.writeback_control", s_struct_writeback_control)
     :: ("struct.kstatfs", s_struct_kstatfs)
     :: ("struct.dquot", s_struct_dquot)
     :: ("struct.kqid", s_struct_kqid)
     :: ("struct.mem_dqblk", s_struct_mem_dqblk)
     :: ("struct.shrink_control", s_struct_shrink_control)
     :: ("struct.dquot_operations", s_struct_dquot_operations)
     :: ("struct.quotactl_ops", s_struct_quotactl_ops)
     :: ("struct.qc_info", s_struct_qc_info)
     :: ("struct.qc_dqblk", s_struct_qc_dqblk)
     :: ("struct.qc_state", s_struct_qc_state)
     :: ("struct.qc_type_state", s_struct_qc_type_state)
     :: ("struct.export_operations", s_struct_export_operations)
     :: ("struct.xattr_handler", s_struct_xattr_handler)
     :: ("struct.fscrypt_operations", s_struct_fscrypt_operations)
     :: ("struct.hlist_bl_head", s_struct_hlist_bl_head)
     :: ("struct.block_device", s_struct_block_device)
     :: ("struct.hd_struct", s_struct_hd_struct)
     :: ("struct.gendisk", s_struct_gendisk)
     :: ("struct.mtd_info", s_struct_mtd_info)
     :: ("struct.quota_info", s_struct_quota_info)
     :: ("struct.mem_dqinfo", s_struct_mem_dqinfo)
     :: ("struct.quota_format_type", s_struct_quota_format_type)
     :: ("struct.quota_format_ops", s_struct_quota_format_ops)
     :: ("struct.sb_writers", s_struct_sb_writers)
     :: ("struct.percpu_rw_semaphore", s_struct_percpu_rw_semaphore)
     :: ("struct.rcu_sync", s_struct_rcu_sync)
     :: ("struct.rcuwait", s_struct_rcuwait)
     :: ("struct.fsnotify_mark_connector", s_struct_fsnotify_mark_connector)
     :: ("struct.shrinker", s_struct_shrinker)
     :: ("struct.list_lru", s_struct_list_lru)
     :: ("struct.list_lru_one", s_struct_list_lru_one)
     :: ("struct.list_lru_memcg", s_struct_list_lru_memcg)
     :: ("struct.delayed_call", s_struct_delayed_call)
     :: ("struct.iattr", s_struct_iattr)
     :: ("struct.timespec64", s_struct_timespec64)
     :: ("struct.kstat", s_struct_kstat)
     :: ("struct.fiemap_extent_info", s_struct_fiemap_extent_info)
     :: ("struct.fiemap_extent", s_struct_fiemap_extent)
     :: ("struct.bdi_writeback", s_struct_bdi_writeback)
     :: ("struct.file_lock_context", s_struct_file_lock_context)
     :: ("struct.fscrypt_info", s_struct_fscrypt_info)
     :: ("struct.address_space_operations", s_struct_address_space_operations)
     :: ("struct.swap_info_struct", s_struct_swap_info_struct)
     :: ("struct.vm_userfaultfd_ctx", s_struct_vm_userfaultfd_ctx)
     :: ("struct.mm_rss_stat", s_struct_mm_rss_stat)
     :: ("struct.linux_binfmt", s_struct_linux_binfmt)
     :: ("struct.core_state", s_struct_core_state)
     :: ("struct.core_thread", s_struct_core_thread)
     :: ("struct.kioctx_table", s_struct_kioctx_table)
     :: ("struct.mmu_notifier_mm", s_struct_mmu_notifier_mm)
     :: ("struct.uprobes_state", s_struct_uprobes_state)
     :: ("struct.kvm_memslots", s_struct_kvm_memslots)
     :: ("struct.kvm_memory_slot", s_struct_kvm_memory_slot)
     :: ("struct.kvm_arch_memory_slot", s_struct_kvm_arch_memory_slot)
     :: ("struct.kvm_io_bus", s_struct_kvm_io_bus)
     :: ("struct.kvm_io_range", s_struct_kvm_io_range)
     :: ("struct.kvm_io_device", s_struct_kvm_io_device)
     :: ("struct.kvm_io_device_ops", s_struct_kvm_io_device_ops)
     :: ("struct.kvm_vm_stat", s_struct_kvm_vm_stat)
     :: ("struct.kvm_arch", s_struct_kvm_arch)
     :: ("struct.kvm_vmid", s_struct_kvm_vmid)
     :: ("struct.vgic_dist", s_struct_vgic_dist)
     :: ("struct.vgic_irq", s_struct_vgic_irq)
     :: ("struct.vgic_io_device", s_struct_vgic_io_device)
     :: ("struct.vgic_register_region", s_struct_vgic_register_region)
     :: ("struct.vgic_state_iter", s_struct_vgic_state_iter)
     :: ("struct.its_vm", s_struct_its_vm)
     :: ("struct.its_vpe", s_struct_its_vpe)
     :: ("struct.kvm_coalesced_mmio_ring", s_struct_kvm_coalesced_mmio_ring)
     :: ("struct.kvm_coalesced_mmio", s_struct_kvm_coalesced_mmio)
     :: ("struct.kvm_irq_routing_table", s_struct_kvm_irq_routing_table)
     :: ("struct.mmu_notifier", s_struct_mmu_notifier)
     :: ("struct.mmu_notifier_ops", s_struct_mmu_notifier_ops)
     :: ("struct.mmu_notifier_range", s_struct_mmu_notifier_range)
     :: ("struct.kvm_stat_data", s_struct_kvm_stat_data)
     :: ("struct.preempt_notifier", s_struct_preempt_notifier)
     :: ("struct.preempt_ops", s_struct_preempt_ops)
     :: ("struct.kvm_run", s_struct_kvm_run)
     :: ("struct.kvm_sync_regs", s_struct_kvm_sync_regs)
     :: ("struct.swait_queue_head", s_struct_swait_queue_head)
     :: ("struct.kvm_vcpu_stat", s_struct_kvm_vcpu_stat)
     :: ("struct.kvm_mmio_fragment", s_struct_kvm_mmio_fragment)
     :: ("struct.kvm_vcpu_arch", s_struct_kvm_vcpu_arch)
     :: ("struct.s2_trans", s_struct_s2_trans)
     :: ("struct.kvm_vcpu_fault_info", s_struct_kvm_vcpu_fault_info)
     :: ("struct.kvm_guest_debug_arch", s_struct_kvm_guest_debug_arch)
     :: ("struct.vgic_cpu", s_struct_vgic_cpu)
     :: ("struct.vgic_v3_cpu_if", s_struct_vgic_v3_cpu_if)
     :: ("struct.vgic_redist_region", s_struct_vgic_redist_region)
     :: ("struct.arch_timer_cpu", s_struct_arch_timer_cpu)
     :: ("struct.arch_timer_context", s_struct_arch_timer_context)
     :: ("struct.kvm_irq_level", s_struct_kvm_irq_level)
     :: ("struct.kvm_pmu", s_struct_kvm_pmu)
     :: ("struct.kvm_pmc", s_struct_kvm_pmc)
     :: ("struct.kvm_decode", s_struct_kvm_decode)
     :: ("struct.kvm_mmu_memory_cache", s_struct_kvm_mmu_memory_cache)
     :: ("struct.vcpu_reset_state", s_struct_vcpu_reset_state)
     :: ("struct.el2_data", s_struct_el2_data)
     :: ("struct.memblock_region", s_struct_memblock_region)
     :: ("struct.s2_memblock_info", s_struct_s2_memblock_info)
     :: ("struct.s2_cpu_arch", s_struct_s2_cpu_arch)
     :: ("struct.b_arch_spinlock_t", s_struct_b_arch_spinlock_t)
     :: ("struct.s2_page", s_struct_s2_page)
     :: ("struct.shadow_vcpu_context", s_struct_shadow_vcpu_context)
     :: ("struct.el2_vm_info", s_struct_el2_vm_info)
     :: ("struct.el2_load_info", s_struct_el2_load_info)
     :: ("struct.int_vcpu", s_struct_int_vcpu)
     :: ("struct.el2_smmu_cfg", s_struct_el2_smmu_cfg)
     :: ("struct.el2_arm_smmu_device", s_struct_el2_arm_smmu_device)
     :: ("struct.el2_per_cpu_data", s_struct_el2_per_cpu_data)
     :: ("struct.shared_data", s_struct_shared_data)
     :: ("union.anon.117", s_union_anon_117)
     :: ("struct.sigset_t", s_struct_sigset_t)
     :: ("struct.anon.116", s_struct_anon_116)
     :: ("struct.atomic_t", s_struct_atomic_t)
     :: ("struct.anon.124", s_struct_anon_124)
     :: ("union.anon.0", s_union_anon_0)
     :: ("union.anon.1", s_union_anon_1)
     :: ("struct.atomic64_t", s_struct_atomic64_t)
     :: ("struct.anon.3", s_struct_anon_3)
     :: ("struct.pgprot_t", s_struct_pgprot_t)
     :: ("struct.anon.4", s_struct_anon_4)
     :: ("struct.pte_t", s_struct_pte_t)
     :: ("union.anon.5", s_union_anon_5)
     :: ("union.anon.91", s_union_anon_91)
     :: ("struct.kuid_t", s_struct_kuid_t)
     :: ("struct.kgid_t", s_struct_kgid_t)
     :: ("union.anon.128", s_union_anon_128)
     :: ("union.anon.129", s_union_anon_129)
     :: ("union.anon.130", s_union_anon_130)
     :: ("union.anon.131", s_union_anon_131)
     :: ("union.anon.73", s_union_anon_73)
     :: ("union.anon.74", s_union_anon_74)
     :: ("union.anon.8", s_union_anon_8)
     :: ("union.anon.10", s_union_anon_10)
     :: ("union.anon.7", s_union_anon_7)
     :: ("union.anon.75", s_union_anon_75)
     :: ("union.anon.76", s_union_anon_76)
     :: ("union.anon.78", s_union_anon_78)
     :: ("struct.rwlock_t", s_struct_rwlock_t)
     :: ("union.anon.62", s_union_anon_62)
     :: ("union.anon.25", s_union_anon_25)
     :: ("union.anon.28", s_union_anon_28)
     :: ("union.anon.37", s_union_anon_37)
     :: ("union.anon.17", s_union_anon_17)
     :: ("union.anon.18", s_union_anon_18)
     :: ("union.anon.19", s_union_anon_19)
     :: ("union.anon.23", s_union_anon_23)
     :: ("union.anon.20", s_union_anon_20)
     :: ("union.anon.35", s_union_anon_35)
     :: ("union.anon.12", s_union_anon_12)
     :: ("union.anon.127", s_union_anon_127)
     :: ("union.anon.38", s_union_anon_38)
     :: ("union.anon.39", s_union_anon_39)
     :: ("struct.anon.40", s_struct_anon_40)
     :: ("struct.local64_t", s_struct_local64_t)
     :: ("union.anon.55", s_union_anon_55)
     :: ("union.anon.64", s_union_anon_64)
     :: ("union.anon.68", s_union_anon_68)
     :: ("struct.anon.72", s_struct_anon_72)
     :: ("union.anon.14", s_union_anon_14)
     :: ("union.anon.15", s_union_anon_15)
     :: ("union.anon.16", s_union_anon_16)
     :: ("union.anon.125", s_union_anon_125)
     :: ("union.anon.120", s_union_anon_120)
     :: ("union.anon.121", s_union_anon_121)
     :: ("union.anon.126", s_union_anon_126)
     :: ("union.anon.92", s_union_anon_92)
     :: ("struct.anon.118", s_struct_anon_118)
     :: ("struct.anon.123", s_struct_anon_123)
     :: ("union.anon.122", s_union_anon_122)
     :: ("union.anon", s_union_anon)
     :: ("struct.mm_context_t", s_struct_mm_context_t)
     :: ("struct.anon.6", s_struct_anon_6)
     :: ("struct.anon.29", s_struct_anon_29)
     :: ("struct.anon.36", s_struct_anon_36)
     :: ("struct.local_t", s_struct_local_t)
     :: ("struct.anon.56", s_struct_anon_56)
     :: ("struct.anon.105", s_struct_anon_105)
     :: ("struct.kprojid_t", s_struct_kprojid_t)
     :: ("struct.memblock", s_struct_memblock)
     :: ("union.anon.53", s_union_anon_53)
     :: ("struct.rseq", s_struct_rseq)
     :: ("struct.kobject", s_struct_kobject)
     :: ("union.anon.71", s_union_anon_71)
     :: ("struct.super_block", s_struct_super_block)
     :: ("struct.uuid_t", s_struct_uuid_t)
     :: ("struct.device", s_struct_device)
     :: ("union.anon.70", s_union_anon_70)
     :: ("struct.anon.44", s_struct_anon_44)
     :: ("struct.task_struct", s_struct_task_struct)
     :: ("struct.list_lru_node", s_struct_list_lru_node)
     :: ("struct.pgd_t", s_struct_pgd_t)
     :: ("struct.cgroup_subsys", s_struct_cgroup_subsys)
     :: ("struct.memblock_type", s_struct_memblock_type)
     :: ("struct.pmd_t", s_struct_pmd_t)
     :: ("union.anon.54", s_union_anon_54)
     :: ("struct.bpf_raw_event_map", s_struct_bpf_raw_event_map)
     :: ("struct.perf_event_attr", s_struct_perf_event_attr)
     :: ("struct.inode_operations", s_struct_inode_operations)
     :: ("struct.dentry_operations", s_struct_dentry_operations)
     :: ("struct.module", s_struct_module)
     :: ("struct.perf_sample_data", s_struct_perf_sample_data)
     :: ("struct.sched_entity", s_struct_sched_entity)
     :: ("union.anon.33", s_union_anon_33)
     :: ("struct.percpu_ref", s_struct_percpu_ref)
     :: ("union.anon.115", s_union_anon_115)
     :: ("union.anon.119", s_union_anon_119)
     :: ("struct.anon.67", s_struct_anon_67)
     :: ("union.anon.52", s_union_anon_52)
     :: ("struct.pud_t", s_struct_pud_t)
     :: ("struct.sched_dl_entity", s_struct_sched_dl_entity)
     :: ("struct.dev_pm_info", s_struct_dev_pm_info)
     :: ("struct.srcu_data", s_struct_srcu_data)
     :: ("struct.seqlock_t", s_struct_seqlock_t)
     :: ("struct.kernfs_open_file", s_struct_kernfs_open_file)
     :: ("struct.nodemask_t", s_struct_nodemask_t)
     :: ("union.anon.51", s_union_anon_51)
     :: ("struct.perf_branch_entry", s_struct_perf_branch_entry)
     :: ("struct.hrtimer_cpu_base", s_struct_hrtimer_cpu_base)
     :: ("struct.anon.66", s_struct_anon_66)
     :: ("struct.anon.34", s_struct_anon_34)
     :: ("struct.signal_struct", s_struct_signal_struct)
     :: ("struct.taskstats", s_struct_taskstats)
     :: nil).

(************ Global Variables ************)

Definition v__str_10 :=
    {| vname := ".str.10";
       vtype := (TArray (TInt TI8) 18);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (118)); (VInt (99)); (VInt (112)); (VInt (117)); (VInt (32)); (VInt (97)); (VInt (99)); (VInt (116)); (VInt (105)); (VInt (118)); (VInt (101)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_42 :=
    {| vname := ".str.42";
       vtype := (TArray (TInt TI8) 27);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (119)); (VInt (101)); (VInt (32)); (VInt (117)); (VInt (115)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (32)); (VInt (115)); (VInt (50)); (VInt (32)); (VInt (112)); (VInt (103)); (VInt (100)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_57 :=
    {| vname := ".str.57";
       vtype := (TArray (TInt TI8) 18);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (110)); (VInt (111)); (VInt (32)); (VInt (115)); (VInt (117)); (VInt (112)); (VInt (112)); (VInt (111)); (VInt (114)); (VInt (116)); (VInt (32)); (VInt (104)); (VInt (118)); (VInt (99)); (VInt (58)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_switch_table___init_stage2_translation_63 :=
    {| vname := "switch.table.__init_stage2_translation.63";
       vtype := (TArray (TInt TI32) 5);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (32)); (VInt (36)); (VInt (40)); (VInt (42)); (VInt (44))]));
       valign := 4 |}.

Definition v__str_17 :=
    {| vname := ".str.17";
       vtype := (TArray (TInt TI8) 18);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (58)); (VInt (32)); (VInt (109)); (VInt (97)); (VInt (112)); (VInt (95)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_9 :=
    {| vname := ".str.9";
       vtype := (TArray (TInt TI8) 17);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (32)); (VInt (105)); (VInt (110)); (VInt (32)); (VInt (114)); (VInt (101)); (VInt (109)); (VInt (97)); (VInt (112)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_40 :=
    {| vname := ".str.40";
       vtype := (TArray (TInt TI8) 24);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (101)); (VInt (120)); (VInt (105)); (VInt (115)); (VInt (116)); (VInt (105)); (VInt (110)); (VInt (103)); (VInt (32)); (VInt (110)); (VInt (112)); (VInt (116)); (VInt (58)); (VInt (32)); (VInt (112)); (VInt (116)); (VInt (101)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_stage2_pgs_end :=
    {| vname := "stage2_pgs_end";
       vtype := (TArray (TInt TI8) 0);
       vconst := false;
       vinitializer := None;
       valign := 1 |}.

Definition v__str_22 :=
    {| vname := ".str.22";
       vtype := (TArray (TInt TI8) 7);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (118)); (VInt (109)); (VInt (105)); (VInt (100)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_37 :=
    {| vname := ".str.37";
       vtype := (TArray (TInt TI8) 23);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (112)); (VInt (103)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (111)); (VInt (99)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_shared_data_start :=
    {| vname := "shared_data_start";
       vtype := (TArray (TInt TI8) 0);
       vconst := false;
       vinitializer := None;
       valign := 1 |}.

Definition v__str_56 :=
    {| vname := ".str.56";
       vtype := (TArray (TInt TI8) 22);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (72)); (VInt (86)); (VInt (67)); (VInt (95)); (VInt (69)); (VInt (78)); (VInt (65)); (VInt (66)); (VInt (76)); (VInt (69)); (VInt (95)); (VInt (83)); (VInt (50)); (VInt (95)); (VInt (84)); (VInt (82)); (VInt (65)); (VInt (78)); (VInt (83)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_60 :=
    {| vname := ".str.60";
       vtype := (TArray (TInt TI8) 7);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (97)); (VInt (58)); (VInt (32)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_physvirt_offset :=
    {| vname := "physvirt_offset";
       vtype := (TInt TI64);
       vconst := false;
       vinitializer := None;
       valign := 8 |}.

Definition v__str_49 :=
    {| vname := ".str.49";
       vtype := (TArray (TInt TI8) 38);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (91)); (VInt (69)); (VInt (76)); (VInt (50)); (VInt (93)); (VInt (32)); (VInt (99)); (VInt (108)); (VInt (101)); (VInt (97)); (VInt (114)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (120)); (VInt (32)); (VInt (98)); (VInt (121)); (VInt (116)); (VInt (101)); (VInt (32)); (VInt (100)); (VInt (97)); (VInt (116)); (VInt (97)); (VInt (32)); (VInt (115)); (VInt (105)); (VInt (122)); (VInt (101)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (120)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_2 :=
    {| vname := ".str.2";
       vtype := (TArray (TInt TI8) 65);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (50)); (VInt (101)); (VInt (102)); (VInt (50)); (VInt (52)); (VInt (52)); (VInt (48)); (VInt (97)); (VInt (50)); (VInt (98)); (VInt (53)); (VInt (55)); (VInt (54)); (VInt (54)); (VInt (52)); (VInt (51)); (VInt (54)); (VInt (51)); (VInt (53)); (VInt (51)); (VInt (100)); (VInt (48)); (VInt (55)); (VInt (55)); (VInt (48)); (VInt (53)); (VInt (98)); (VInt (54)); (VInt (48)); (VInt (50)); (VInt (98)); (VInt (102)); (VInt (97)); (VInt (98)); (VInt (53)); (VInt (53)); (VInt (53)); (VInt (50)); (VInt (54)); (VInt (56)); (VInt (51)); (VInt (49)); (VInt (52)); (VInt (54)); (VInt (48)); (VInt (97)); (VInt (99)); (VInt (98)); (VInt (57)); (VInt (52)); (VInt (55)); (VInt (57)); (VInt (56)); (VInt (50)); (VInt (52)); (VInt (49)); (VInt (102)); (VInt (50)); (VInt (49)); (VInt (48)); (VInt (52)); (VInt (102)); (VInt (51)); (VInt (97)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_51 :=
    {| vname := ".str.51";
       vtype := (TArray (TInt TI8) 21);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (109)); (VInt (101)); (VInt (109)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (116)); (VInt (105)); (VInt (110)); (VInt (103)); (VInt (32)); (VInt (37)); (VInt (100)); (VInt (32)); (VInt (98)); (VInt (121)); (VInt (116)); (VInt (101)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_el2_data_end :=
    {| vname := "el2_data_end";
       vtype := (TArray (TInt TI8) 0);
       vconst := false;
       vinitializer := None;
       valign := 1 |}.

Definition v__str_38 :=
    {| vname := ".str.38";
       vtype := (TArray (TInt TI8) 17);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (111)); (VInt (99)); (VInt (95)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (95)); (VInt (112)); (VInt (103)); (VInt (100)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_12 :=
    {| vname := ".str.12";
       vtype := (TArray (TInt TI8) 16);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (114)); (VInt (101)); (VInt (103)); (VInt (105)); (VInt (115)); (VInt (116)); (VInt (101)); (VInt (114)); (VInt (32)); (VInt (118)); (VInt (99)); (VInt (112)); (VInt (117)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_25 :=
    {| vname := ".str.25";
       vtype := (TArray (TInt TI8) 32);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (97)); (VInt (115)); (VInt (115)); (VInt (105)); (VInt (103)); (VInt (110)); (VInt (95)); (VInt (116)); (VInt (111)); (VInt (95)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (58)); (VInt (32)); (VInt (111)); (VInt (119)); (VInt (110)); (VInt (101)); (VInt (114)); (VInt (32)); (VInt (117)); (VInt (110)); (VInt (107)); (VInt (110)); (VInt (111)); (VInt (119)); (VInt (110)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_kimage_voffset :=
    {| vname := "kimage_voffset";
       vtype := (TInt TI64);
       vconst := false;
       vinitializer := None;
       valign := 8 |}.

Definition v__str_15 :=
    {| vname := ".str.15";
       vtype := (TArray (TInt TI8) 20);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (58)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (111)); (VInt (99)); (VInt (95)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_47 :=
    {| vname := ".str.47";
       vtype := (TArray (TInt TI8) 20);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (117)); (VInt (110)); (VInt (107)); (VInt (110)); (VInt (111)); (VInt (119)); (VInt (110)); (VInt (32)); (VInt (101)); (VInt (120)); (VInt (99)); (VInt (101)); (VInt (112)); (VInt (116)); (VInt (105)); (VInt (111)); (VInt (110)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_27 :=
    {| vname := ".str.27";
       vtype := (TArray (TInt TI8) 32);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (105)); (VInt (110)); (VInt (118)); (VInt (97)); (VInt (108)); (VInt (105)); (VInt (100)); (VInt (32)); (VInt (119)); (VInt (114)); (VInt (105)); (VInt (116)); (VInt (101)); (VInt (58)); (VInt (32)); (VInt (99)); (VInt (98)); (VInt (32)); (VInt (97)); (VInt (99)); (VInt (99)); (VInt (101)); (VInt (115)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_53 :=
    {| vname := ".str.53";
       vtype := (TArray (TInt TI8) 71);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (115)); (VInt (116)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (50)); (VInt (95)); (VInt (112)); (VInt (103)); (VInt (115)); (VInt (95)); (VInt (115)); (VInt (116)); (VInt (97)); (VInt (114)); (VInt (116)); (VInt (61)); (VInt (48)); (VInt (120)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (32)); (VInt (40)); (VInt (112)); (VInt (97)); (VInt (61)); (VInt (48)); (VInt (120)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (41)); (VInt (32)); (VInt (115)); (VInt (116)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (50)); (VInt (95)); (VInt (112)); (VInt (103)); (VInt (115)); (VInt (95)); (VInt (101)); (VInt (110)); (VInt (100)); (VInt (61)); (VInt (48)); (VInt (120)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (32)); (VInt (40)); (VInt (112)); (VInt (97)); (VInt (61)); (VInt (48)); (VInt (120)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (41)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_32 :=
    {| vname := ".str.32";
       vtype := (TArray (TInt TI8) 8);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (84)); (VInt (84)); (VInt (66)); (VInt (82)); (VInt (48)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_43 :=
    {| vname := ".str.43";
       vtype := (TArray (TInt TI8) 27);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (119)); (VInt (101)); (VInt (32)); (VInt (117)); (VInt (115)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (32)); (VInt (115)); (VInt (50)); (VInt (32)); (VInt (112)); (VInt (117)); (VInt (100)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_29 :=
    {| vname := ".str.29";
       vtype := (TArray (TInt TI8) 9);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (111)); (VInt (102)); (VInt (102)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_3 :=
    {| vname := ".str.3";
       vtype := (TArray (TInt TI8) 129);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (51)); (VInt (53)); (VInt (101)); (VInt (57)); (VInt (56)); (VInt (52)); (VInt (56)); (VInt (101)); (VInt (98)); (VInt (54)); (VInt (49)); (VInt (56)); (VInt (101)); (VInt (55)); (VInt (49)); (VInt (53)); (VInt (48)); (VInt (53)); (VInt (54)); (VInt (54)); (VInt (55)); (VInt (49)); (VInt (54)); (VInt (54)); (VInt (54)); (VInt (50)); (VInt (98)); (VInt (50)); (VInt (102)); (VInt (55)); (VInt (100)); (VInt (56)); (VInt (57)); (VInt (52)); (VInt (52)); (VInt (102)); (VInt (48)); (VInt (97)); (VInt (52)); (VInt (101)); (VInt (56)); (VInt (53)); (VInt (56)); (VInt (50)); (VInt (100)); (VInt (100)); (VInt (101)); (VInt (98)); (VInt (50)); (VInt (98)); (VInt (50)); (VInt (48)); (VInt (57)); (VInt (100)); (VInt (50)); (VInt (98)); (VInt (97)); (VInt (101)); (VInt (54)); (VInt (98)); (VInt (54)); (VInt (51)); (VInt (100)); (VInt (53)); (VInt (102)); (VInt (53)); (VInt (49)); (VInt (101)); (VInt (98)); (VInt (102)); (VInt (49)); (VInt (100)); (VInt (99)); (VInt (53)); (VInt (52)); (VInt (55)); (VInt (52)); (VInt (50)); (VInt (50)); (VInt (50)); (VInt (55)); (VInt (101)); (VInt (52)); (VInt (53)); (VInt (102)); (VInt (55)); (VInt (98)); (VInt (98)); (VInt (98)); (VInt (57)); (VInt (100)); (VInt (52)); (VInt (98)); (VInt (97)); (VInt (49)); (VInt (100)); (VInt (49)); (VInt (102)); (VInt (56)); (VInt (51)); (VInt (98)); (VInt (53)); (VInt (50)); (VInt (98)); (VInt (56)); (VInt (55)); (VInt (97)); (VInt (52)); (VInt (99)); (VInt (101)); (VInt (57)); (VInt (57)); (VInt (49)); (VInt (56)); (VInt (48)); (VInt (97)); (VInt (97)); (VInt (57)); (VInt (97)); (VInt (53)); (VInt (52)); (VInt (56)); (VInt (101)); (VInt (55)); (VInt (100)); (VInt (100)); (VInt (48)); (VInt (53)); (VInt (0))]));
       valign := 1 |}.

Definition v___num_online_cpus :=
    {| vname := "__num_online_cpus";
       vtype := (TNamedStruct "struct.atomic_t" 4);
       vconst := false;
       vinitializer := None;
       valign := 4 |}.

Definition v__str_58 :=
    {| vname := ".str.58";
       vtype := (TArray (TInt TI8) 34);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (105)); (VInt (110)); (VInt (118)); (VInt (97)); (VInt (108)); (VInt (105)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (99)); (VInt (99)); (VInt (101)); (VInt (115)); (VInt (115)); (VInt (32)); (VInt (111)); (VInt (102)); (VInt (32)); (VInt (103)); (VInt (117)); (VInt (101)); (VInt (115)); (VInt (116)); (VInt (32)); (VInt (109)); (VInt (101)); (VInt (109)); (VInt (111)); (VInt (114)); (VInt (121)); (VInt (10)); (VInt (13)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_4 :=
    {| vname := ".str.4";
       vtype := (TArray (TInt TI8) 19);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (118)); (VInt (101)); (VInt (114)); (VInt (105)); (VInt (102)); (VInt (121)); (VInt (105)); (VInt (110)); (VInt (103)); (VInt (32)); (VInt (105)); (VInt (109)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (58)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_19 :=
    {| vname := ".str.19";
       vtype := (TArray (TInt TI8) 38);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (97)); (VInt (115)); (VInt (115)); (VInt (105)); (VInt (103)); (VInt (110)); (VInt (32)); (VInt (112)); (VInt (102)); (VInt (110)); (VInt (32)); (VInt (117)); (VInt (115)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (98)); (VInt (121)); (VInt (32)); (VInt (104)); (VInt (111)); (VInt (115)); (VInt (116)); (VInt (32)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (100)); (VInt (101)); (VInt (118)); (VInt (105)); (VInt (99)); (VInt (101)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_44 :=
    {| vname := ".str.44";
       vtype := (TArray (TInt TI8) 27);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (119)); (VInt (101)); (VInt (32)); (VInt (117)); (VInt (115)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (32)); (VInt (115)); (VInt (50)); (VInt (32)); (VInt (112)); (VInt (109)); (VInt (100)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str :=
    {| vname := ".str";
       vtype := (TArray (TInt TI8) 5);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (118)); (VInt (109)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_31 :=
    {| vname := ".str.31";
       vtype := (TArray (TInt TI8) 8);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (105)); (VInt (110)); (VInt (100)); (VInt (101)); (VInt (120)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_59 :=
    {| vname := ".str.59";
       vtype := (TArray (TInt TI8) 7);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (99)); (VInt (58)); (VInt (32)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_35 :=
    {| vname := ".str.35";
       vtype := (TArray (TInt TI8) 26);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (104)); (VInt (97)); (VInt (110)); (VInt (100)); (VInt (108)); (VInt (101)); (VInt (32)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (119)); (VInt (114)); (VInt (105)); (VInt (116)); (VInt (101)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_54 :=
    {| vname := ".str.54";
       vtype := (TArray (TInt TI8) 41);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (69)); (VInt (76)); (VInt (50)); (VInt (32)); (VInt (115)); (VInt (121)); (VInt (115)); (VInt (116)); (VInt (101)); (VInt (109)); (VInt (32)); (VInt (112)); (VInt (104)); (VInt (121)); (VInt (115)); (VInt (32)); (VInt (109)); (VInt (101)); (VInt (109)); (VInt (32)); (VInt (115)); (VInt (116)); (VInt (97)); (VInt (114)); (VInt (116)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (32)); (VInt (101)); (VInt (110)); (VInt (100)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_41 :=
    {| vname := ".str.41";
       vtype := (TArray (TInt TI8) 25);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (112)); (VInt (116)); (VInt (58)); (VInt (32)); (VInt (118)); (VInt (116)); (VInt (116)); (VInt (98)); (VInt (114)); (VInt (32)); (VInt (61)); (VInt (32)); (VInt (48)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_45 :=
    {| vname := ".str.45";
       vtype := (TArray (TInt TI8) 29);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (119)); (VInt (101)); (VInt (32)); (VInt (117)); (VInt (115)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (32)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (112)); (VInt (103)); (VInt (100)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_20 :=
    {| vname := ".str.20";
       vtype := (TArray (TInt TI8) 37);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (109)); (VInt (97)); (VInt (112)); (VInt (32)); (VInt (33)); (VInt (61)); (VInt (32)); (VInt (103)); (VInt (102)); (VInt (110)); (VInt (32)); (VInt (124)); (VInt (124)); (VInt (32)); (VInt (99)); (VInt (111)); (VInt (117)); (VInt (110)); (VInt (116)); (VInt (32)); (VInt (33)); (VInt (61)); (VInt (32)); (VInt (73)); (VInt (78)); (VInt (86)); (VInt (65)); (VInt (76)); (VInt (73)); (VInt (68)); (VInt (95)); (VInt (77)); (VInt (69)); (VInt (77)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_14 :=
    {| vname := ".str.14";
       vtype := (TArray (TInt TI8) 16);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (101)); (VInt (109)); (VInt (97)); (VInt (112)); (VInt (32)); (VInt (118)); (VInt (109)); (VInt (32)); (VInt (105)); (VInt (109)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_6 :=
    {| vname := ".str.6";
       vtype := (TArray (TInt TI8) 4);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (37)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_13 :=
    {| vname := ".str.13";
       vtype := (TArray (TInt TI8) 15);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (114)); (VInt (101)); (VInt (103)); (VInt (105)); (VInt (115)); (VInt (116)); (VInt (101)); (VInt (114)); (VInt (32)); (VInt (107)); (VInt (118)); (VInt (109)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_7 :=
    {| vname := ".str.7";
       vtype := (TArray (TInt TI8) 3);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (37)); (VInt (120)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_36 :=
    {| vname := ".str.36";
       vtype := (TArray (TInt TI8) 25);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (104)); (VInt (97)); (VInt (110)); (VInt (100)); (VInt (108)); (VInt (101)); (VInt (32)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (114)); (VInt (101)); (VInt (97)); (VInt (100)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_23 :=
    {| vname := ".str.23";
       vtype := (TArray (TInt TI8) 8);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (111)); (VInt (119)); (VInt (110)); (VInt (101)); (VInt (114)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_52 :=
    {| vname := ".str.52";
       vtype := (TArray (TInt TI8) 29);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (119)); (VInt (97)); (VInt (110)); (VInt (116)); (VInt (32)); (VInt (116)); (VInt (111)); (VInt (32)); (VInt (109)); (VInt (101)); (VInt (109)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (32)); (VInt (45)); (VInt (62)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (108)); (VInt (120)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_24 :=
    {| vname := ".str.24";
       vtype := (TArray (TInt TI8) 6);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (102)); (VInt (110)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_8 :=
    {| vname := ".str.8";
       vtype := (TArray (TInt TI8) 2);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_48 :=
    {| vname := ".str.48";
       vtype := (TArray (TInt TI8) 14);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (101)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (103)); (VInt (112)); (VInt (32)); (VInt (114)); (VInt (101)); (VInt (103)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_5 :=
    {| vname := ".str.5";
       vtype := (TArray (TInt TI8) 11);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (91)); (VInt (114)); (VInt (101)); (VInt (115)); (VInt (117)); (VInt (108)); (VInt (116)); (VInt (93)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_26 :=
    {| vname := ".str.26";
       vtype := (TArray (TInt TI8) 36);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (105)); (VInt (110)); (VInt (118)); (VInt (97)); (VInt (108)); (VInt (105)); (VInt (100)); (VInt (32)); (VInt (119)); (VInt (114)); (VInt (105)); (VInt (116)); (VInt (101)); (VInt (58)); (VInt (32)); (VInt (103)); (VInt (108)); (VInt (111)); (VInt (98)); (VInt (97)); (VInt (108)); (VInt (32)); (VInt (97)); (VInt (99)); (VInt (99)); (VInt (101)); (VInt (115)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_stage2_pgs_start :=
    {| vname := "stage2_pgs_start";
       vtype := (TArray (TInt TI8) 0);
       vconst := false;
       vinitializer := None;
       valign := 1 |}.

Definition v__str_39 :=
    {| vname := ".str.39";
       vtype := (TArray (TInt TI8) 24);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (101)); (VInt (120)); (VInt (105)); (VInt (115)); (VInt (116)); (VInt (105)); (VInt (110)); (VInt (103)); (VInt (32)); (VInt (110)); (VInt (112)); (VInt (116)); (VInt (58)); (VInt (32)); (VInt (112)); (VInt (109)); (VInt (100)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_el2_data_start :=
    {| vname := "el2_data_start";
       vtype := (TArray (TInt TI8) 0);
       vconst := false;
       vinitializer := None;
       valign := 1 |}.

Definition v_host_sys_reg_descs :=
    {| vname := "host_sys_reg_descs";
       vtype := (TArray (TNamedStruct "struct.s2_sys_reg_desc" 24) 27);
       vconst := true;
       vinitializer := (Some (VStruct [(VStruct [(VInt (3)); (VInt (0)); (VInt (2)); (VInt (0)); (VInt (0)); (VInt (7)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (2)); (VInt (0)); (VInt (1)); (VInt (8)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (12)); (VInt (0)); (VInt (0)); (VInt (15)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (1)); (VInt (0)); (VInt (0)); (VInt (3)); (VInt (12910712))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (5)); (VInt (2)); (VInt (0)); (VInt (10)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (6)); (VInt (0)); (VInt (0)); (VInt (13)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (13)); (VInt (0)); (VInt (4)); (VInt (19)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (3)); (VInt (13)); (VInt (0)); (VInt (3)); (VInt (18)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (3)); (VInt (13)); (VInt (0)); (VInt (2)); (VInt (17)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (13)); (VInt (0)); (VInt (1)); (VInt (16)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (7)); (VInt (4)); (VInt (0)); (VInt (22)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (0)); (VInt (0)); (VInt (5)); (VInt (1)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (2)); (VInt (0)); (VInt (0)); (VInt (0)); (VInt (2)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (1)); (VInt (0)); (VInt (1)); (VInt (4)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (1)); (VInt (0)); (VInt (2)); (VInt (5)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (2)); (VInt (0)); (VInt (2)); (VInt (9)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (5)); (VInt (1)); (VInt (0)); (VInt (11)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (5)); (VInt (1)); (VInt (1)); (VInt (12)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (10)); (VInt (2)); (VInt (0)); (VInt (14)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (10)); (VInt (3)); (VInt (0)); (VInt (20)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (14)); (VInt (1)); (VInt (0)); (VInt (21)); (VInt (0))]); (VStruct [(VInt (2)); (VInt (0)); (VInt (0)); (VInt (2)); (VInt (2)); (VInt (23)); (VInt (0))]); (VStruct [(VInt (2)); (VInt (0)); (VInt (0)); (VInt (2)); (VInt (0)); (VInt (24)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (0)); (VInt (12)); (VInt (1)); (VInt (1)); (VInt (25)); (VInt (0))]); (VStruct [(VInt (3)); (VInt (4)); (VInt (3)); (VInt (0)); (VInt (0)); (VInt (107)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (4)); (VInt (5)); (VInt (0)); (VInt (1)); (VInt (108)); (VInt (2154950976315703518))]); (VStruct [(VInt (3)); (VInt (4)); (VInt (5)); (VInt (3)); (VInt (0)); (VInt (109)); (VInt (112))])]));
       valign := 8 |}.

Definition v_switch_table_stage2_get_exception_vector :=
    {| vname := "switch.table.stage2_get_exception_vector";
       vtype := (TArray (TInt TI64) 6);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (1024)); (VInt (1536)); (VInt (1536)); (VInt (1536)); (VInt (0)); (VInt (512))]));
       valign := 8 |}.

Definition v__str_11 :=
    {| vname := ".str.11";
       vtype := (TArray (TInt TI8) 20);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (115)); (VInt (101)); (VInt (116)); (VInt (32)); (VInt (118)); (VInt (99)); (VInt (112)); (VInt (117)); (VInt (32)); (VInt (105)); (VInt (110)); (VInt (97)); (VInt (99)); (VInt (116)); (VInt (105)); (VInt (118)); (VInt (101)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_1 :=
    {| vname := ".str.1";
       vtype := (TArray (TInt TI8) 7);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (104)); (VInt (111)); (VInt (115)); (VInt (116)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_28 :=
    {| vname := ".str.28";
       vtype := (TArray (TInt TI8) 14);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (119)); (VInt (114)); (VInt (105)); (VInt (116)); (VInt (101)); (VInt (32)); (VInt (84)); (VInt (84)); (VInt (66)); (VInt (82)); (VInt (48)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_34 :=
    {| vname := ".str.34";
       vtype := (TArray (TInt TI8) 13);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (72)); (VInt (79)); (VInt (83)); (VInt (84)); (VInt (32)); (VInt (84)); (VInt (84)); (VInt (66)); (VInt (67)); (VInt (82)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_switch_table___init_stage2_translation :=
    {| vname := "switch.table.__init_stage2_translation";
       vtype := (TArray (TInt TI64) 5);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (32)); (VInt (28)); (VInt (24)); (VInt (24)); (VInt (24))]));
       valign := 8 |}.

Definition v__str_21 :=
    {| vname := ".str.21";
       vtype := (TArray (TInt TI8) 33);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (7)); (VInt (115)); (VInt (115)); (VInt (105)); (VInt (103)); (VInt (110)); (VInt (95)); (VInt (116)); (VInt (111)); (VInt (95)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (58)); (VInt (32)); (VInt (104)); (VInt (111)); (VInt (115)); (VInt (116)); (VInt (32)); (VInt (112)); (VInt (102)); (VInt (110)); (VInt (32)); (VInt (99)); (VInt (111)); (VInt (117)); (VInt (110)); (VInt (116)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_18 :=
    {| vname := ".str.18";
       vtype := (TArray (TInt TI8) 17);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (102)); (VInt (97)); (VInt (117)); (VInt (108)); (VInt (116)); (VInt (115)); (VInt (32)); (VInt (111)); (VInt (110)); (VInt (32)); (VInt (104)); (VInt (111)); (VInt (115)); (VInt (116)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_50 :=
    {| vname := ".str.50";
       vtype := (TArray (TInt TI8) 68);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (91)); (VInt (69)); (VInt (76)); (VInt (50)); (VInt (93)); (VInt (32)); (VInt (115)); (VInt (116)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (50)); (VInt (58)); (VInt (32)); (VInt (101)); (VInt (108)); (VInt (50)); (VInt (95)); (VInt (100)); (VInt (97)); (VInt (116)); (VInt (97)); (VInt (32)); (VInt (115)); (VInt (116)); (VInt (114)); (VInt (117)); (VInt (99)); (VInt (116)); (VInt (32)); (VInt (115)); (VInt (105)); (VInt (122)); (VInt (101)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (120)); (VInt (32)); (VInt (114)); (VInt (101)); (VInt (115)); (VInt (101)); (VInt (114)); (VInt (118)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (99)); (VInt (111)); (VInt (114)); (VInt (101)); (VInt (32)); (VInt (100)); (VInt (97)); (VInt (116)); (VInt (97)); (VInt (32)); (VInt (115)); (VInt (105)); (VInt (122)); (VInt (101)); (VInt (32)); (VInt (37)); (VInt (108)); (VInt (120)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_memblock :=
    {| vname := "memblock";
       vtype := (TNamedStruct "struct.memblock" 0);
       vconst := false;
       vinitializer := None;
       valign := 8 |}.

Definition v__str_16 :=
    {| vname := ".str.16";
       vtype := (TArray (TInt TI8) 21);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (112)); (VInt (97)); (VInt (110)); (VInt (105)); (VInt (99)); (VInt (58)); (VInt (32)); (VInt (97)); (VInt (115)); (VInt (115)); (VInt (105)); (VInt (103)); (VInt (110)); (VInt (95)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_33 :=
    {| vname := ".str.33";
       vtype := (TArray (TInt TI8) 13);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (72)); (VInt (79)); (VInt (83)); (VInt (84)); (VInt (32)); (VInt (84)); (VInt (84)); (VInt (66)); (VInt (82)); (VInt (48)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_30 :=
    {| vname := ".str.30";
       vtype := (TArray (TInt TI8) 8);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (99)); (VInt (98)); (VInt (110)); (VInt (100)); (VInt (120)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v_vabits_actual :=
    {| vname := "vabits_actual";
       vtype := (TInt TI64);
       vconst := false;
       vinitializer := None;
       valign := 8 |}.

Definition v__str_46 :=
    {| vname := ".str.46";
       vtype := (TArray (TInt TI8) 29);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (13)); (VInt (119)); (VInt (101)); (VInt (32)); (VInt (117)); (VInt (115)); (VInt (101)); (VInt (100)); (VInt (32)); (VInt (97)); (VInt (108)); (VInt (108)); (VInt (32)); (VInt (115)); (VInt (109)); (VInt (109)); (VInt (117)); (VInt (32)); (VInt (112)); (VInt (109)); (VInt (100)); (VInt (32)); (VInt (112)); (VInt (97)); (VInt (103)); (VInt (101)); (VInt (115)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition v__str_55 :=
    {| vname := ".str.55";
       vtype := (TArray (TInt TI8) 30);
       vconst := true;
       vinitializer := (Some (VStruct [(VInt (1)); (VInt (51)); (VInt (107)); (VInt (118)); (VInt (109)); (VInt (32)); (VInt (91)); (VInt (37)); (VInt (105)); (VInt (93)); (VInt (58)); (VInt (32)); (VInt (67)); (VInt (97)); (VInt (110)); (VInt (110)); (VInt (111)); (VInt (116)); (VInt (32)); (VInt (109)); (VInt (97)); (VInt (112)); (VInt (32)); (VInt (112)); (VInt (108)); (VInt (48)); (VInt (49)); (VInt (49)); (VInt (10)); (VInt (0))]));
       valign := 1 |}.

Definition globvars : list (string * global_var) :=
    ((".str.10", v__str_10)
     :: (".str.42", v__str_42)
     :: (".str.57", v__str_57)
     :: ("switch.table.__init_stage2_translation.63", v_switch_table___init_stage2_translation_63)
     :: (".str.17", v__str_17)
     :: (".str.9", v__str_9)
     :: (".str.40", v__str_40)
     :: ("stage2_pgs_end", v_stage2_pgs_end)
     :: (".str.22", v__str_22)
     :: (".str.37", v__str_37)
     :: ("shared_data_start", v_shared_data_start)
     :: (".str.56", v__str_56)
     :: (".str.60", v__str_60)
     :: ("physvirt_offset", v_physvirt_offset)
     :: (".str.49", v__str_49)
     :: (".str.2", v__str_2)
     :: (".str.51", v__str_51)
     :: ("el2_data_end", v_el2_data_end)
     :: (".str.38", v__str_38)
     :: (".str.12", v__str_12)
     :: (".str.25", v__str_25)
     :: ("kimage_voffset", v_kimage_voffset)
     :: (".str.15", v__str_15)
     :: (".str.47", v__str_47)
     :: (".str.27", v__str_27)
     :: (".str.53", v__str_53)
     :: (".str.32", v__str_32)
     :: (".str.43", v__str_43)
     :: (".str.29", v__str_29)
     :: (".str.3", v__str_3)
     :: ("__num_online_cpus", v___num_online_cpus)
     :: (".str.58", v__str_58)
     :: (".str.4", v__str_4)
     :: (".str.19", v__str_19)
     :: (".str.44", v__str_44)
     :: (".str", v__str)
     :: (".str.31", v__str_31)
     :: (".str.59", v__str_59)
     :: (".str.35", v__str_35)
     :: (".str.54", v__str_54)
     :: (".str.41", v__str_41)
     :: (".str.45", v__str_45)
     :: (".str.20", v__str_20)
     :: (".str.14", v__str_14)
     :: (".str.6", v__str_6)
     :: (".str.13", v__str_13)
     :: (".str.7", v__str_7)
     :: (".str.36", v__str_36)
     :: (".str.23", v__str_23)
     :: (".str.52", v__str_52)
     :: (".str.24", v__str_24)
     :: (".str.8", v__str_8)
     :: (".str.48", v__str_48)
     :: (".str.5", v__str_5)
     :: (".str.26", v__str_26)
     :: ("stage2_pgs_start", v_stage2_pgs_start)
     :: (".str.39", v__str_39)
     :: ("el2_data_start", v_el2_data_start)
     :: ("host_sys_reg_descs", v_host_sys_reg_descs)
     :: ("switch.table.stage2_get_exception_vector", v_switch_table_stage2_get_exception_vector)
     :: (".str.11", v__str_11)
     :: (".str.1", v__str_1)
     :: (".str.28", v__str_28)
     :: (".str.34", v__str_34)
     :: ("switch.table.__init_stage2_translation", v_switch_table___init_stage2_translation)
     :: (".str.21", v__str_21)
     :: (".str.18", v__str_18)
     :: (".str.50", v__str_50)
     :: ("memblock", v_memblock)
     :: (".str.16", v__str_16)
     :: (".str.33", v__str_33)
     :: (".str.30", v__str_30)
     :: ("vabits_actual", v_vabits_actual)
     :: (".str.46", v__str_46)
     :: (".str.55", v__str_55)
     :: nil).

(************ Functions ************)

Definition f_get_smmu_pgshift :=
    {| fname := "get_smmu_pgshift";
       rettype := (TInt TI32);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pgshift" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (25)); (VLocal "v_idxprom"); (VInt (2))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pgshift") 8)
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_0"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_get_vm_power :=
    {| fname := "get_vm_power";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_powered_on" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (15))])
             :: (ILoad (TInt TI8) "v_0" (VLocal "v_powered_on") 8)
             :: (IUnaryOp (TInt TI32) "v_1" (OZExt (TInt TI32)) (VLocal "v_0"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_get_pfn_count :=
    {| fname := "get_pfn_count";
       rettype := (TInt TI32);
       fargs :=
        (("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_s2_page_index") [(VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI32) "v_ret_0" (VInt (-1)))
                  :: nil)
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_s2_page_count") [(VLocal "v_call")])
                  :: (IAssign (TInt TI32) "v_ret_0" (VLocal "v_call1"))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_get_hpfar_el2 :=
    {| fname := "get_hpfar_el2";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_hpfar_el2") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___fpsimd_restore_state :=
    {| fname := "__fpsimd_restore_state";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_set_smmu_pgd_next :=
    {| fname := "set_smmu_pgd_next";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_pgd_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (37))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_smmu_pgd_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1)))
             :: (IStore (TInt TI64) (VLocal "v_smmu_pgd_used_pages") (VLocal "v_add") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_host_running_vcpu :=
    {| fname := "set_host_running_vcpu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) "v_arrayidx" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom")])
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760))) "v_host_cpu_context" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (14))])
             :: (ILoad (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) "v_0" (VLocal "v_host_cpu_context") 8)
             :: (IUnaryOp (TInt TI64) "v_1" OPtrToInt (VLocal "v_0"))
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "__kern_hyp_va") [(VLocal "v_1")])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) "v_2" (OIntToPtr (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760))) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.kvm_vcpu" 9056))) "v___hyp_running_vcpu" (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) (VLocal "v_2") [(VInt (0)); (VInt (2))])
             :: (IStore (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v___hyp_running_vcpu") (VLocal "v_arrayidx") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_smmu_pte :=
    {| fname := "set_smmu_pte";
       rettype := TVoid;
       fargs :=
        (("v_pmd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pmd") (VInt (281474976706560)))
             :: (IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (9)))
             :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_mul") (VLocal "v_and1"))
             :: (ICall TVoid None (VGlobal "smmu_pt_store") [(VLocal "v_or"); (VLocal "v_pte")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_esr_el2 :=
    {| fname := "get_esr_el2";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_esr_el2") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_set_vm_public_key :=
    {| fname := "set_vm_public_key";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_arraydecay" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (14)); (VInt (0))])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "el2_hex2bin") [(VLocal "v_arraydecay"); (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 65))) [(VGlobal ".str.2"); (VInt (0)); (VInt (0))]); (VInt (32))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_acquire_lock_vm :=
    {| fname := "acquire_lock_vm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_vm_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (8))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_vm_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_hypsec_vcpu_id_to_vcpu :=
    {| fname := "hypsec_vcpu_id_to_vcpu";
       rettype := (TPtr (TNamedStruct "struct.kvm_vcpu" 9056));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp" Csgt (VLocal "v_vcpu_id") (VInt (3)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "__hyp_panic") [ ])
                  :: nil)
                 ((ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
                  :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
                  :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpu_id"))
                  :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) "v_arrayidx" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom")])
                  :: (IReturn (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (Some (VLocal "v_arrayidx")))
                  :: nil))
             :: nil)) |}.

Definition f_assign_smmu :=
    {| fname := "assign_smmu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI32))
         :: ("v_gfn", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (IBinOp (TInt TI32) "v_0" OAdd (VLocal "v_vmid") (VInt (-1)))
             :: (IBinOp TBool "v_1" Cult (VLocal "v_0") (VInt (17)))
             :: (IIf (VLocal "v_1")
                 ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
                  :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call") (VInt (3)))
                  :: (IIf (VLocal "v_cmp2")
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil)
                      nil)
                  :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_gfn"))
                  :: (IUnaryOp (TInt TI64) "v_conv4" (OZExt (TInt TI64)) (VLocal "v_pfn"))
                  :: (ICall TVoid None (VGlobal "assign_pfn_to_smmu") [(VLocal "v_vmid"); (VLocal "v_conv"); (VLocal "v_conv4")])
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_smmu_alloc_pgd :=
    {| fname := "el2_smmu_alloc_pgd";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_vmid", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (24))]); (VLocal "v_cbndx"); (VLocal "v_vmid"); (VLocal "v_num")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_prep_abort :=
    {| fname := "prep_abort";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_int_esr") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IBinOp (TInt TI32) "v_div" OLshr (VLocal "v_call") (VInt (16)))
             :: (IBinOp (TInt TI32) "v_rem" OAnd (VLocal "v_div") (VInt (31)))
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (42))])
             :: (IBinOp (TInt TI64) "v_0" OAnd (VLocal "v_call2") (VInt (72057594033733632)))
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_0") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (4294967296))])
                  :: (IBinOp (TInt TI32) "v_1" OAnd (VLocal "v_call") (VInt (192)))
                  :: (IBinOp TBool "v__not" Ceq (VLocal "v_1") (VInt (0)))
                  :: (IIf (VLocal "v__not")
                      ((IBinOp (TInt TI32) "v_shl" OShl (VInt (1)) (VLocal "v_rem"))
                       :: (IUnaryOp (TInt TI64) "v_conv10" (OSExt (TInt TI64)) (VLocal "v_shl"))
                       :: (ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_conv10")])
                       :: nil)
                      ((ICall (TInt TI64) (Some "v_call11") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_rem")])
                       :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_rem"); (VLocal "v_call11")])
                       :: nil))
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_host_vttbr :=
    {| fname := "get_host_vttbr";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_host_vttbr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (5))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_host_vttbr") 16)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___vm_sysreg_restore_el2_return_state :=
    {| fname := "__vm_sysreg_restore_el2_return_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (32))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_arrayidx1") 16)
             :: (ICall TVoid None (VGlobal "iasm_set_elr_el2") [(VLocal "v_0")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx5" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (33))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_arrayidx5") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_spsr_el2") [(VLocal "v_1")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_pmd_pool_end :=
    {| fname := "pmd_pool_end";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IBinOp TBool "v_switch_selectcmp_case1" Ceq (VLocal "v_vmid") (VInt (18)))
             :: (IBinOp TBool "v_switch_selectcmp_case2" Ceq (VLocal "v_vmid") (VInt (0)))
             :: (IBinOp TBool "v_switch_selectcmp" OOr (VLocal "v_switch_selectcmp_case1") (VLocal "v_switch_selectcmp_case2"))
             :: (ISelect (TInt TI64) "v_1" (VLocal "v_switch_selectcmp") (VInt (33554432)) (VInt (8388608)))
             :: (IBinOp (TInt TI64) "v_add5" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add5")))
             :: nil)) |}.

Definition f_set_vm_state :=
    {| fname := "set_vm_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_state", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_state1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (5))])
             :: (IStore (TInt TI32) (VLocal "v_state1") (VLocal "v_state") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_vm_is_inc_exe :=
    {| fname := "vm_is_inc_exe";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_inc_exe") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_v_grant_stage2_sg_gpa :=
    {| fname := "v_grant_stage2_sg_gpa";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_size") (VInt (4095)))
             :: (IBinOp TBool "v_tobool_not" Cne (VLocal "v_and") (VInt (0)))
             :: (IUnaryOp (TInt TI64) "v_0" (OZExt (TInt TI64)) (VLocal "v_tobool_not"))
             :: (IBinOp TBool "v_tobool1_not" Cult (VLocal "v_size") (VInt (4096)))
             :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_size") (VInt (12)))
             :: (ISelect (TInt TI64) "v_add" (VLocal "v_tobool1_not") (VInt (0)) (VLocal "v_shr"))
             :: (IBinOp (TInt TI64) "v_len_0" OAdd (VLocal "v_add") (VLocal "v_0"))
             :: (IBinOp TBool "v_cmp_not42" Ceq (VLocal "v_len_0") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not42")
                 nil
                 ((IAssign (TInt TI64) "v_addr_addr_044" (VLocal "v_addr"))
                  :: (IAssign (TInt TI64) "v_len_143" (VLocal "v_len_0"))
                  :: (ILoop
                        ((ICall (TInt TI64) (Some "v_call") (VGlobal "walk_s2pt") [(VLocal "v_vmid"); (VLocal "v_addr_addr_044")])
                         :: (IBinOp (TInt TI64) "v_and5" OAnd (VLocal "v_call") (VInt (281474976706560)))
                         :: (IBinOp TBool "v_cmp14_not" Ceq (VLocal "v_and5") (VInt (0)))
                         :: (IIf (VLocal "v_cmp14_not")
                             nil
                             ((IBinOp (TInt TI64) "v_and6" OAnd (VLocal "v_call") (VInt (36028797018963968)))
                              :: (IBinOp TBool "v_tobool7_not_not" Ceq (VLocal "v_and6") (VInt (0)))
                              :: (IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_and5") (VInt (12)))
                              :: (IBinOp (TInt TI64) "v_and20" OLshr (VLocal "v_addr_addr_044") (VInt (12)))
                              :: (IBinOp (TInt TI64) "v_div21" OAnd (VLocal "v_and20") (VInt (511)))
                              :: (ISelect (TInt TI64) "v_add22" (VLocal "v_tobool7_not_not") (VInt (0)) (VLocal "v_div21"))
                              :: (IBinOp (TInt TI64) "v_pfn_0" OAdd (VLocal "v_add22") (VLocal "v_div"))
                              :: (ICall TVoid None (VGlobal "grant_vm_page") [(VLocal "v_vmid"); (VLocal "v_pfn_0")])
                              :: nil))
                         :: (IBinOp (TInt TI64) "v_add25" OAdd (VLocal "v_addr_addr_044") (VInt (4096)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_len_143") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_addr_addr_044" (VLocal "v_add25"))
                              :: (IAssign (TInt TI64) "v_len_143" (VLocal "v_sub"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_v_set_pte :=
    {| fname := "v_set_pte";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pmd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pmd") (VInt (281474976706560)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_pte") (VInt (72057594037927936)))
             :: (IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (9)))
             :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
             :: (IBinOp (TInt TI64) "v_add" OOr (VLocal "v_mul") (VLocal "v_and1"))
             :: (ICall TVoid None (VGlobal "pt_store") [(VLocal "v_vmid"); (VLocal "v_add"); (VLocal "v_or")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_hex_to_bin :=
    {| fname := "el2_hex_to_bin";
       rettype := (TInt TI32);
       fargs :=
        (("v_ch", (TInt TI8))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IUnaryOp (TInt TI32) "v_conv" (OZExt (TInt TI32)) (VLocal "v_ch"))
             :: (IBinOp (TInt TI8) "v_0" OAdd (VLocal "v_ch") (VInt (208)))
             :: (IBinOp TBool "v_1" Cult (VLocal "v_0") (VInt (10)))
             :: (IIf (VLocal "v_1")
                 ((IBinOp (TInt TI32) "v_sub" OAdd (VLocal "v_conv") (VInt (-48)))
                  :: (IAssign (TInt TI32) "v_retval_0" (VLocal "v_sub"))
                  :: nil)
                 ((IBinOp (TInt TI8) "v_2" OAdd (VLocal "v_ch") (VInt (159)))
                  :: (IBinOp TBool "v_3" Cult (VLocal "v_2") (VInt (6)))
                  :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_conv") (VInt (-87)))
                  :: (ISelect (TInt TI32) "v_spec_select" (VLocal "v_3") (VLocal "v_add") (VInt (-1)))
                  :: (IAssign (TInt TI32) "v_retval_0" (VLocal "v_spec_select"))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_acquire_lock_s2page :=
    {| fname := "acquire_lock_s2page";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_s2pages_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (10))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_s2pages_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_int_new_pte :=
    {| fname := "get_int_new_pte";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_output" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (2)); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_output") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_fixup_guest_exit :=
    {| fname := "fixup_guest_exit";
       rettype := TBool;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_exit_code", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_exit_code") (VInt (2147483647)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI32) "v_esr_el2_0" (VInt (0)))
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_esr_el2") [ ])
                  :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call"))
                  :: (ICall TVoid None (VGlobal "set_vcpu_esr_el2") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_conv")])
                  :: (ICall TVoid None (VGlobal "set_shadow_ctxt_esr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_conv")])
                  :: (IAssign (TInt TI32) "v_esr_el2_0" (VLocal "v_conv"))
                  :: nil))
             :: (IBinOp TBool "v_cmp1_not" Ceq (VLocal "v_exit_code") (VInt (2)))
             :: (IIf (VLocal "v_cmp1_not")
                 ((IBinOp (TInt TI32) "v_0" OLshr (VLocal "v_esr_el2_0") (VInt (26)))
                  :: (IBinOp TBool "v_cmp9" Ceq (VLocal "v_0") (VInt (22)))
                  :: (IIf (VLocal "v_cmp9")
                      ((ICall (TInt TI32) (Some "v_call12") (VGlobal "handle_pvops") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
                       :: (IBinOp TBool "v_cmp13" Csgt (VLocal "v_call12") (VInt (0)))
                       :: (IAssign TBool "v_retval_0" (VLocal "v_cmp13"))
                       :: (IReturn TBool (Some (VLocal "v_retval_0")))
                       :: nil)
                      ((IBinOp (TInt TI32) "v_1" OAnd (VLocal "v_esr_el2_0") (VInt (3959422976)))
                       :: (IBinOp TBool "v_2" Ceq (VLocal "v_1") (VInt (2147483648)))
                       :: (IIf (VLocal "v_2")
                           ((ICall TBool (Some "v_call24") (VGlobal "__populate_fault_info") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_esr_el2_0")])
                            :: (IIf (VLocal "v_call24")
                                nil
                                ((IAssign TBool "v_retval_0" (VBool true))
                                 :: (IReturn TBool (Some (VLocal "v_retval_0")))
                                 :: nil))
                            :: nil)
                           ((IBinOp TBool "v_cmp29" Ceq (VLocal "v_0") (VInt (24)))
                            :: (IIf (VLocal "v_cmp29")
                                ((ICall (TInt TI64) (Some "v_3") (VGlobal "iasm_get_elr_el2") [ ])
                                 :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_3") (VInt (4)))
                                 :: (ICall TVoid None (VGlobal "iasm_set_elr_el2") [(VLocal "v_add")])
                                 :: (IAssign TBool "v_retval_0" (VBool true))
                                 :: (IReturn TBool (Some (VLocal "v_retval_0")))
                                 :: nil)
                                nil)
                            :: nil))
                       :: nil))
                  :: nil)
                 nil)
             :: (IAssign TBool "v_retval_0" (VBool false))
             :: (IReturn TBool (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_reject_invalid_mem_access :=
    {| fname := "reject_invalid_mem_access";
       rettype := TVoid;
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_elr_el2") [ ])
             :: (ICall TVoid None (VGlobal "stage2_inject_el1_fault") [(VLocal "v_addr")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_virt_to_phys :=
    {| fname := "virt_to_phys";
       rettype := (TInt TI64);
       fargs :=
        (("v_x", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IUnaryOp (TInt TI64) "v_0" OPtrToInt (VLocal "v_x"))
             :: (ILoad (TInt TI64) "v_1" (VGlobal "vabits_actual") 8)
             :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_1") (VInt (-1)))
             :: (IBinOp (TInt TI64) "v_shl" OShl (VInt (1)) (VLocal "v_sub"))
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_shl") (VLocal "v_0"))
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_and") (VInt (0)))
             :: (ILoad (TInt TI64) "v_2" (VGlobal "physvirt_offset") 8)
             :: (ILoad (TInt TI64) "v_3" (VGlobal "kimage_voffset") 8)
             :: (IBinOp (TInt TI64) "v_4" OSub (VInt (0)) (VLocal "v_3"))
             :: (ISelect (TInt TI64) "v_cond_p" (VLocal "v_tobool_not") (VLocal "v_2") (VLocal "v_4"))
             :: (IBinOp (TInt TI64) "v_cond" OAdd (VLocal "v_cond_p") (VLocal "v_0"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_cond")))
             :: nil)) |}.

Definition f_get_smmu_cfg_vmid :=
    {| fname := "get_smmu_cfg_vmid";
       rettype := (TInt TI32);
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_num") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_cbndx"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vmid" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (24)); (VLocal "v_idxprom"); (VInt (0))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_vmid") 8)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_set_vcpu_esr_el2 :=
    {| fname := "set_vcpu_esr_el2";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_esr_el2", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_esr_el21" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (8)); (VInt (0))])
             :: (IStore (TInt TI32) (VLocal "v_esr_el21") (VLocal "v_esr_el2") 16)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_llvm_dbg_value :=
    {| fname := "llvm.dbg.value";
       rettype := TVoid;
       fargs :=
        (("v_0", UNKNOWN_TYPE)
         :: ("v_1", UNKNOWN_TYPE)
         :: ("v_2", UNKNOWN_TYPE)
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_release_lock_spt :=
    {| fname := "release_lock_spt";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_spt_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (15))])
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_spt_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_walk_pmd :=
    {| fname := "walk_pmd";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pgd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_alloc", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pgd") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (18)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
                  :: (IBinOp (TInt TI64) "v_add" OOr (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "pt_load") [(VLocal "v_vmid"); (VLocal "v_add")])
                  :: (IBinOp (TInt TI64) "v_and4" OAnd (VLocal "v_call") (VInt (281474976706560)))
                  :: (IBinOp TBool "v_cmp5" Ceq (VLocal "v_and4") (VInt (0)))
                  :: (IBinOp TBool "v_cmp6" Ceq (VLocal "v_alloc") (VInt (1)))
                  :: (IBinOp TBool "v_or_cond" OAnd (VLocal "v_cmp6") (VLocal "v_cmp5"))
                  :: (IIf (VLocal "v_or_cond")
                      ((ICall (TInt TI64) (Some "v_call8") (VGlobal "alloc_s2pt_pmd") [(VLocal "v_vmid")])
                       :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_call8") (VInt (3)))
                       :: (ICall TVoid None (VGlobal "pt_store") [(VLocal "v_vmid"); (VLocal "v_add"); (VLocal "v_or")])
                       :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_or"))
                       :: nil)
                      ((IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_smmu_init_pte :=
    {| fname := "smmu_init_pte";
       rettype := (TInt TI64);
       fargs :=
        (("v_prot", (TInt TI64))
         :: ("v_paddr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_paddr") (VInt (281474976706560)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VLocal "v_prot"))
             :: (IBinOp (TInt TI64) "v_or2" OOr (VLocal "v_or") (VInt (1795)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_or2")))
             :: nil)) |}.

Definition f_reset_sys_regs :=
    {| fname := "reset_sys_regs";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IAssign (TInt TI32) "v_i_029" (VInt (1)))
             :: (ILoop
                   ((IIf (VExpr TBool Ceq [(VLocal "v_i_029"); (VInt (4))])
                        ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_actlr_el1") [ ])
                         :: (IAssign (TInt TI64) "v_val_0" (VLocal "v_0"))
                         :: nil)
                        ((IIf (VExpr TBool Ceq [(VLocal "v_i_029"); (VInt (1))])
                             ((ICall (TInt TI64) (Some "v_call") (VGlobal "el2_reset_mpidr") [(VLocal "v_vcpuid")])
                              :: (IAssign (TInt TI64) "v_val_0" (VLocal "v_call"))
                              :: nil)
                             ((ICall (TInt TI64) (Some "v_call12") (VGlobal "get_sys_reg_desc_val") [(VLocal "v_i_029")])
                              :: (IAssign (TInt TI64) "v_val_0" (VLocal "v_call12"))
                              :: nil))
                         :: nil))
                    :: (IBinOp (TInt TI32) "v_add14" OAdd (VLocal "v_i_029") (VInt (47)))
                    :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_add14"); (VLocal "v_val_0")])
                    :: (IBinOp (TInt TI32) "v_add15" OAdd (VLocal "v_i_029") (VInt (1)))
                    :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_add15") (VInt (26)))
                    :: (IIf (VLocal "v_exitcond_not")
                        ((IReturn TVoid None)
                         :: nil)
                        ((IAssign (TInt TI32) "v_i_029" (VLocal "v_add15"))
                         :: nil))
                    :: IContinue
                    :: nil))
             :: nil)) |}.

Definition f_get_smmu_size :=
    {| fname := "get_smmu_size";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_size" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (25)); (VLocal "v_idxprom"); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_size") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_clear_smmu :=
    {| fname := "clear_smmu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_iova", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "unmap_smmu_page") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_alloc_remap_addr :=
    {| fname := "alloc_remap_addr";
       rettype := (TInt TI64);
       fargs :=
        (("v_pgnum", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_core") [ ])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_next_remap_ptr") [ ])
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pgnum") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call") (VLocal "v_mul"))
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_add") (VInt (5497558138880)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_next_remap_ptr") [(VLocal "v_add")])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_core") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_prep_wfx :=
    {| fname := "prep_wfx";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (4294967296))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_handle_host_mmio :=
    {| fname := "handle_host_mmio";
       rettype := TVoid;
       fargs :=
        (("v_index", (TInt TI64))
         :: ("v_hsr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_index"))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_hyp_base") [(VLocal "v_conv")])
             :: (ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_far_el2") [ ])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_0") (VInt (65535)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VLocal "v_call"))
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "host_dabt_get_as") [(VLocal "v_hsr")])
             :: (ICall TBool (Some "v_call2") (VGlobal "host_dabt_is_write") [(VLocal "v_hsr")])
             :: (IIf (VLocal "v_call2")
                 ((ICall TVoid None (VGlobal "handle_smmu_write") [(VLocal "v_hsr"); (VLocal "v_or"); (VLocal "v_call1"); (VLocal "v_conv")])
                  :: nil)
                 ((ICall TVoid None (VGlobal "handle_smmu_read") [(VLocal "v_hsr"); (VLocal "v_or"); (VLocal "v_call1")])
                  :: nil))
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_elr_el2") [ ])
             :: (ICall TVoid None (VGlobal "iasm_10") [ ])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_1") (VInt (4)))
             :: (ICall TVoid None (VGlobal "iasm_set_elr_el2") [(VLocal "v_add")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_alloc_smmu :=
    {| fname := "alloc_smmu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (IBinOp (TInt TI32) "v_0" OAdd (VLocal "v_vmid") (VInt (-1)))
             :: (IBinOp TBool "v_1" Cult (VLocal "v_0") (VInt (17)))
             :: (IIf (VLocal "v_1")
                 ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
                  :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call") (VInt (3)))
                  :: (IIf (VLocal "v_cmp2")
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil)
                      nil)
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___activate_vm :=
    {| fname := "__activate_vm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_vmid"))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_pt_vttbr") [(VLocal "v_conv")])
             :: (ICall TVoid None (VGlobal "set_vttbr_el2") [(VLocal "v_call")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_printk :=
    {| fname := "printk";
       rettype := (TInt TI32);
       fargs :=
        (("v_0", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_llvm_dbg_label :=
    {| fname := "llvm.dbg.label";
       rettype := TVoid;
       fargs :=
        (("v_0", UNKNOWN_TYPE)
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_el2_memcpy :=
    {| fname := "el2_memcpy";
       rettype := TVoid;
       fargs :=
        (("v_dest", (TPtr (TInt TI8)))
         :: ("v_src", (TPtr (TInt TI8)))
         :: ("v_len", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_tobool_not4" Ceq (VLocal "v_len") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not4")
                 nil
                 ((IAssign (TPtr (TInt TI8)) "v_csrc_07" (VLocal "v_src"))
                  :: (IAssign (TPtr (TInt TI8)) "v_cdest_06" (VLocal "v_dest"))
                  :: (IAssign (TInt TI64) "v_len_addr_05" (VLocal "v_len"))
                  :: (ILoop
                        ((IBinOp (TInt TI64) "v_dec" OAdd (VLocal "v_len_addr_05") (VInt (-1)))
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr" (TPtr (TInt TI8)) (VLocal "v_csrc_07") [(VInt (1))])
                         :: (ILoad (TInt TI8) "v_0" (VLocal "v_csrc_07") 1)
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr1" (TPtr (TInt TI8)) (VLocal "v_cdest_06") [(VInt (1))])
                         :: (IStore (TInt TI8) (VLocal "v_cdest_06") (VLocal "v_0") 1)
                         :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_dec") (VInt (0)))
                         :: (IIf (VLocal "v_tobool_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TPtr (TInt TI8)) "v_csrc_07" (VLocal "v_incdec_ptr"))
                              :: (IAssign (TPtr (TInt TI8)) "v_cdest_06" (VLocal "v_incdec_ptr1"))
                              :: (IAssign (TInt TI64) "v_len_addr_05" (VLocal "v_dec"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_v_set_smmu_pt :=
    {| fname := "v_set_smmu_pt";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_cfg_hw_ttbr") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_smmu_pgd") [(VLocal "v_call"); (VLocal "v_addr"); (VInt (1))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_smmu_pmd") [(VLocal "v_call1"); (VLocal "v_addr"); (VInt (1))])
             :: (ICall TVoid None (VGlobal "set_smmu_pte") [(VLocal "v_call2"); (VLocal "v_addr"); (VLocal "v_pte")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_vmid_to_vm_info :=
    {| fname := "vmid_to_vm_info";
       rettype := (TPtr (TNamedStruct "struct.el2_vm_info" 768));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_vmid") (VInt (18)))
             :: (IIf (VLocal "v_cmp")
                 ((IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.el2_vm_info" 768)) "v_arrayidx" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom")])
                  :: (IReturn (TPtr (TNamedStruct "struct.el2_vm_info" 768)) (Some (VLocal "v_arrayidx")))
                  :: nil)
                 ((ICall TVoid None (VGlobal "__hyp_panic") [ ])
                  :: nil))
             :: nil)) |}.

Definition f_pt_store :=
    {| fname := "pt_store";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_value", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_addr") (VInt (1099511627775)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI64)) "v_0" (OIntToPtr (TPtr (TInt TI64))) (VLocal "v_or"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IStore (TInt TI64) (VLocal "v_0") (VLocal "v_value") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___clear_vm_stage2_range :=
    {| fname := "__clear_vm_stage2_range";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_poweron") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_size") (VInt (1099511627776)))
             :: (IBinOp TBool "v_cmp1" Ceq (VLocal "v_call") (VInt (0)))
             :: (ISelect TBool "v_or_cond" (VLocal "v_cmp") (VLocal "v_cmp1") (VBool false))
             :: (IIf (VLocal "v_or_cond")
                 ((ICall (TInt TI32) (Some "v_call2") (VGlobal "get_mem_region_cnt") [ ])
                  :: (IBinOp TBool "v_cmp321_not" Ceq (VLocal "v_call2") (VInt (0)))
                  :: (IIf (VLocal "v_cmp321_not")
                      nil
                      ((IAssign (TInt TI32) "v_i_022" (VInt (0)))
                       :: (ILoop
                             ((ICall (TInt TI64) (Some "v_call4") (VGlobal "get_mem_region_base") [(VLocal "v_i_022")])
                              :: (ICall (TInt TI64) (Some "v_call5") (VGlobal "get_mem_region_size") [(VLocal "v_i_022")])
                              :: (ICall (TInt TI64) (Some "v_call6") (VGlobal "get_mem_region_flag") [(VLocal "v_i_022")])
                              :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call6") (VInt (4)))
                              :: (IBinOp TBool "v_cmp7" Ceq (VLocal "v_and") (VInt (0)))
                              :: (IIf (VLocal "v_cmp7")
                                  ((ICall TVoid None (VGlobal "__clear_vm_range") [(VLocal "v_vmid"); (VLocal "v_call4"); (VLocal "v_call5")])
                                   :: nil)
                                  nil)
                              :: (IBinOp (TInt TI32) "v_inc" OAdd (VLocal "v_i_022") (VInt (1)))
                              :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_inc") (VLocal "v_call2"))
                              :: (IIf (VLocal "v_exitcond_not")
                                  (IBreak
                                   :: nil)
                                  ((IAssign (TInt TI32) "v_i_022" (VLocal "v_inc"))
                                   :: IContinue
                                   :: nil))
                              :: nil))
                       :: nil))
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_shadow_dirty_bit :=
    {| fname := "get_shadow_dirty_bit";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_dirty" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (5))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_dirty") 8)
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_0"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f___init_stage2_translation :=
    {| fname := "__init_stage2_translation";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_0") [ ])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_0") (VInt (7)))
             :: (IBinOp TBool "v_1" Cult (VLocal "v_and") (VInt (5)))
             :: (ISelect (TInt TI64) "v_spec_store_select" (VLocal "v_1") (VLocal "v_and") (VInt (5)))
             :: (IIf (VLocal "v_1")
                 ((IGetElemPtr (TPtr (TInt TI64)) "v_switch_gep" (TPtr (TArray (TInt TI64) 5)) (VGlobal "switch.table.__init_stage2_translation") [(VInt (0)); (VLocal "v_spec_store_select")])
                  :: (ILoad (TInt TI64) "v_switch_load" (VLocal "v_switch_gep") 8)
                  :: (IGetElemPtr (TPtr (TInt TI32)) "v_switch_gep41" (TPtr (TArray (TInt TI32) 5)) (VGlobal "switch.table.__init_stage2_translation.63") [(VInt (0)); (VLocal "v_spec_store_select")])
                  :: (ILoad (TInt TI32) "v_switch_load42" (VLocal "v_switch_gep41") 4)
                  :: (IAssign (TInt TI64) "v_cmp7_neg" (VLocal "v_switch_load"))
                  :: (IAssign (TInt TI32) "v_parange_0" (VLocal "v_switch_load42"))
                  :: nil)
                 ((IAssign (TInt TI64) "v_cmp7_neg" (VInt (24)))
                  :: (IAssign (TInt TI32) "v_parange_0" (VInt (48)))
                  :: nil))
             :: (IBinOp (TInt TI64) "v_shl" OShl (VLocal "v_spec_store_select") (VInt (16)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_cmp7_neg") (VLocal "v_shl"))
             :: (ICall (TInt TI64) (Some "v_2") (VGlobal "iasm_1") [ ])
             :: (IBinOp (TInt TI64) "v_and11" OAnd (VLocal "v_2") (VInt (15)))
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_and11") (VInt (0)))
             :: (ISelect (TInt TI64) "v_spec_select_v" (VLocal "v_tobool_not") (VInt (2147497344)) (VInt (2149594496)))
             :: (IBinOp (TInt TI64) "v_spec_select" OOr (VLocal "v_spec_select_v") (VLocal "v_or"))
             :: (ICall (TInt TI64) (Some "v_3") (VGlobal "iasm_1") [ ])
             :: (IBinOp (TInt TI64) "v_4" OAnd (VLocal "v_3") (VInt (240)))
             :: (IBinOp TBool "v_cmp19" Ceq (VLocal "v_4") (VInt (32)))
             :: (ISelect (TInt TI64) "v_5" (VLocal "v_cmp19") (VInt (524288)) (VInt (0)))
             :: (IBinOp (TInt TI64) "v_or21" OOr (VLocal "v_spec_select") (VLocal "v_5"))
             :: (ICall TVoid None (VGlobal "iasm_set_vtcr_el2") [(VLocal "v_or21")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_parange_0")))
             :: nil)) |}.

Definition f_handle_host_hvc :=
    {| fname := "handle_host_hvc";
       rettype := TVoid;
       fargs :=
        (("v_hr", (TPtr (TNamedStruct "struct.s2_host_regs" 256)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (0))])
             :: (IUnaryOp (TInt TI64) "v_0" OPtrToInt (VLocal "v_hr"))
             :: (ICall TVoid None (VGlobal "set_per_cpu_host_regs") [(VLocal "v_0")])
             :: (IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (28))])
                 ((ICall (TInt TI64) (Some "v_call76") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                  :: (IUnaryOp (TInt TI32) "v_conv77" (OTrunc (TInt TI32)) (VLocal "v_call76"))
                  :: (ICall (TInt TI64) (Some "v_call78") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                  :: (ICall (TInt TI64) (Some "v_call79") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                  :: (ICall (TInt TI64) (Some "v_call80") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (4))])
                  :: (ICall TVoid None (VGlobal "v_kvm_phys_addr_ioremap") [(VLocal "v_conv77"); (VLocal "v_call78"); (VLocal "v_call79"); (VLocal "v_call80")])
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (6))])
                      ((ICall TVoid None (VGlobal "hvc_enable_s2_trans") [ ])
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (8))])
                           ((ICall (TInt TI64) (Some "v_call2") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                            :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call2"))
                            :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                            :: (IUnaryOp (TInt TI32) "v_conv4" (OTrunc (TInt TI32)) (VLocal "v_call3"))
                            :: (ICall (TInt TI32) (Some "v_call5") (VGlobal "__kvm_vcpu_run_nvhe") [(VLocal "v_conv"); (VLocal "v_conv4")])
                            :: (IUnaryOp (TInt TI64) "v_conv6" (OSExt (TInt TI64)) (VLocal "v_call5"))
                            :: (ICall TVoid None (VGlobal "set_host_regs") [(VInt (0)); (VLocal "v_conv6")])
                            :: nil)
                           ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (7))])
                                ((ICall (TInt TI64) (Some "v_call8") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                 :: (IUnaryOp (TInt TI32) "v_conv9" (OTrunc (TInt TI32)) (VLocal "v_call8"))
                                 :: (ICall (TInt TI64) (Some "v_call10") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                 :: (IUnaryOp (TInt TI32) "v_conv11" (OTrunc (TInt TI32)) (VLocal "v_call10"))
                                 :: (ICall TVoid None (VGlobal "__kvm_timer_set_cntvoff") [(VLocal "v_conv9"); (VLocal "v_conv11")])
                                 :: nil)
                                ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (9))])
                                     ((ICall (TInt TI64) (Some "v_call13") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                      :: (IUnaryOp (TInt TI32) "v_conv14" (OTrunc (TInt TI32)) (VLocal "v_call13"))
                                      :: (ICall (TInt TI64) (Some "v_call15") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                      :: (ICall TVoid None (VGlobal "__clear_vm_stage2_range") [(VLocal "v_conv14"); (VLocal "v_call15")])
                                      :: nil)
                                     ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (10))])
                                          ((ICall (TInt TI64) (Some "v_call17") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                           :: (IUnaryOp (TInt TI32) "v_conv18" (OTrunc (TInt TI32)) (VLocal "v_call17"))
                                           :: (ICall (TInt TI64) (Some "v_call19") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                           :: (ICall (TInt TI64) (Some "v_call20") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                           :: (ICall (TInt TI32) (Some "v_call21") (VGlobal "set_boot_info") [(VLocal "v_conv18"); (VLocal "v_call19"); (VLocal "v_call20")])
                                           :: (IUnaryOp (TInt TI64) "v_conv22" (OZExt (TInt TI64)) (VLocal "v_call21"))
                                           :: (ICall TVoid None (VGlobal "set_host_regs") [(VInt (0)); (VLocal "v_conv22")])
                                           :: nil)
                                          ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (11))])
                                               ((ICall (TInt TI64) (Some "v_call24") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                :: (IUnaryOp (TInt TI32) "v_conv25" (OTrunc (TInt TI32)) (VLocal "v_call24"))
                                                :: (ICall (TInt TI64) (Some "v_call26") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                :: (ICall (TInt TI64) (Some "v_call27") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                                :: (IUnaryOp (TInt TI32) "v_conv28" (OTrunc (TInt TI32)) (VLocal "v_call27"))
                                                :: (ICall TVoid None (VGlobal "remap_vm_image") [(VLocal "v_conv25"); (VLocal "v_call26"); (VLocal "v_conv28")])
                                                :: nil)
                                               ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (12))])
                                                    ((ICall (TInt TI64) (Some "v_call30") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                     :: (IUnaryOp (TInt TI32) "v_conv31" (OTrunc (TInt TI32)) (VLocal "v_call30"))
                                                     :: (ICall TVoid None (VGlobal "verify_and_load_images") [(VLocal "v_conv31")])
                                                     :: (ICall TVoid None (VGlobal "set_host_regs") [(VInt (0)); (VInt (1))])
                                                     :: nil)
                                                    ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (23))])
                                                         ((ICall (TInt TI64) (Some "v_call33") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                          :: (IUnaryOp (TInt TI32) "v_conv34" (OTrunc (TInt TI32)) (VLocal "v_call33"))
                                                          :: (ICall (TInt TI64) (Some "v_call35") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                          :: (IUnaryOp (TInt TI32) "v_conv36" (OTrunc (TInt TI32)) (VLocal "v_call35"))
                                                          :: (ICall TVoid None (VGlobal "__el2_free_smmu_pgd") [(VLocal "v_conv34"); (VLocal "v_conv36")])
                                                          :: nil)
                                                         ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (24))])
                                                              ((ICall (TInt TI64) (Some "v_call38") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                               :: (IUnaryOp (TInt TI32) "v_conv39" (OTrunc (TInt TI32)) (VLocal "v_call38"))
                                                               :: (ICall (TInt TI64) (Some "v_call40") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                               :: (IUnaryOp (TInt TI32) "v_conv41" (OTrunc (TInt TI32)) (VLocal "v_call40"))
                                                               :: (ICall (TInt TI64) (Some "v_call42") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                                               :: (IUnaryOp (TInt TI32) "v_conv43" (OTrunc (TInt TI32)) (VLocal "v_call42"))
                                                               :: (ICall TVoid None (VGlobal "__el2_alloc_smmu_pgd") [(VLocal "v_conv39"); (VLocal "v_conv41"); (VLocal "v_conv43")])
                                                               :: nil)
                                                              ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (25))])
                                                                   ((ICall (TInt TI64) (Some "v_call45") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                                    :: (ICall (TInt TI64) (Some "v_call46") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                                    :: (ICall (TInt TI64) (Some "v_call47") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                                                    :: (ICall (TInt TI64) (Some "v_call48") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (4))])
                                                                    :: (IUnaryOp (TInt TI32) "v_conv49" (OTrunc (TInt TI32)) (VLocal "v_call48"))
                                                                    :: (ICall (TInt TI64) (Some "v_call50") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (5))])
                                                                    :: (IUnaryOp (TInt TI32) "v_conv51" (OTrunc (TInt TI32)) (VLocal "v_call50"))
                                                                    :: (ICall TVoid None (VGlobal "v_el2_arm_lpae_map") [(VLocal "v_call45"); (VLocal "v_call46"); (VLocal "v_call47"); (VLocal "v_conv49"); (VLocal "v_conv51")])
                                                                    :: nil)
                                                                   ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (26))])
                                                                        ((ICall (TInt TI64) (Some "v_call53") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                                         :: (ICall (TInt TI64) (Some "v_call54") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                                         :: (IUnaryOp (TInt TI32) "v_conv55" (OTrunc (TInt TI32)) (VLocal "v_call54"))
                                                                         :: (ICall (TInt TI64) (Some "v_call56") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                                                         :: (IUnaryOp (TInt TI32) "v_conv57" (OTrunc (TInt TI32)) (VLocal "v_call56"))
                                                                         :: (ICall (TInt TI64) (Some "v_call58") (VGlobal "__el2_arm_lpae_iova_to_phys") [(VLocal "v_call53"); (VLocal "v_conv55"); (VLocal "v_conv57")])
                                                                         :: (ICall TVoid None (VGlobal "set_host_regs") [(VInt (0)); (VLocal "v_call58")])
                                                                         :: nil)
                                                                        ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (27))])
                                                                             ((ICall (TInt TI64) (Some "v_call60") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                                              :: (ICall (TInt TI64) (Some "v_call61") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                                              :: (IUnaryOp (TInt TI32) "v_conv62" (OTrunc (TInt TI32)) (VLocal "v_call61"))
                                                                              :: (ICall (TInt TI64) (Some "v_call63") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (3))])
                                                                              :: (IUnaryOp (TInt TI32) "v_conv64" (OTrunc (TInt TI32)) (VLocal "v_call63"))
                                                                              :: (ICall TVoid None (VGlobal "__el2_arm_lpae_clear") [(VLocal "v_call60"); (VLocal "v_conv62"); (VLocal "v_conv64")])
                                                                              :: nil)
                                                                             ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (13))])
                                                                                  ((ICall (TInt TI32) (Some "v_call66") (VGlobal "register_kvm") [ ])
                                                                                   :: (IUnaryOp (TInt TI64) "v_conv67" (OSExt (TInt TI64)) (VLocal "v_call66"))
                                                                                   :: (ICall TVoid None (VGlobal "set_host_regs") [(VInt (0)); (VLocal "v_conv67")])
                                                                                   :: nil)
                                                                                  ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (14))])
                                                                                       ((ICall (TInt TI64) (Some "v_call69") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (1))])
                                                                                        :: (IUnaryOp (TInt TI32) "v_conv70" (OTrunc (TInt TI32)) (VLocal "v_call69"))
                                                                                        :: (ICall (TInt TI64) (Some "v_call71") (VGlobal "get_host_reg") [(VLocal "v_hr"); (VInt (2))])
                                                                                        :: (IUnaryOp (TInt TI32) "v_conv72" (OTrunc (TInt TI32)) (VLocal "v_call71"))
                                                                                        :: (ICall (TInt TI32) (Some "v_call73") (VGlobal "register_vcpu") [(VLocal "v_conv70"); (VLocal "v_conv72")])
                                                                                        :: (ICall TVoid None (VGlobal "set_host_regs") [(VInt (0)); (VInt (0))])
                                                                                        :: nil)
                                                                                       nil)
                                                                                   :: nil))
                                                                              :: nil))
                                                                         :: nil))
                                                                    :: nil))
                                                               :: nil))
                                                          :: nil))
                                                     :: nil))
                                                :: nil))
                                           :: nil))
                                      :: nil))
                                 :: nil))
                            :: nil))
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_dump_output_el2 :=
    {| fname := "dump_output_el2";
       rettype := TVoid;
       fargs :=
        (("v_out", (TPtr (TInt TI8)))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp5" Csgt (VLocal "v_len") (VInt (0)))
             :: (IIf (VLocal "v_cmp5")
                 ((IUnaryOp (TInt TI64) "v_wide_trip_count" (OZExt (TInt TI64)) (VLocal "v_len"))
                  :: (IAssign (TInt TI64) "v_indvars_iv" (VInt (0)))
                  :: (ILoop
                        ((IGetElemPtr (TPtr (TInt TI8)) "v_arrayidx" (TPtr (TInt TI8)) (VLocal "v_out") [(VLocal "v_indvars_iv")])
                         :: (ILoad (TInt TI8) "v_0" (VLocal "v_arrayidx") 1)
                         :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_0"))
                         :: (IBinOp (TInt TI64) "v_indvars_iv_next" OAdd (VLocal "v_indvars_iv") (VInt (1)))
                         :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_indvars_iv_next") (VLocal "v_wide_trip_count"))
                         :: (IIf (VLocal "v_exitcond_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_indvars_iv" (VLocal "v_indvars_iv_next"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_prot_and_map_vm_s2pt :=
    {| fname := "prot_and_map_vm_s2pt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: ("v_level", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_div2" OLshr (VLocal "v_addr") (VInt (12)))
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_pte") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 nil
                 ((IBinOp (TInt TI64) "v_and1" OLshr (VLocal "v_pte") (VInt (12)))
                  :: (IBinOp (TInt TI64) "v_div" OAnd (VLocal "v_and1") (VInt (68719476735)))
                  :: (IBinOp TBool "v_cmp3" Ceq (VLocal "v_level") (VInt (2)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_div2") (VInt (4503599627369984)))
                  :: (ISelect (TInt TI64) "v_gfn_0" (VLocal "v_cmp3") (VLocal "v_mul") (VLocal "v_div2"))
                  :: (ISelect (TInt TI64) "v_num_0" (VLocal "v_cmp3") (VInt (512)) (VInt (1)))
                  :: (IAssign (TInt TI64) "v_num_127" (VLocal "v_num_0"))
                  :: (IAssign (TInt TI64) "v_gfn_126" (VLocal "v_gfn_0"))
                  :: (IAssign (TInt TI64) "v_pfn_025" (VLocal "v_div"))
                  :: (ILoop
                        ((ICall TVoid None (VGlobal "assign_pfn_to_vm") [(VLocal "v_vmid"); (VLocal "v_gfn_126"); (VLocal "v_pfn_025")])
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_gfn_126") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_add8" OAdd (VLocal "v_pfn_025") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_num_127") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp7_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp7_not")
                             ((ISelect (TInt TI32) "v_level_addr_0" (VLocal "v_cmp3") (VInt (2)) (VInt (3)))
                              :: (ICall TVoid None (VGlobal "map_pfn_vm") [(VLocal "v_vmid"); (VLocal "v_addr"); (VLocal "v_pte"); (VLocal "v_level_addr_0")])
                              :: IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_num_127" (VLocal "v_sub"))
                              :: (IAssign (TInt TI64) "v_gfn_126" (VLocal "v_add"))
                              :: (IAssign (TInt TI64) "v_pfn_025" (VLocal "v_add8"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_update_smmu_page :=
    {| fname := "update_smmu_page";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_iova", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (IBinOp (TInt TI64) "v_and1" OLshr (VLocal "v_pte") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_div" OAnd (VLocal "v_and1") (VInt (68719476735)))
             :: (IBinOp (TInt TI64) "v_div2" OLshr (VLocal "v_iova") (VInt (12)))
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_div")])
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "get_pfn_map") [(VLocal "v_div")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call5") (VGlobal "get_pfn_count") [(VLocal "v_div")])
                  :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_call5") (VInt (1)))
                  :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_div"); (VLocal "v_add")])
                  :: (IBinOp (TInt TI64) "v_add6" OAdd (VLocal "v_div") (VInt (1000000000)))
                  :: (IAssign (TInt TI64) "v_map_0_in" (VLocal "v_add6"))
                  :: nil)
                 ((IAssign (TInt TI64) "v_map_0_in" (VLocal "v_call3"))
                  :: nil))
             :: (IBinOp TBool "v_cmp8" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp8")
                 nil
                 ((IBinOp TBool "v_cmp10" Ceq (VLocal "v_call") (VLocal "v_vmid"))
                  :: (IBinOp (TInt TI64) "v_conv12" OAnd (VLocal "v_map_0_in") (VInt (4294967295)))
                  :: (IBinOp TBool "v_cmp13" Ceq (VLocal "v_div2") (VLocal "v_conv12"))
                  :: (ISelect TBool "v_or_cond" (VLocal "v_cmp10") (VLocal "v_cmp13") (VBool false))
                  :: (IIf (VLocal "v_or_cond")
                      nil
                      ((ICall TVoid None (VGlobal "release_lock_s2page") [ ])
                       :: (IReturn TVoid None)
                       :: nil))
                  :: nil))
             :: (ICall TVoid None (VGlobal "map_spt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova"); (VLocal "v_pte")])
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_smmu_cfg_vmid :=
    {| fname := "set_smmu_cfg_vmid";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: ("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_num") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_cbndx"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vmid1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (24)); (VLocal "v_idxprom"); (VInt (0))])
             :: (IStore (TInt TI32) (VLocal "v_vmid1") (VLocal "v_vmid") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___vm_sysreg_restore_state_nvhe_opt :=
    {| fname := "__vm_sysreg_restore_state_nvhe_opt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "__vm_sysreg_restore_el1_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "__vm_sysreg_restore_common_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "__vm_sysreg_restore_user_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "__vm_sysreg_restore_el2_return_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___host_el2_restore_state :=
    {| fname := "__host_el2_restore_state";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_host_vttbr") [ ])
             :: (ICall TVoid None (VGlobal "set_vttbr_el2") [(VLocal "v_call")])
             :: (ICall TVoid None (VGlobal "set_hcr_el2") [(VInt (2147483681))])
             :: (ICall TVoid None (VGlobal "set_tpidr_el2") [(VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_clear_vm_stage2_range :=
    {| fname := "clear_vm_stage2_range";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_start", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (9))]); (VLocal "v_vmid"); (VLocal "v_start"); (VLocal "v_size")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_smmu_pgd_end :=
    {| fname := "smmu_pgd_end";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (36))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_smmu_page_pool_start") 16)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1048576)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f_get_next_remap_ptr :=
    {| fname := "get_next_remap_ptr";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_last_remap_ptr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (23))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_last_remap_ptr") 16)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (4294967296)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f___translate_far_to_hpfar :=
    {| fname := "__translate_far_to_hpfar";
       rettype := TBool;
       fargs :=
        (("v_far", (TInt TI64))
         :: ("v_hpfar", (TPtr (TInt TI64)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_par_el1") [ ])
             :: (ICall TVoid None (VGlobal "iasm_5") [(VLocal "v_far")])
             :: (ICall TVoid None (VGlobal "iasm_6_isb") [ ])
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_par_el1") [ ])
             :: (ICall TVoid None (VGlobal "iasm_set_par_el1") [(VLocal "v_0")])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_1") (VInt (1)))
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_and") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((IBinOp (TInt TI64) "v_2" OLshr (VLocal "v_1") (VInt (8)))
                  :: (IBinOp (TInt TI64) "v_shl" OAnd (VLocal "v_2") (VInt (1099511627760)))
                  :: (IStore (TInt TI64) (VLocal "v_hpfar") (VLocal "v_shl") 8)
                  :: nil)
                 nil)
             :: (IReturn TBool (Some (VLocal "v_tobool_not")))
             :: nil)) |}.

Definition f_release_lock_pt :=
    {| fname := "release_lock_pt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_shadow_pt_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (7))])
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_shadow_pt_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_walk_smmu_pte :=
    {| fname := "walk_smmu_pte";
       rettype := (TInt TI64);
       fargs :=
        (("v_pmd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pmd") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (9)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
                  :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "smmu_pt_load") [(VLocal "v_or")])
                  :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_walk_spt :=
    {| fname := "walk_spt";
       rettype := (TInt TI64);
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_spt") [ ])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "walk_smmu_pt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_addr")])
             :: (ICall TVoid None (VGlobal "release_lock_spt") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_hypsec_set_vcpu_state :=
    {| fname := "hypsec_set_vcpu_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: ("v_state", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "set_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpu_id"); (VLocal "v_state")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___activate_traps_nvhe :=
    {| fname := "__activate_traps_nvhe";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "__activate_traps_common") [ ])
             :: (ICall TVoid None (VGlobal "set_cptr_el2") [(VInt (1061887))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_clear_vm_range :=
    {| fname := "clear_vm_range";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: ("v_num", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp_not3" Ceq (VLocal "v_num") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not3")
                 nil
                 ((IAssign (TInt TI64) "v_num_addr_05" (VLocal "v_num"))
                  :: (IAssign (TInt TI64) "v_pfn_addr_04" (VLocal "v_pfn"))
                  :: (ILoop
                        ((ICall TVoid None (VGlobal "clear_vm_page") [(VLocal "v_vmid"); (VLocal "v_pfn_addr_04")])
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_pfn_addr_04") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_num_addr_05") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_num_addr_05" (VLocal "v_sub"))
                              :: (IAssign (TInt TI64) "v_pfn_addr_04" (VLocal "v_add"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_release_lock_s2page :=
    {| fname := "release_lock_s2page";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_s2pages_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (10))])
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_s2pages_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_smmu_num_context_banks :=
    {| fname := "get_smmu_num_context_banks";
       rettype := (TInt TI32);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_num_context_banks" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (25)); (VLocal "v_idxprom"); (VInt (4))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_num_context_banks") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_llvm_memset_p0i8_i64 :=
    {| fname := "llvm.memset.p0i8.i64";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TInt TI8)))
         :: ("v_1", (TInt TI8))
         :: ("v_2", (TInt TI64))
         :: ("v_3", TBool)
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_smmu_pt_clear :=
    {| fname := "smmu_pt_clear";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_num") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_cbndx"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_hw_ttbr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (24)); (VLocal "v_idxprom"); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_hw_ttbr") 8)
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_0") (VInt (1099511627775)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_1" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_or"))
             :: (ICall TVoid None (VGlobal "el2_memset") [(VLocal "v_1"); (VInt (0)); (VInt (8192))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vcpu_state :=
    {| fname := "set_vcpu_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_state", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_vcpuid"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_state3" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (10)); (VLocal "v_idxprom1"); (VInt (2))])
             :: (IStore (TInt TI32) (VLocal "v_state3") (VLocal "v_state") 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_vm_next_load_idx :=
    {| fname := "get_vm_next_load_idx";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_load_info_cnt" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (2))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_load_info_cnt") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_el2_decrypt_buf :=
    {| fname := "el2_decrypt_buf";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_buf", (TPtr (TInt TI8)))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (21))]); (VLocal "v_vmid"); (VLocal "v_buf"); (VLocal "v_len")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_dabt_get_rd :=
    {| fname := "host_dabt_get_rd";
       rettype := (TInt TI32);
       fargs :=
        (("v_hsr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_0" OLshr (VLocal "v_hsr") (VInt (16)))
             :: (IBinOp (TInt TI32) "v_1" OAnd (VLocal "v_0") (VInt (31)))
             :: (IReturn (TInt TI32) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_hypsec_tlb_flush_local_vmid :=
    {| fname := "hypsec_tlb_flush_local_vmid";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := None |}.

Definition f_el2_boot_from_inc_exe :=
    {| fname := "el2_boot_from_inc_exe";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (19))]); (VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_memset :=
    {| fname := "el2_memset";
       rettype := TVoid;
       fargs :=
        (("v_b", (TPtr (TInt TI8)))
         :: ("v_c", (TInt TI32))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_tobool_not2" Ceq (VLocal "v_len") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not2")
                 nil
                 ((IUnaryOp (TInt TI8) "v_conv" (OTrunc (TInt TI8)) (VLocal "v_c"))
                  :: (IUnaryOp (TInt TI64) "v_0" (OZExt (TInt TI64)) (VLocal "v_len"))
                  :: (ICall TVoid None (VGlobal "llvm.memset.p0i8.i64") [(VLocal "v_b"); (VLocal "v_conv"); (VLocal "v_0"); (VBool false)])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_atomic_read :=
    {| fname := "atomic_read";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ILoad (TInt TI32) "v_0" (VExpr (TPtr (TInt TI32)) (OGetElementPtr (TPtr (TNamedStruct "struct.atomic_t" 4))) [(VGlobal "__num_online_cpus"); (VInt (0)); (VInt (0))]) 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_hypsec_register_vcpu :=
    {| fname := "hypsec_register_vcpu";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (14))]); (VLocal "v_vmid"); (VLocal "v_vcpu_id")])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_set_boot_info :=
    {| fname := "set_boot_info";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_addr", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (2)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vm_next_load_idx") [(VLocal "v_vmid")])
                  :: (IBinOp TBool "v_cmp2" Cult (VLocal "v_call1") (VInt (5)))
                  :: (IIf (VLocal "v_cmp2")
                      ((IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_call1") (VInt (1)))
                       :: (ICall TVoid None (VGlobal "set_vm_next_load_idx") [(VLocal "v_vmid"); (VLocal "v_add")])
                       :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_size") (VInt (4095)))
                       :: (IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_sub") (VInt (12)))
                       :: (ICall (TInt TI64) (Some "v_call5") (VGlobal "alloc_remap_addr") [(VLocal "v_div")])
                       :: (ICall TVoid None (VGlobal "set_vm_load_addr") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_load_addr")])
                       :: (ICall TVoid None (VGlobal "set_vm_load_size") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_size")])
                       :: (ICall TVoid None (VGlobal "set_vm_remap_addr") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_call5")])
                       :: (ICall TVoid None (VGlobal "set_vm_mapped_pages") [(VLocal "v_vmid"); (VLocal "v_call1"); (VInt (0))])
                       :: (ICall TVoid None (VGlobal "set_vm_load_signature") [(VLocal "v_vmid"); (VLocal "v_call1")])
                       :: (IAssign (TInt TI32) "v_load_idx_0" (VLocal "v_call1"))
                       :: nil)
                      ((IAssign (TInt TI32) "v_load_idx_0" (VLocal "v_call1"))
                       :: nil))
                  :: nil)
                 ((IAssign (TInt TI32) "v_load_idx_0" (VInt (-1)))
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_load_idx_0")))
             :: nil)) |}.

Definition f_set_host_regs :=
    {| fname := "set_host_regs";
       rettype := TVoid;
       fargs :=
        (("v_nr", (TInt TI32))
         :: ("v_value", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.s2_host_regs" 256))) "v_host_regs" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (3))])
             :: (ILoad (TPtr (TNamedStruct "struct.s2_host_regs" 256)) "v_0" (VLocal "v_host_regs") 16)
             :: (IUnaryOp (TInt TI64) "v_idxprom2" (OSExt (TInt TI64)) (VLocal "v_nr"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx3" (TPtr (TNamedStruct "struct.s2_host_regs" 256)) (VLocal "v_0") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom2")])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx3") (VLocal "v_value") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_map_page_host :=
    {| fname := "map_page_host";
       rettype := TVoid;
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_addr") (VInt (12)))
             :: (ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_div")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_pfn_count") [(VLocal "v_div")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp")
                 ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_addr") (VInt (18446744073709547520)))
                  :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_and") (VInt (18014398509483975)))
                  :: (ICall TVoid None (VGlobal "mmap_s2pt") [(VInt (0)); (VLocal "v_addr"); (VInt (3)); (VLocal "v_add")])
                  :: nil)
                 ((IBinOp TBool "v_cmp2" Ceq (VLocal "v_call") (VInt (0)))
                  :: (IBinOp TBool "v_cmp3" Cne (VLocal "v_call1") (VInt (0)))
                  :: (ISelect TBool "v_or_cond" (VLocal "v_cmp2") (VBool true) (VLocal "v_cmp3"))
                  :: (IBinOp (TInt TI64) "v_add5" OOr (VLocal "v_addr") (VInt (4095)))
                  :: (ICall TVoid None (VGlobal "mmap_s2pt") [(VInt (0)); (VLocal "v_addr"); (VInt (3)); (VLocal "v_add5")])
                  :: (IIf (VLocal "v_or_cond")
                      nil
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil))
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_vm_load_size :=
    {| fname := "get_vm_load_size";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_size" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_size") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_unmap_smmu_page :=
    {| fname := "unmap_smmu_page";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_iova", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "unmap_spt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova")])
             :: (IBinOp (TInt TI64) "v_and1" OLshr (VLocal "v_call") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_div" OAnd (VLocal "v_and1") (VInt (68719476735)))
             :: (ICall (TInt TI32) (Some "v_call2") (VGlobal "get_pfn_owner") [(VLocal "v_div")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call2") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call3") (VGlobal "get_pfn_count") [(VLocal "v_div")])
                  :: (IBinOp TBool "v_cmp4_not" Ceq (VLocal "v_call3") (VInt (0)))
                  :: (IIf (VLocal "v_cmp4_not")
                      nil
                      ((IBinOp (TInt TI32) "v_sub" OAdd (VLocal "v_call3") (VInt (-1)))
                       :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_div"); (VLocal "v_sub")])
                       :: nil))
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_alloc_pud :=
    {| fname := "host_alloc_pud";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_abs_lock" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1100))])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_4" (OBitCast (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4))) (VLocal "v_abs_lock"))
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_4")])
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33700976))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_5" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start"))
             :: (ILoad (TInt TI64) "v_6" (VLocal "v_5") 8)
             :: (IBinOp (TInt TI64) "v_add3" OAdd (VLocal "v_6") (VInt (69632)))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_pud_used_pages" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33701000))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_7" (OBitCast (TPtr (TInt TI64))) (VLocal "v_pud_used_pages"))
             :: (ILoad (TInt TI64) "v_8" (VLocal "v_7") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_8") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add6" OAdd (VLocal "v_6") (VInt (4096)))
             :: (IBinOp (TInt TI64) "v_add7" OAdd (VLocal "v_add6") (VLocal "v_mul"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IBinOp (TInt TI64) "v_add11" OAdd (VLocal "v_8") (VLocal "v_conv"))
             :: (IStore (TInt TI64) (VLocal "v_7") (VLocal "v_add11") 8)
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_4")])
             :: (IBinOp TBool "v_cmp_not" Cult (VLocal "v_add7") (VLocal "v_add3"))
             :: (IIf (VLocal "v_cmp_not")
                 ((IReturn (TInt TI64) (Some (VLocal "v_add7")))
                  :: nil)
                 ((ICall TVoid None (VGlobal "iasm_11") [ ])
                  :: nil))
             :: nil)) |}.

Definition f_handle_smmu_cb_access :=
    {| fname := "handle_smmu_cb_access";
       rettype := (TInt TI32);
       fargs :=
        (("v_offset", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_offset") (VInt (4095)))
             :: (IIf (VExpr TBool Ceq [(VLocal "v_and"); (VInt (48))])
                 ((IAssign (TInt TI32) "v_ret_0" (VInt (3)))
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_and"); (VInt (32))])
                      ((IAssign (TInt TI32) "v_ret_0" (VInt (2)))
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_and"); (VInt (52))])
                           ((IAssign (TInt TI32) "v_ret_0" (VInt (0)))
                            :: nil)
                           ((IAssign (TInt TI32) "v_ret_0" (VInt (1)))
                            :: nil))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_map_pfn_vm :=
    {| fname := "map_pfn_vm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: ("v_level", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pte") (VInt (281474976706560)))
             :: (IIf (VExpr TBool Ceq [(VLocal "v_level"); (VInt (3))])
                 ((IBinOp (TInt TI64) "v_add5" OOr (VLocal "v_and1") (VInt (4095)))
                  :: (IAssign (TInt TI64) "v_pte_addr_0" (VLocal "v_add5"))
                  :: (IAssign (TInt TI64) "v_size_0" (VInt (4096)))
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_level"); (VInt (2))])
                      ((IBinOp (TInt TI64) "v_add" OOr (VLocal "v_and1") (VInt (4093)))
                       :: (IAssign (TInt TI64) "v_pte_addr_0" (VLocal "v_add"))
                       :: (IAssign (TInt TI64) "v_size_0" (VInt (2097152)))
                       :: nil)
                      ((IAssign (TInt TI64) "v_pte_addr_0" (VLocal "v_pte"))
                       :: (IAssign (TInt TI64) "v_size_0" (VInt (4096)))
                       :: nil))
                  :: nil))
             :: (ICall TVoid None (VGlobal "mmap_s2pt") [(VLocal "v_vmid"); (VLocal "v_addr"); (VLocal "v_level"); (VLocal "v_pte_addr_0")])
             :: (ICall TVoid None (VGlobal "iasm_6_isb") [ ])
             :: (IBinOp (TInt TI64) "v_and7" OAnd (VLocal "v_pte_addr_0") (VInt (1099511627775)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and7") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_or"))
             :: (ICall TVoid None (VGlobal "__flush_dcache_area") [(VLocal "v_0"); (VLocal "v_size_0")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_smmu_cfg_hw_ttbr :=
    {| fname := "set_smmu_cfg_hw_ttbr";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: ("v_hw_ttbr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_num") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_cbndx"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_hw_ttbr1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (24)); (VLocal "v_idxprom"); (VInt (1))])
             :: (IStore (TInt TI64) (VLocal "v_hw_ttbr1") (VLocal "v_hw_ttbr") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_next_vmid :=
    {| fname := "set_next_vmid";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_next_vmid" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (27))])
             :: (IStore (TInt TI32) (VLocal "v_next_vmid") (VLocal "v_vmid") 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_v_kvm_phys_addr_ioremap :=
    {| fname := "v_kvm_phys_addr_ioremap";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gpa", (TInt TI64))
         :: ("v_pa", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_size") (VInt (4095)))
             :: (IBinOp TBool "v_cmp_not8" Cult (VLocal "v_add") (VInt (4096)))
             :: (IIf (VLocal "v_cmp_not8")
                 nil
                 ((IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_add") (VInt (12)))
                  :: (IAssign (TInt TI64) "v_n_011" (VLocal "v_div"))
                  :: (IAssign (TInt TI64) "v_gpa_addr_010" (VLocal "v_gpa"))
                  :: (IAssign (TInt TI64) "v_pa_addr_09" (VLocal "v_pa"))
                  :: (ILoop
                        ((ICall TVoid None (VGlobal "map_io") [(VLocal "v_vmid"); (VLocal "v_gpa_addr_010"); (VLocal "v_pa_addr_09")])
                         :: (IBinOp (TInt TI64) "v_add1" OAdd (VLocal "v_gpa_addr_010") (VInt (4096)))
                         :: (IBinOp (TInt TI64) "v_add2" OAdd (VLocal "v_pa_addr_09") (VInt (4096)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_n_011") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_n_011" (VLocal "v_sub"))
                              :: (IAssign (TInt TI64) "v_gpa_addr_010" (VLocal "v_add1"))
                              :: (IAssign (TInt TI64) "v_pa_addr_09" (VLocal "v_add2"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_init_el2_data_page :=
    {| fname := "init_el2_data_page";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call11") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub14" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub14"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call11") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (ICall (TInt TI64) (Some "v_call17") (VGlobal "virt_to_phys") [(VLocal "v_val_0")])
             :: (ICall TBool (Some "v_call19") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_4" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_5" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_6" OAdd (VLocal "v_4") (VLocal "v_5"))
             :: (IBinOp (TInt TI64) "v_sub25" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]) (VLocal "v_6"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_7" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub25"))
             :: (ISelect (TPtr (TInt TI8)) "v_val18_0" (VLocal "v_call19") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_start"); (VInt (0)); (VInt (0))]) (VLocal "v_7"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_add_ptr29" (TPtr (TInt TI8)) (VLocal "v_val18_0") [(VInt (201326592))])
             :: (ICall (TInt TI64) (Some "v_call30") (VGlobal "virt_to_phys") [(VLocal "v_add_ptr29")])
             :: (ICall TBool (Some "v_call33") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_8" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_9" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_10" OAdd (VLocal "v_8") (VLocal "v_9"))
             :: (IBinOp (TInt TI64) "v_sub39" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]) (VLocal "v_10"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_11" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub39"))
             :: (ISelect (TPtr (TInt TI8)) "v_val32_0" (VLocal "v_call33") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_start"); (VInt (0)); (VInt (0))]) (VLocal "v_11"))
             :: (ICall TBool (Some "v_call43") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_12" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_13" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_14" OAdd (VLocal "v_12") (VLocal "v_13"))
             :: (IBinOp (TInt TI64) "v_sub49" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]) (VLocal "v_14"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_15" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub49"))
             :: (ISelect (TPtr (TInt TI8)) "v_val42_0" (VLocal "v_call43") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_start"); (VInt (0)); (VInt (0))]) (VLocal "v_15"))
             :: (ICall (TInt TI64) (Some "v_call52") (VGlobal "virt_to_phys") [(VLocal "v_val42_0")])
             :: (ICall TBool (Some "v_call54") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_16" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_17" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_18" OAdd (VLocal "v_16") (VLocal "v_17"))
             :: (IBinOp (TInt TI64) "v_sub60" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_end")]) (VLocal "v_18"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_19" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub60"))
             :: (ISelect (TPtr (TInt TI8)) "v_val53_0" (VLocal "v_call54") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_end"); (VInt (0)); (VInt (0))]) (VLocal "v_19"))
             :: (ICall TBool (Some "v_call64") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_20" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_21" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_22" OAdd (VLocal "v_20") (VLocal "v_21"))
             :: (IBinOp (TInt TI64) "v_sub70" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_end")]) (VLocal "v_22"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_23" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub70"))
             :: (ISelect (TPtr (TInt TI8)) "v_val63_0" (VLocal "v_call64") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_end"); (VInt (0)); (VInt (0))]) (VLocal "v_23"))
             :: (ICall (TInt TI64) (Some "v_call73") (VGlobal "virt_to_phys") [(VLocal "v_val63_0")])
             :: (ICall TVoid None (VGlobal "llvm.memset.p0i8.i64") [(VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_start"); (VInt (0)); (VInt (0))]); (VInt (0)); (VInt (201326592)); (VBool false)])
             :: (ICall TVoid None (VGlobal "__flush_dcache_area") [(VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "stage2_pgs_start"); (VInt (0)); (VInt (0))]); (VInt (201326592))])
             :: (ICall TBool (Some "v_call76") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_24" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_25" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_26" OAdd (VLocal "v_24") (VLocal "v_25"))
             :: (IBinOp (TInt TI64) "v_sub82" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_26"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_27" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub82"))
             :: (ISelect (TPtr (TInt TI8)) "v_val75_0" (VLocal "v_call76") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_27"))
             :: (ICall TVoid None (VGlobal "llvm.memset.p0i8.i64") [(VLocal "v_val75_0"); (VInt (0)); (VInt (67108864)); (VBool false)])
             :: (ICall TVoid None (VGlobal "__flush_dcache_area") [(VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]); (VInt (67108864))])
             :: (ICall TBool (Some "v_call86") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_28" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_29" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_30" OAdd (VLocal "v_28") (VLocal "v_29"))
             :: (IBinOp (TInt TI64) "v_sub92" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_30"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_31" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub92"))
             :: (ISelect (TPtr (TInt TI8)) "v_val85_0" (VLocal "v_call86") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_31"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_32" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33701496))])
             :: (IStore (TInt TI8) (VLocal "v_32") (VInt (0)) 8)
             :: (ILoad (TInt TI64) "v_33" (VExpr (TPtr (TInt TI64)) (OGetElementPtr (TPtr (TNamedStruct "struct.memblock" 0))) [(VGlobal "memblock"); (VInt (0)); (VInt (2)); (VInt (0))]) 8)
             :: (IBinOp TBool "v_cmp360" Csgt (VLocal "v_33") (VInt (0)))
             :: (IIf (VLocal "v_cmp360")
                 ((ILoad (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_34" (VExpr (TPtr (TPtr (TNamedStruct "struct.memblock_region" 24))) (OGetElementPtr (TPtr (TNamedStruct "struct.memblock" 0))) [(VGlobal "memblock"); (VInt (0)); (VInt (2)); (VInt (3))]) 8)
                  :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.memblock_region" 24) 32)) "v_regions" (OBitCast (TPtr (TArray (TNamedStruct "struct.memblock_region" 24) 32))) (VLocal "v_val85_0"))
                  :: (IGetElemPtr (TPtr (TInt TI8)) "v_s2_memblock_info106" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (768))])
                  :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32)) "v_35" (OBitCast (TPtr (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32))) (VLocal "v_s2_memblock_info106"))
                  :: (IGetElemPtr (TPtr (TInt TI8)) "v_s2_memblock_info" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (768))])
                  :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32)) "v_36" (OBitCast (TPtr (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32))) (VLocal "v_s2_memblock_info"))
                  :: (IGetElemPtr (TPtr (TInt TI8)) "v_phys_mem_size" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33731136))])
                  :: (IUnaryOp (TPtr (TInt TI64)) "v_37" (OBitCast (TPtr (TInt TI64))) (VLocal "v_phys_mem_size"))
                  :: (IAssign (TInt TI64) "v_indvars_iv" (VInt (0)))
                  :: (IAssign (TInt TI32) "v_index_0362" (VInt (0)))
                  :: (IAssign (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_r_0361" (VLocal "v_34"))
                  :: (ILoop
                        ((IGetElemPtr (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_arrayidx" (TPtr (TArray (TNamedStruct "struct.memblock_region" 24) 32)) (VLocal "v_regions") [(VInt (0)); (VLocal "v_indvars_iv")])
                         :: (IUnaryOp (TPtr (TInt TI8)) "v_38" (OBitCast (TPtr (TInt TI8))) (VLocal "v_arrayidx"))
                         :: (IUnaryOp (TPtr (TInt TI8)) "v_39" (OBitCast (TPtr (TInt TI8))) (VLocal "v_r_0361"))
                         :: (ICall TVoid None (VGlobal "llvm.memcpy.p0i8.p0i8.i64") [(VLocal "v_38"); (VLocal "v_39"); (VInt (24)); (VBool false)])
                         :: (IGetElemPtr (TPtr (TInt TI32)) "v_flags" (TPtr (TNamedStruct "struct.memblock_region" 24)) (VLocal "v_r_0361") [(VInt (0)); (VInt (2))])
                         :: (ILoad (TInt TI32) "v_40" (VLocal "v_flags") 8)
                         :: (IBinOp (TInt TI32) "v_and" OAnd (VLocal "v_40") (VInt (4)))
                         :: (IBinOp TBool "v_tobool97_not" Ceq (VLocal "v_and") (VInt (0)))
                         :: (IIf (VLocal "v_tobool97_not")
                             ((IUnaryOp (TInt TI64) "v_conv99" (OSExt (TInt TI64)) (VLocal "v_index_0362"))
                              :: (IGetElemPtr (TPtr (TInt TI64)) "v_index102" (TPtr (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32)) (VLocal "v_36") [(VInt (0)); (VLocal "v_indvars_iv"); (VInt (0))])
                              :: (IStore (TInt TI64) (VLocal "v_index102") (VLocal "v_conv99") 8)
                              :: (IGetElemPtr (TPtr (TInt TI64)) "v_size" (TPtr (TNamedStruct "struct.memblock_region" 24)) (VLocal "v_r_0361") [(VInt (0)); (VInt (1))])
                              :: (ILoad (TInt TI64) "v_41" (VLocal "v_size") 8)
                              :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_41") (VInt (12)))
                              :: (IUnaryOp (TInt TI32) "v_42" (OTrunc (TInt TI32)) (VLocal "v_shr"))
                              :: (IBinOp (TInt TI32) "v_conv105" OAdd (VLocal "v_index_0362") (VLocal "v_42"))
                              :: (IAssign (TInt TI32) "v_index_1" (VLocal "v_conv105"))
                              :: nil)
                             ((IGetElemPtr (TPtr (TInt TI64)) "v_index109" (TPtr (TArray (TNamedStruct "struct.s2_memblock_info" 8) 32)) (VLocal "v_35") [(VInt (0)); (VLocal "v_indvars_iv"); (VInt (0))])
                              :: (IStore (TInt TI64) (VLocal "v_index109") (VInt (16777216)) 8)
                              :: (IAssign (TInt TI32) "v_index_1" (VLocal "v_index_0362"))
                              :: nil))
                         :: (IGetElemPtr (TPtr (TInt TI64)) "v_size114" (TPtr (TArray (TNamedStruct "struct.memblock_region" 24) 32)) (VLocal "v_regions") [(VInt (0)); (VLocal "v_indvars_iv"); (VInt (1))])
                         :: (ILoad (TInt TI64) "v_43" (VLocal "v_size114") 8)
                         :: (ILoad (TInt TI64) "v_44" (VLocal "v_37") 16)
                         :: (IBinOp (TInt TI64) "v_add115" OAdd (VLocal "v_44") (VLocal "v_43"))
                         :: (IStore (TInt TI64) (VLocal "v_37") (VLocal "v_add115") 16)
                         :: (IBinOp (TInt TI64) "v_indvars_iv_next" OAdd (VLocal "v_indvars_iv") (VInt (1)))
                         :: (IGetElemPtr (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_incdec_ptr" (TPtr (TNamedStruct "struct.memblock_region" 24)) (VLocal "v_r_0361") [(VInt (1))])
                         :: (ILoad (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_45" (VExpr (TPtr (TPtr (TNamedStruct "struct.memblock_region" 24))) (OGetElementPtr (TPtr (TNamedStruct "struct.memblock" 0))) [(VGlobal "memblock"); (VInt (0)); (VInt (2)); (VInt (3))]) 8)
                         :: (ILoad (TInt TI64) "v_46" (VExpr (TPtr (TInt TI64)) (OGetElementPtr (TPtr (TNamedStruct "struct.memblock" 0))) [(VGlobal "memblock"); (VInt (0)); (VInt (2)); (VInt (0))]) 8)
                         :: (IGetElemPtr (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_add_ptr95" (TPtr (TNamedStruct "struct.memblock_region" 24)) (VLocal "v_45") [(VLocal "v_46")])
                         :: (IBinOp TBool "v_cmp" Cult (VLocal "v_incdec_ptr") (VLocal "v_add_ptr95"))
                         :: (IIf (VLocal "v_cmp")
                             ((IAssign (TInt TI64) "v_indvars_iv" (VLocal "v_indvars_iv_next"))
                              :: (IAssign (TInt TI32) "v_index_0362" (VLocal "v_index_1"))
                              :: (IAssign (TPtr (TNamedStruct "struct.memblock_region" 24)) "v_r_0361" (VLocal "v_incdec_ptr"))
                              :: IContinue
                              :: nil)
                             ((IUnaryOp (TInt TI32) "v_47" (OTrunc (TInt TI32)) (VLocal "v_indvars_iv_next"))
                              :: (IAssign (TInt TI32) "v_i_0_lcssa" (VLocal "v_47"))
                              :: IBreak
                              :: nil))
                         :: nil))
                  :: nil)
                 ((IAssign (TInt TI32) "v_i_0_lcssa" (VInt (0)))
                  :: nil))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_regions_cnt" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (1040))])
             :: (IUnaryOp (TPtr (TInt TI32)) "v_48" (OBitCast (TPtr (TInt TI32))) (VLocal "v_regions_cnt"))
             :: (IStore (TInt TI32) (VLocal "v_48") (VLocal "v_i_0_lcssa") 16)
             :: (IUnaryOp (TPtr (TInt TI64)) "v_base" (OBitCast (TPtr (TInt TI64))) (VLocal "v_val85_0"))
             :: (ILoad (TInt TI64) "v_49" (VLocal "v_base") 16)
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_phys_mem_start" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33731128))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_50" (OBitCast (TPtr (TInt TI64))) (VLocal "v_phys_mem_start"))
             :: (IStore (TInt TI64) (VLocal "v_50") (VLocal "v_49") 8)
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_phys_mem_size119" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33731136))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_51" (OBitCast (TPtr (TInt TI64))) (VLocal "v_phys_mem_size119"))
             :: (ILoad (TInt TI64) "v_52" (VLocal "v_51") 16)
             :: (ILoad (TInt TI64) "v_53" (VGlobal "vabits_actual") 8)
             :: (IBinOp (TInt TI64) "v_sub122" OAdd (VLocal "v_53") (VInt (-1)))
             :: (IBinOp (TInt TI64) "v_shl" OShl (VInt (1)) (VLocal "v_sub122"))
             :: (IBinOp (TInt TI64) "v_and123" OAnd (VLocal "v_shl") (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]))
             :: (IBinOp TBool "v_tobool124_not" Ceq (VLocal "v_and123") (VInt (0)))
             :: (ILoad (TInt TI64) "v_54" (VGlobal "physvirt_offset") 8)
             :: (ILoad (TInt TI64) "v_55" (VGlobal "kimage_voffset") 8)
             :: (IBinOp (TInt TI64) "v_56" OSub (VInt (0)) (VLocal "v_55"))
             :: (ISelect (TInt TI64) "v_cond_p" (VLocal "v_tobool124_not") (VLocal "v_54") (VLocal "v_56"))
             :: (IBinOp (TInt TI64) "v_cond" OAdd (VLocal "v_cond_p") (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (1048))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_57" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start"))
             :: (IStore (TInt TI64) (VLocal "v_57") (VLocal "v_cond") 8)
             :: (ILoad (TInt TI64) "v_58" (VLocal "v_base") 16)
             :: (IBinOp (TInt TI64) "v_shr130" OLshr (VLocal "v_58") (VInt (12)))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_ram_start_pfn" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (1120))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_59" (OBitCast (TPtr (TInt TI64))) (VLocal "v_ram_start_pfn"))
             :: (IStore (TInt TI64) (VLocal "v_59") (VLocal "v_shr130") 16)
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_vm_info" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33686424))])
             :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.el2_vm_info" 768) 19)) "v_60" (OBitCast (TPtr (TArray (TNamedStruct "struct.el2_vm_info" 768) 19))) (VLocal "v_vm_info"))
             :: (ICall TVoid None (VGlobal "llvm.memset.p0i8.i64") [(VLocal "v_vm_info"); (VInt (0)); (VInt (13825)); (VBool false)])
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_last_remap_ptr" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33701024))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_61" (OBitCast (TPtr (TInt TI64))) (VLocal "v_last_remap_ptr"))
             :: (IStore (TInt TI64) (VLocal "v_61") (VInt (0)) 16)
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_shadow_pt_lock" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33686936))])
             :: (IUnaryOp (TPtr (TInt TI32)) "v_lock" (OBitCast (TPtr (TInt TI32))) (VLocal "v_shadow_pt_lock"))
             :: (IStore (TInt TI32) (VLocal "v_lock") (VInt (0)) 8)
             :: (IAssign (TInt TI64) "v_indvars_iv370" (VInt (1)))
             :: (ILoop
                   ((IBinOp (TInt TI64) "v_62" OShl (VLocal "v_indvars_iv370") (VInt (23)))
                    :: (IBinOp (TInt TI64) "v_63" OAdd (VLocal "v_cond_p") (VLocal "v_62"))
                    :: (IBinOp (TInt TI64) "v_add142" OAdd (VLocal "v_63") (VExpr (TInt TI64) OAdd [(VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]); (VInt (58720256))]))
                    :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start146" (TPtr (TArray (TNamedStruct "struct.el2_vm_info" 768) 19)) (VLocal "v_60") [(VInt (0)); (VLocal "v_indvars_iv370"); (VInt (16))])
                    :: (IStore (TInt TI64) (VLocal "v_page_pool_start146") (VLocal "v_add142") 8)
                    :: (IGetElemPtr (TPtr (TInt TI64)) "v_used_pages" (TPtr (TArray (TNamedStruct "struct.el2_vm_info" 768) 19)) (VLocal "v_60") [(VInt (0)); (VLocal "v_indvars_iv370"); (VInt (17))])
                    :: (IStore (TInt TI64) (VLocal "v_used_pages") (VInt (0)) 8)
                    :: (IBinOp (TInt TI64) "v_indvars_iv_next371" OAdd (VLocal "v_indvars_iv370") (VInt (1)))
                    :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_indvars_iv_next371") (VInt (18)))
                    :: (IIf (VLocal "v_exitcond_not")
                        ((ILoad (TInt TI64) "v_64" (VLocal "v_57") 8)
                         :: (IBinOp (TInt TI64) "v_add154" OAdd (VLocal "v_64") (VInt (33554432)))
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start157" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33687152))])
                         :: (IUnaryOp (TPtr (TInt TI64)) "v_65" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start157"))
                         :: (IStore (TInt TI64) (VLocal "v_65") (VLocal "v_add154") 8)
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_used_pages160" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33687160))])
                         :: (IUnaryOp (TPtr (TInt TI64)) "v_66" (OBitCast (TPtr (TInt TI64))) (VLocal "v_used_pages160"))
                         :: (IStore (TInt TI64) (VLocal "v_66") (VInt (0)) 8)
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_host_vttbr" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (1056))])
                         :: (IUnaryOp (TPtr (TInt TI64)) "v_67" (OBitCast (TPtr (TInt TI64))) (VLocal "v_host_vttbr"))
                         :: (IStore (TInt TI64) (VLocal "v_67") (VLocal "v_add154") 16)
                         :: (IStore (TInt TI64) (VLocal "v_66") (VInt (1)) 8)
                         :: (IUnaryOp (TPtr (TInt TI64)) "v_vttbr" (OBitCast (TPtr (TInt TI64))) (VLocal "v_vm_info"))
                         :: (IStore (TInt TI64) (VLocal "v_vttbr") (VLocal "v_add154") 8)
                         :: (IBinOp (TInt TI64) "v_add171" OAdd (VLocal "v_64") (VInt (40960)))
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start174" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33700976))])
                         :: (IUnaryOp (TPtr (TInt TI64)) "v_68" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start174"))
                         :: (IStore (TInt TI64) (VLocal "v_68") (VLocal "v_add171") 8)
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_used_pages177" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33700984))])
                         :: (IUnaryOp (TPtr (TInt TI64)) "v_69" (OBitCast (TPtr (TInt TI64))) (VLocal "v_used_pages177"))
                         :: (IStore (TInt TI64) (VLocal "v_69") (VInt (0)) 8)
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_s2_sys_reg_descs" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33685752))])
                         :: (ICall TVoid None (VGlobal "llvm.memcpy.p0i8.p0i8.i64") [(VLocal "v_s2_sys_reg_descs"); (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TNamedStruct "struct.s2_sys_reg_desc" 24) 27))) [(VGlobal "host_sys_reg_descs"); (VInt (0)); (VInt (0)); (VInt (0))]); (VInt (672)); (VBool false)])
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_next_vmid" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33701484))])
                         :: (IUnaryOp (TPtr (TInt TI32)) "v_70" (OBitCast (TPtr (TInt TI32))) (VLocal "v_next_vmid"))
                         :: (IStore (TInt TI32) (VLocal "v_70") (VInt (1)) 4)
                         :: (ICall TVoid None (VGlobal "el2_shared_data_init") [ ])
                         :: (ICall (TInt TI32) (Some "v_call189") (VGlobal "num_online_cpus") [ ])
                         :: (IBinOp TBool "v_cmp190" Cugt (VLocal "v_call189") (VInt (16)))
                         :: (IIf (VLocal "v_cmp190")
                             ((ICall TVoid None (VGlobal "iasm_11") [ ])
                              :: nil)
                             nil)
                         :: IBreak
                         :: nil)
                        ((IAssign (TInt TI64) "v_indvars_iv370" (VLocal "v_indvars_iv_next371"))
                         :: IContinue
                         :: nil))
                    :: nil))
             :: (ICall (TInt TI32) (Some "v_call208366") (VGlobal "num_online_cpus") [ ])
             :: (IBinOp TBool "v_cmp209367_not" Ceq (VLocal "v_call208366") (VInt (0)))
             :: (IIf (VLocal "v_cmp209367_not")
                 nil
                 ((IGetElemPtr (TPtr (TInt TI8)) "v_per_cpu_data" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33701504))])
                  :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.el2_per_cpu_data" 1792) 16)) "v_71" (OBitCast (TPtr (TArray (TNamedStruct "struct.el2_per_cpu_data" 1792) 16))) (VLocal "v_per_cpu_data"))
                  :: (IAssign (TInt TI64) "v_indvars_iv378" (VInt (0)))
                  :: (ILoop
                        ((IGetElemPtr (TPtr (TInt TI32)) "v_vmid" (TPtr (TArray (TNamedStruct "struct.el2_per_cpu_data" 1792) 16)) (VLocal "v_71") [(VInt (0)); (VLocal "v_indvars_iv378"); (VInt (0))])
                         :: (IStore (TInt TI32) (VLocal "v_vmid") (VInt (0)) 16)
                         :: (IGetElemPtr (TPtr (TInt TI32)) "v_vcpu_id" (TPtr (TArray (TNamedStruct "struct.el2_per_cpu_data" 1792) 16)) (VLocal "v_71") [(VInt (0)); (VLocal "v_indvars_iv378"); (VInt (1))])
                         :: (IUnaryOp (TInt TI32) "v_72" (OTrunc (TInt TI32)) (VLocal "v_indvars_iv378"))
                         :: (IStore (TInt TI32) (VLocal "v_vcpu_id") (VLocal "v_72") 4)
                         :: (IBinOp (TInt TI64) "v_indvars_iv_next379" OAdd (VLocal "v_indvars_iv378") (VInt (1)))
                         :: (ICall (TInt TI32) (Some "v_call208") (VGlobal "num_online_cpus") [ ])
                         :: (IUnaryOp (TInt TI64) "v_73" (OZExt (TInt TI64)) (VLocal "v_call208"))
                         :: (IBinOp TBool "v_cmp209" Cult (VLocal "v_indvars_iv_next379") (VLocal "v_73"))
                         :: (IIf (VLocal "v_cmp209")
                             ((IAssign (TInt TI64) "v_indvars_iv378" (VLocal "v_indvars_iv_next379"))
                              :: IContinue
                              :: nil)
                             (IBreak
                              :: nil))
                         :: nil))
                  :: nil))
             :: (ILoad (TInt TI64) "v_74" (VGlobal "vabits_actual") 8)
             :: (IBinOp (TInt TI64) "v_sub222" OAdd (VLocal "v_74") (VInt (-1)))
             :: (IBinOp (TInt TI64) "v_shl223" OShl (VInt (1)) (VLocal "v_sub222"))
             :: (IBinOp (TInt TI64) "v_and224" OAnd (VLocal "v_shl223") (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]))
             :: (IBinOp TBool "v_tobool225_not" Ceq (VLocal "v_and224") (VInt (0)))
             :: (ILoad (TInt TI64) "v_75" (VGlobal "physvirt_offset") 8)
             :: (ILoad (TInt TI64) "v_76" (VGlobal "kimage_voffset") 8)
             :: (IBinOp (TInt TI64) "v_77" OSub (VInt (0)) (VLocal "v_76"))
             :: (ISelect (TInt TI64) "v_cond231_p" (VLocal "v_tobool225_not") (VLocal "v_75") (VLocal "v_77"))
             :: (IBinOp (TInt TI64) "v_cond231" OAdd (VLocal "v_cond231_p") (VExpr (TInt TI64) OPtrToInt [(VGlobal "stage2_pgs_start")]))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_core_start" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33730176))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_78" (OBitCast (TPtr (TInt TI64))) (VLocal "v_core_start"))
             :: (IStore (TInt TI64) (VLocal "v_78") (VLocal "v_cond231") 16)
             :: (IBinOp (TInt TI64) "v_and236" OAnd (VLocal "v_shl223") (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_end")]))
             :: (IBinOp TBool "v_tobool237_not" Ceq (VLocal "v_and236") (VInt (0)))
             :: (IBinOp (TInt TI64) "v_79" OSub (VInt (0)) (VLocal "v_76"))
             :: (ISelect (TInt TI64) "v_cond243_p" (VLocal "v_tobool237_not") (VLocal "v_75") (VLocal "v_79"))
             :: (IBinOp (TInt TI64) "v_cond243" OAdd (VLocal "v_cond243_p") (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_end")]))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_core_end" (TPtr (TInt TI8)) (VLocal "v_val85_0") [(VInt (33730184))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_80" (OBitCast (TPtr (TInt TI64))) (VLocal "v_core_end"))
             :: (IStore (TInt TI64) (VLocal "v_80") (VLocal "v_cond243") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___vm_sysreg_restore_common_state :=
    {| fname := "__vm_sysreg_restore_common_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (23))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_arrayidx1") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_mdscr_el1") [(VLocal "v_0")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx4" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (31))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_arrayidx4") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_sp_el0") [(VLocal "v_1")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___timer_enable_traps :=
    {| fname := "__timer_enable_traps";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_pt_load :=
    {| fname := "pt_load";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_addr") (VInt (1099511627775)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI64)) "v_0" (OIntToPtr (TPtr (TInt TI64))) (VLocal "v_or"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_0") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_v_post_handle_shadow_s2pt_fault :=
    {| fname := "v_post_handle_shadow_s2pt_fault";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (42))])
             :: (IBinOp (TInt TI64) "v_and" OShl (VLocal "v_call") (VInt (8)))
             :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_and") (VInt (18446744073709547520)))
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "get_int_new_pte") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall (TInt TI32) (Some "v_call2") (VGlobal "get_int_new_level") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "prot_and_map_vm_s2pt") [(VLocal "v_vmid"); (VLocal "v_mul"); (VLocal "v_call1"); (VLocal "v_call2")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_acquire_lock_smmu :=
    {| fname := "acquire_lock_smmu";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_smmu_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (14))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_smmu_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_reset_fp_regs :=
    {| fname := "reset_fp_regs";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (Some "v_call") (VGlobal "hypsec_vcpu_id_to_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
             :: (ICall (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (Some "v_call1") (VGlobal "hypsec_vcpu_id_to_vcpu") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)) "v_fp_regs" (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (VLocal "v_call") [(VInt (0)); (VInt (8))])
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OBitCast (TPtr (TInt TI8))) (VLocal "v_fp_regs"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)) "v_fp_regs2" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_call1") [(VInt (0)); (VInt (29)); (VInt (3)); (VInt (0)); (VInt (4))])
             :: (IUnaryOp (TPtr (TInt TI8)) "v_1" (OBitCast (TPtr (TInt TI8))) (VLocal "v_fp_regs2"))
             :: (ICall TVoid None (VGlobal "el2_memcpy") [(VLocal "v_0"); (VLocal "v_1"); (VInt (528))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_reset_gp_regs :=
    {| fname := "reset_gp_regs";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_int_pc") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "v_search_load_info") [(VLocal "v_vmid"); (VLocal "v_call")])
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_call1") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall TVoid None (VGlobal "clear_shadow_gp_regs") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
                  :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_int_pstate") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
                  :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (33)); (VLocal "v_call2")])
                  :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (32)); (VLocal "v_call")])
                  :: (ICall TVoid None (VGlobal "reset_fp_regs") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_is_mmio_gpa :=
    {| fname := "is_mmio_gpa";
       rettype := TBool;
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp" Cult (VLocal "v_addr") (VInt (1073741824)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TBool (Some "v_call") (VGlobal "is_gic_cpu") [(VLocal "v_addr")])
                  :: (IBinOp TBool "v_lnot" OXor (VLocal "v_call") (VBool true))
                  :: (IAssign TBool "v_0" (VLocal "v_lnot"))
                  :: nil)
                 ((IAssign TBool "v_0" (VBool false))
                  :: nil))
             :: (IReturn TBool (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_assign_pfn_to_vm :=
    {| fname := "assign_pfn_to_vm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gfn", (TInt TI64))
         :: ("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_pfn_count") [(VLocal "v_pfn")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((IBinOp TBool "v_cmp2" Ceq (VLocal "v_call1") (VInt (0)))
                  :: (IIf (VLocal "v_cmp2")
                      ((ICall TVoid None (VGlobal "set_pfn_owner") [(VLocal "v_pfn"); (VLocal "v_vmid")])
                       :: (ICall TVoid None (VGlobal "clear_pfn_host") [(VLocal "v_pfn")])
                       :: (ICall TVoid None (VGlobal "set_pfn_map") [(VLocal "v_pfn"); (VLocal "v_gfn")])
                       :: nil)
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil))
                  :: nil)
                 ((IBinOp TBool "v_cmp5" Ceq (VLocal "v_call") (VLocal "v_vmid"))
                  :: (IIf (VLocal "v_cmp5")
                      ((ICall (TInt TI64) (Some "v_call7") (VGlobal "get_pfn_map") [(VLocal "v_pfn")])
                       :: (IBinOp TBool "v_cmp8" Ceq (VLocal "v_call7") (VLocal "v_gfn"))
                       :: (IIf (VLocal "v_cmp8")
                           ((IBinOp TBool "v_cmp10" Ceq (VLocal "v_call1") (VInt (-1)))
                            :: (IIf (VLocal "v_cmp10")
                                ((ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn"); (VInt (0))])
                                 :: nil)
                                nil)
                            :: nil)
                           ((ICall TVoid None (VGlobal "v_panic") [ ])
                            :: nil))
                       :: nil)
                      nil)
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_pmselr_el0 :=
    {| fname := "set_pmselr_el0";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_16") [(VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_alloc_pte :=
    {| fname := "host_alloc_pte";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_abs_lock" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1100))])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_4" (OBitCast (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4))) (VLocal "v_abs_lock"))
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_4")])
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33700976))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_5" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start"))
             :: (ILoad (TInt TI64) "v_6" (VLocal "v_5") 8)
             :: (IBinOp (TInt TI64) "v_add3" OAdd (VLocal "v_6") (VInt (33554432)))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_pte_used_pages" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33701008))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_7" (OBitCast (TPtr (TInt TI64))) (VLocal "v_pte_used_pages"))
             :: (ILoad (TInt TI64) "v_8" (VLocal "v_7") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_8") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add6" OAdd (VLocal "v_6") (VInt (2097152)))
             :: (IBinOp (TInt TI64) "v_add7" OAdd (VLocal "v_add6") (VLocal "v_mul"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IBinOp (TInt TI64) "v_add11" OAdd (VLocal "v_8") (VLocal "v_conv"))
             :: (IStore (TInt TI64) (VLocal "v_7") (VLocal "v_add11") 8)
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_4")])
             :: (IBinOp TBool "v_cmp_not" Cult (VLocal "v_add7") (VLocal "v_add3"))
             :: (IIf (VLocal "v_cmp_not")
                 ((ILoad (TInt TI64) "v_9" (VGlobal "physvirt_offset") 8)
                  :: (IBinOp (TInt TI64) "v_sub19" OSub (VLocal "v_add7") (VLocal "v_9"))
                  :: (IUnaryOp (TPtr (TInt TI8)) "v_10" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub19"))
                  :: (ICall TVoid None (VGlobal "llvm.memset.p0i8.i64") [(VLocal "v_10"); (VInt (0)); (VInt (4096)); (VBool false)])
                  :: (IReturn (TInt TI64) (Some (VLocal "v_add7")))
                  :: nil)
                 ((ICall TVoid None (VGlobal "iasm_11") [ ])
                  :: nil))
             :: nil)) |}.

Definition f___vm_sysreg_save_user_state :=
    {| fname := "__vm_sysreg_save_user_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_tpidr_el0") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (17))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx1") (VLocal "v_0") 8)
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_tpidrro_el0") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx5" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (18))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx5") (VLocal "v_1") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_encrypt_buf :=
    {| fname := "el2_encrypt_buf";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_buf", (TPtr (TInt TI8)))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (20))]); (VLocal "v_vmid"); (VLocal "v_buf"); (VLocal "v_len")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_pfn_to_vm :=
    {| fname := "set_pfn_to_vm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gfn", (TInt TI64))
         :: ("v_pfn", (TInt TI64))
         :: ("v_pgnum", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp_not11" Ceq (VLocal "v_pgnum") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not11")
                 nil
                 ((IAssign (TInt TI64) "v_gfn_addr_014" (VLocal "v_gfn"))
                  :: (IAssign (TInt TI64) "v_pgnum_addr_013" (VLocal "v_pgnum"))
                  :: (IAssign (TInt TI64) "v_pfn_addr_012" (VLocal "v_pfn"))
                  :: (ILoop
                        ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn_addr_012")])
                         :: (IBinOp TBool "v_cmp1" Ceq (VLocal "v_call") (VInt (0)))
                         :: (IIf (VLocal "v_cmp1")
                             ((ICall TVoid None (VGlobal "set_pfn_owner") [(VLocal "v_pfn_addr_012"); (VLocal "v_vmid")])
                              :: (ICall TVoid None (VGlobal "clear_pfn_host") [(VLocal "v_pfn_addr_012")])
                              :: (ICall TVoid None (VGlobal "set_pfn_map") [(VLocal "v_pfn_addr_012"); (VLocal "v_gfn_addr_014")])
                              :: nil)
                             nil)
                         :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn_addr_012"); (VInt (0))])
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_pfn_addr_012") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_add2" OAdd (VLocal "v_gfn_addr_014") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_pgnum_addr_013") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_gfn_addr_014" (VLocal "v_add2"))
                              :: (IAssign (TInt TI64) "v_pgnum_addr_013" (VLocal "v_sub"))
                              :: (IAssign (TInt TI64) "v_pfn_addr_012" (VLocal "v_add"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_smmu_assign_page :=
    {| fname := "smmu_assign_page";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: ("v_gfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_smmu") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_pfn"))
             :: (IUnaryOp (TInt TI32) "v_conv1" (OTrunc (TInt TI32)) (VLocal "v_gfn"))
             :: (ICall TVoid None (VGlobal "assign_smmu") [(VLocal "v_call"); (VLocal "v_conv"); (VLocal "v_conv1")])
             :: (ICall TVoid None (VGlobal "release_lock_smmu") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_int_new_level :=
    {| fname := "get_int_new_level";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_level" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (2)); (VInt (4))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_level") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_vcpu_was_preempted :=
    {| fname := "get_vcpu_was_preempted";
       rettype := TBool;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_was_preempted" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (1))])
             :: (ILoad (TInt TI8) "v_0" (VLocal "v_was_preempted") 4)
             :: (IBinOp TBool "v_tobool" Cne (VLocal "v_0") (VInt (0)))
             :: (IReturn TBool (Some (VLocal "v_tobool")))
             :: nil)) |}.

Definition f_set_pfn_map :=
    {| fname := "set_pfn_map";
       rettype := TVoid;
       fargs :=
        (("v_pfn", (TInt TI64))
         :: ("v_gfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_s2_page_index") [(VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 nil
                 ((ICall TVoid None (VGlobal "set_s2_page_gfn") [(VLocal "v_call"); (VLocal "v_gfn")])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_pt_vttbr :=
    {| fname := "get_pt_vttbr";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_vmid") (VInt (18)))
             :: (IIf (VLocal "v_cmp")
                 ((IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (IGetElemPtr (TPtr (TInt TI64)) "v_vttbr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (0))])
                  :: (ILoad (TInt TI64) "v_0" (VLocal "v_vttbr") 8)
                  :: (IAssign (TInt TI64) "v_retval_0" (VLocal "v_0"))
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_ttbr0_el2") [ ])
                  :: (IAssign (TInt TI64) "v_retval_0" (VLocal "v_1"))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_task_pid_nr :=
    {| fname := "task_pid_nr";
       rettype := (TInt TI32);
       fargs :=
        (("v_tsk", (TPtr (TNamedStruct "struct.task_struct" 0)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IGetElemPtr (TPtr (TInt TI32)) "v_pid" (TPtr (TNamedStruct "struct.task_struct" 0)) (VLocal "v_tsk") [(VInt (0)); (VInt (59))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_pid") 16)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_vm_load_signature :=
    {| fname := "get_vm_load_signature";
       rettype := (TPtr (TInt TI8));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_arraydecay" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (4)); (VInt (0))])
             :: (IReturn (TPtr (TInt TI8)) (Some (VLocal "v_arraydecay")))
             :: nil)) |}.

Definition f_get_level_s2pt :=
    {| fname := "get_level_s2pt";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_pt") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_npt_level") [(VLocal "v_vmid"); (VLocal "v_addr")])
             :: (ICall TVoid None (VGlobal "release_lock_pt") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_set_pmd_next :=
    {| fname := "set_pmd_next";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pte_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (20))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pte_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1)))
             :: (IStore (TInt TI64) (VLocal "v_pte_used_pages") (VLocal "v_add") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_int_pc :=
    {| fname := "get_int_pc";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pc" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (3)); (VInt (0)); (VInt (0)); (VInt (2))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pc") 16)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_gen_vmid :=
    {| fname := "gen_vmid";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_core") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_next_vmid") [ ])
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_call") (VInt (33)))
             :: (IIf (VLocal "v_cmp")
                 ((IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_call") (VInt (1)))
                  :: (ICall TVoid None (VGlobal "set_next_vmid") [(VLocal "v_add")])
                  :: (IAssign (TInt TI32) "v_vmid_0" (VLocal "v_call"))
                  :: nil)
                 ((IAssign (TInt TI32) "v_vmid_0" (VInt (0)))
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_core") [ ])
             :: (IReturn (TInt TI32) (Some (VLocal "v_vmid_0")))
             :: nil)) |}.

Definition f_unmap_spt :=
    {| fname := "unmap_spt";
       rettype := (TInt TI64);
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_spt") [ ])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "walk_smmu_pt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_addr")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 nil
                 ((ICall TVoid None (VGlobal "set_smmu_pt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_addr"); (VInt (0))])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_spt") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f___kvm_timer_set_cntvoff :=
    {| fname := "__kvm_timer_set_cntvoff";
       rettype := TVoid;
       fargs :=
        (("v_0", (TInt TI32))
         :: ("v_1", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_init_npt :=
    {| fname := "init_npt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pt_vttbr") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI64) (Some "v_call1") (VGlobal "pool_start") [(VLocal "v_vmid")])
                  :: (IBinOp (TInt TI32) "v_and" OAnd (VLocal "v_vmid") (VInt (255)))
                  :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_and"))
                  :: (IBinOp (TInt TI64) "v_shl" OShl (VLocal "v_conv") (VInt (48)))
                  :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_call1") (VLocal "v_shl"))
                  :: (ICall TVoid None (VGlobal "set_pt_vttbr") [(VLocal "v_vmid"); (VLocal "v_or")])
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_next_remap_ptr :=
    {| fname := "set_next_remap_ptr";
       rettype := TVoid;
       fargs :=
        (("v_remap", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_last_remap_ptr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (23))])
             :: (IStore (TInt TI64) (VLocal "v_last_remap_ptr") (VLocal "v_remap") 16)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_stage2_spin_unlock :=
    {| fname := "stage2_spin_unlock";
       rettype := TVoid;
       fargs :=
        (("v_lock", (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "_arch_spin_unlock") [(VLocal "v_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_map_spt :=
    {| fname := "map_spt";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_spt") [ ])
             :: (ICall TVoid None (VGlobal "set_smmu_pt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_addr"); (VLocal "v_pte")])
             :: (ICall TVoid None (VGlobal "release_lock_spt") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_print_string :=
    {| fname := "print_string";
       rettype := TVoid;
       fargs :=
        (("v_input", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_console_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (13))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_console_lock")])
             :: (ILoad (TInt TI8) "v_0" (VLocal "v_input") 1)
             :: (IBinOp TBool "v_cmp_not8" Ceq (VLocal "v_0") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not8")
                 nil
                 ((IAssign (TInt TI8) "v_1" (VLocal "v_0"))
                  :: (IAssign (TPtr (TInt TI8)) "v_word_09" (VLocal "v_input"))
                  :: (ILoop
                        ((ICall TVoid None (VGlobal "senduart") [(VLocal "v_1")])
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr" (TPtr (TInt TI8)) (VLocal "v_word_09") [(VInt (1))])
                         :: (ILoad (TInt TI8) "v_2" (VLocal "v_incdec_ptr") 1)
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_2") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI8) "v_1" (VLocal "v_2"))
                              :: (IAssign (TPtr (TInt TI8)) "v_word_09" (VLocal "v_incdec_ptr"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_console_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_get_mmio_data :=
    {| fname := "host_get_mmio_data";
       rettype := (TInt TI64);
       fargs :=
        (("v_hsr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "host_dabt_get_rd") [(VLocal "v_hsr")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "get_host_regs") [(VLocal "v_call")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call1")))
             :: nil)) |}.

Definition f_get_vcpu_state :=
    {| fname := "get_vcpu_state";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_vcpuid"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_state" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (10)); (VLocal "v_idxprom1"); (VInt (2))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_state") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_el2_kvm_phys_addr_ioremap :=
    {| fname := "el2_kvm_phys_addr_ioremap";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gpa", (TInt TI64))
         :: ("v_pa", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (28))]); (VLocal "v_vmid"); (VLocal "v_gpa"); (VLocal "v_pa"); (VLocal "v_size")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_smmu_hyp_base :=
    {| fname := "get_smmu_hyp_base";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_hyp_base" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (25)); (VLocal "v_idxprom"); (VInt (13))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_hyp_base") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_check_pfn_to_vm :=
    {| fname := "check_pfn_to_vm";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gfn", (TInt TI64))
         :: ("v_pfn", (TInt TI64))
         :: ("v_pgnum", (TInt TI64))
         :: ("v_apfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp_not38" Ceq (VLocal "v_pgnum") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not38")
                 ((IAssign (TInt TI32) "v_ret_0_lcssa" (VInt (0)))
                  :: nil)
                 ((IAssign (TInt TI64) "v_gfn_addr_043" (VLocal "v_gfn"))
                  :: (IAssign (TInt TI64) "v_pfn_addr_041" (VLocal "v_pfn"))
                  :: (IAssign (TInt TI64) "v_pgnum_addr_040" (VLocal "v_pgnum"))
                  :: (IAssign (TInt TI32) "v_ret_039" (VInt (0)))
                  :: (ILoop
                        ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn_addr_041")])
                         :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_pfn_count") [(VLocal "v_pfn_addr_041")])
                         :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call") (VInt (0)))
                         :: (IIf (VLocal "v_cmp2")
                             ((IBinOp TBool "v_cmp3_not" Ceq (VLocal "v_call1") (VInt (0)))
                              :: (IIf (VLocal "v_cmp3_not")
                                  ((ICall TVoid None (VGlobal "set_pfn_owner") [(VLocal "v_pfn_addr_041"); (VLocal "v_vmid")])
                                   :: (ICall TVoid None (VGlobal "clear_pfn_host") [(VLocal "v_pfn_addr_041")])
                                   :: (ICall TVoid None (VGlobal "set_pfn_map") [(VLocal "v_pfn_addr_041"); (VLocal "v_gfn_addr_043")])
                                   :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_ret_039"))
                                   :: nil)
                                  ((ICall TVoid None (VGlobal "v_panic") [ ])
                                   :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_ret_039"))
                                   :: nil))
                              :: nil)
                             ((IBinOp TBool "v_cmp6" Ceq (VLocal "v_call") (VLocal "v_vmid"))
                              :: (IIf (VLocal "v_cmp6")
                                  ((ICall (TInt TI64) (Some "v_call8") (VGlobal "get_pfn_map") [(VLocal "v_pfn_addr_041")])
                                   :: (IBinOp TBool "v_cmp9" Ceq (VLocal "v_gfn_addr_043") (VLocal "v_call8"))
                                   :: (IIf (VLocal "v_cmp9")
                                       ((IBinOp TBool "v_cmp11" Ceq (VLocal "v_call1") (VInt (-1)))
                                        :: (IIf (VLocal "v_cmp11")
                                            ((ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn_addr_041"); (VInt (0))])
                                             :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_ret_039"))
                                             :: nil)
                                            ((IAssign (TInt TI32) "v_ret_2" (VInt (1)))
                                             :: nil))
                                        :: nil)
                                       ((ICall TVoid None (VGlobal "v_panic") [ ])
                                        :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_ret_039"))
                                        :: nil))
                                   :: nil)
                                  ((ICall TVoid None (VGlobal "v_panic") [ ])
                                   :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_ret_039"))
                                   :: nil))
                              :: nil))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_pgnum_addr_040") (VInt (-1)))
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_pfn_addr_041") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_add20" OAdd (VLocal "v_gfn_addr_043") (VInt (1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             ((IAssign (TInt TI32) "v_ret_0_lcssa" (VLocal "v_ret_2"))
                              :: IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_gfn_addr_043" (VLocal "v_add20"))
                              :: (IAssign (TInt TI64) "v_pfn_addr_041" (VLocal "v_add"))
                              :: (IAssign (TInt TI64) "v_pgnum_addr_040" (VLocal "v_sub"))
                              :: (IAssign (TInt TI32) "v_ret_039" (VLocal "v_ret_2"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_ret_0_lcssa")))
             :: nil)) |}.

Definition f_senduart :=
    {| fname := "senduart";
       rettype := TVoid;
       fargs :=
        (("v_word", (TInt TI8))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pl011_base" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (8))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pl011_base") 8)
             :: (ICall (TInt TI64) (Some "v_call14") (VGlobal "waituart") [ ])
             :: (IBinOp (TInt TI64) "v_and5" OAnd (VLocal "v_call14") (VInt (32)))
             :: (IBinOp TBool "v_tobool_not6" Ceq (VLocal "v_and5") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not6")
                 nil
                 ((ILoop
                        ((ICall TVoid None (VGlobal "cpu_relax") [ ])
                         :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "waituart") [ ])
                         :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call1") (VInt (32)))
                         :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_and") (VInt (0)))
                         :: (IIf (VLocal "v_tobool_not")
                             (IBreak
                              :: nil)
                             (IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (ICall TVoid None (VGlobal "iasm_14") [(VLocal "v_word"); (VLocal "v_0")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_is_smmu_range :=
    {| fname := "is_smmu_range";
       rettype := (TInt TI64);
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_smmu_num") [ ])
             :: (IBinOp TBool "v_cmp17_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp17_not")
                 ((IAssign (TInt TI64) "v_res_0_lcssa" (VInt (-1)))
                  :: nil)
                 ((IUnaryOp (TInt TI64) "v_wide_trip_count" (OZExt (TInt TI64)) (VLocal "v_call"))
                  :: (IAssign (TInt TI64) "v_indvars_iv" (VInt (0)))
                  :: (IAssign (TInt TI64) "v_res_018" (VInt (-1)))
                  :: (ILoop
                        ((IUnaryOp (TInt TI32) "v_0" (OTrunc (TInt TI32)) (VLocal "v_indvars_iv"))
                         :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "get_smmu_base") [(VLocal "v_0")])
                         :: (IUnaryOp (TInt TI32) "v_1" (OTrunc (TInt TI32)) (VLocal "v_indvars_iv"))
                         :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_smmu_size") [(VLocal "v_1")])
                         :: (IBinOp TBool "v_cmp3_not" Cule (VLocal "v_call1") (VLocal "v_addr"))
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call2") (VLocal "v_call1"))
                         :: (IBinOp TBool "v_cmp4" Cugt (VLocal "v_add") (VLocal "v_addr"))
                         :: (ISelect TBool "v_or_cond" (VLocal "v_cmp3_not") (VLocal "v_cmp4") (VBool false))
                         :: (ISelect (TInt TI64) "v_res_1" (VLocal "v_or_cond") (VLocal "v_indvars_iv") (VLocal "v_res_018"))
                         :: (IBinOp (TInt TI64) "v_indvars_iv_next" OAdd (VLocal "v_indvars_iv") (VInt (1)))
                         :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_indvars_iv_next") (VLocal "v_wide_trip_count"))
                         :: (IIf (VLocal "v_exitcond_not")
                             ((IAssign (TInt TI64) "v_res_0_lcssa" (VLocal "v_res_1"))
                              :: IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_indvars_iv" (VLocal "v_indvars_iv_next"))
                              :: (IAssign (TInt TI64) "v_res_018" (VLocal "v_res_1"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_res_0_lcssa")))
             :: nil)) |}.

Definition f___vm_sysreg_save_el2_return_state :=
    {| fname := "__vm_sysreg_save_el2_return_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_elr_el2") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (32))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx1") (VLocal "v_0") 16)
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_spsr_el2") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx5" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (33))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx5") (VLocal "v_1") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_clear_phys_mem :=
    {| fname := "clear_phys_mem";
       rettype := TVoid;
       fargs :=
        (("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_shl" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "__kern_hyp_va") [(VLocal "v_shl")])
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_call"))
             :: (ICall TVoid None (VGlobal "el2_memset") [(VLocal "v_0"); (VInt (0)); (VInt (4096))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_sys_reg_desc_val :=
    {| fname := "get_sys_reg_desc_val";
       rettype := (TInt TI64);
       fargs :=
        (("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_val" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (20)); (VLocal "v_idxprom"); (VInt (6))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_val") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___sysreg32_save_state :=
    {| fname := "__sysreg32_save_state";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_set_vm_next_load_idx :=
    {| fname := "set_vm_next_load_idx";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_load_info_cnt" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (2))])
             :: (IStore (TInt TI32) (VLocal "v_load_info_cnt") (VLocal "v_load_idx") 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_shadow_ctxt :=
    {| fname := "set_shadow_ctxt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_value", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_index") (VInt (41)))
             :: (IIf (VLocal "v_cmp")
                 ((IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
                  :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_index"))
                  :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VLocal "v_idxprom1")])
                  :: (IStore (TInt TI64) (VLocal "v_arrayidx2") (VLocal "v_value") 8)
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (46))])
                      ((IUnaryOp (TInt TI64) "v_idxprom36" (OSExt (TInt TI64)) (VLocal "v_add"))
                       :: (IGetElemPtr (TPtr (TInt TI64)) "v_flags" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom36"); (VInt (6))])
                       :: (IStore (TInt TI64) (VLocal "v_flags") (VLocal "v_value") 16)
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (41))])
                           ((IUnaryOp (TInt TI64) "v_idxprom6" (OSExt (TInt TI64)) (VLocal "v_add"))
                            :: (IGetElemPtr (TPtr (TInt TI64)) "v_far_el2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom6"); (VInt (1))])
                            :: (IStore (TInt TI64) (VLocal "v_far_el2") (VLocal "v_value") 8)
                            :: nil)
                           ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (42))])
                                ((IUnaryOp (TInt TI64) "v_idxprom12" (OSExt (TInt TI64)) (VLocal "v_add"))
                                 :: (IGetElemPtr (TPtr (TInt TI64)) "v_hpfar" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom12"); (VInt (2))])
                                 :: (IStore (TInt TI64) (VLocal "v_hpfar") (VLocal "v_value") 16)
                                 :: nil)
                                ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (43))])
                                     ((IUnaryOp (TInt TI64) "v_idxprom18" (OSExt (TInt TI64)) (VLocal "v_add"))
                                      :: (IGetElemPtr (TPtr (TInt TI64)) "v_hcr_el2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom18"); (VInt (3))])
                                      :: (IStore (TInt TI64) (VLocal "v_hcr_el2") (VLocal "v_value") 8)
                                      :: nil)
                                     ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (44))])
                                          ((IUnaryOp (TInt TI64) "v_idxprom24" (OSExt (TInt TI64)) (VLocal "v_add"))
                                           :: (IGetElemPtr (TPtr (TInt TI64)) "v_ec" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom24"); (VInt (4))])
                                           :: (IStore (TInt TI64) (VLocal "v_ec") (VLocal "v_value") 16)
                                           :: nil)
                                          ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (45))])
                                               ((IUnaryOp (TInt TI64) "v_idxprom30" (OSExt (TInt TI64)) (VLocal "v_add"))
                                                :: (IGetElemPtr (TPtr (TInt TI64)) "v_dirty" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom30"); (VInt (5))])
                                                :: (IStore (TInt TI64) (VLocal "v_dirty") (VLocal "v_value") 8)
                                                :: nil)
                                               ((IBinOp (TInt TI32) "v_sub" OAdd (VLocal "v_index") (VInt (-47)))
                                                :: (IUnaryOp (TInt TI64) "v_idxprom42" (OSExt (TInt TI64)) (VLocal "v_add"))
                                                :: (IUnaryOp (TInt TI64) "v_idxprom44" (OZExt (TInt TI64)) (VLocal "v_sub"))
                                                :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx45" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom42"); (VInt (7)); (VInt (0)); (VLocal "v_idxprom44")])
                                                :: (IStore (TInt TI64) (VLocal "v_arrayidx45") (VLocal "v_value") 8)
                                                :: nil))
                                           :: nil))
                                      :: nil))
                                 :: nil))
                            :: nil))
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_cpu_relax :=
    {| fname := "cpu_relax";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_9") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___el2_arm_lpae_clear :=
    {| fname := "__el2_arm_lpae_clear";
       rettype := TVoid;
       fargs :=
        (("v_iova", (TInt TI64))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_smmu") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (ICall TVoid None (VGlobal "clear_smmu") [(VLocal "v_call"); (VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova")])
             :: (ICall TVoid None (VGlobal "release_lock_smmu") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___vm_sysreg_save_common_state :=
    {| fname := "__vm_sysreg_save_common_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_mdscr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (23))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx1") (VLocal "v_0") 8)
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_sp_el0") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx4" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (31))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx4") (VLocal "v_1") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_mem_region_index :=
    {| fname := "get_mem_region_index";
       rettype := (TInt TI64);
       fargs :=
        (("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_index1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (0))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_index1") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_shadow_ctxt :=
    {| fname := "get_shadow_ctxt";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_index") (VInt (41)))
             :: (IIf (VLocal "v_cmp")
                 ((IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
                  :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_index"))
                  :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VLocal "v_idxprom1")])
                  :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_arrayidx2"))
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (45))])
                      ((IUnaryOp (TInt TI64) "v_idxprom30" (OSExt (TInt TI64)) (VLocal "v_add"))
                       :: (IGetElemPtr (TPtr (TInt TI64)) "v_dirty" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom30"); (VInt (5))])
                       :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_dirty"))
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (41))])
                           ((IUnaryOp (TInt TI64) "v_idxprom6" (OSExt (TInt TI64)) (VLocal "v_add"))
                            :: (IGetElemPtr (TPtr (TInt TI64)) "v_far_el2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom6"); (VInt (1))])
                            :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_far_el2"))
                            :: nil)
                           ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (42))])
                                ((IUnaryOp (TInt TI64) "v_idxprom12" (OSExt (TInt TI64)) (VLocal "v_add"))
                                 :: (IGetElemPtr (TPtr (TInt TI64)) "v_hpfar" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom12"); (VInt (2))])
                                 :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_hpfar"))
                                 :: nil)
                                ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (43))])
                                     ((IUnaryOp (TInt TI64) "v_idxprom18" (OSExt (TInt TI64)) (VLocal "v_add"))
                                      :: (IGetElemPtr (TPtr (TInt TI64)) "v_hcr_el2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom18"); (VInt (3))])
                                      :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_hcr_el2"))
                                      :: nil)
                                     ((IIf (VExpr TBool Ceq [(VLocal "v_index"); (VInt (44))])
                                          ((IUnaryOp (TInt TI64) "v_idxprom24" (OSExt (TInt TI64)) (VLocal "v_add"))
                                           :: (IGetElemPtr (TPtr (TInt TI64)) "v_ec" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom24"); (VInt (4))])
                                           :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_ec"))
                                           :: nil)
                                          ((IUnaryOp (TInt TI64) "v_idxprom36" (OSExt (TInt TI64)) (VLocal "v_add"))
                                           :: (IGetElemPtr (TPtr (TInt TI64)) "v_flags" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom36"); (VInt (6))])
                                           :: (IAssign (TPtr (TInt TI64)) "v_val_0_in" (VLocal "v_flags"))
                                           :: nil))
                                      :: nil))
                                 :: nil))
                            :: nil))
                       :: nil))
                  :: nil))
             :: (ILoad (TInt TI64) "v_val_0" (VLocal "v_val_0_in") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_val_0")))
             :: nil)) |}.

Definition f_llvm_memcpy_p0i8_p0i8_i64 :=
    {| fname := "llvm.memcpy.p0i8.p0i8.i64";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TInt TI8)))
         :: ("v_1", (TPtr (TInt TI8)))
         :: ("v_2", (TInt TI64))
         :: ("v_3", TBool)
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f___kvm_flush_vm_context :=
    {| fname := "__kvm_flush_vm_context";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := None |}.

Definition f_map_io :=
    {| fname := "map_io";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gpa", (TInt TI64))
         :: ("v_pa", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "__kvm_phys_addr_ioremap") [(VLocal "v_vmid"); (VLocal "v_gpa"); (VLocal "v_pa")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_int_pstate :=
    {| fname := "get_int_pstate";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pstate" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (3)); (VInt (0)); (VInt (0)); (VInt (3))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pstate") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_init_smmu_pt :=
    {| fname := "init_smmu_pt";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "smmu_pt_clear") [(VLocal "v_cbndx"); (VLocal "v_num")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_vm_remap_addr :=
    {| fname := "get_vm_remap_addr";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_el2_remap_addr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (2))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_el2_remap_addr") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_npt_level :=
    {| fname := "get_npt_level";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pt_vttbr") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_pgd") [(VLocal "v_vmid"); (VLocal "v_call"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_pud") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "walk_pmd") [(VLocal "v_vmid"); (VLocal "v_call2"); (VLocal "v_addr"); (VInt (0))])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call3") (VInt (3)))
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_and") (VInt (3)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI64) (Some "v_call4") (VGlobal "walk_pte") [(VLocal "v_vmid"); (VLocal "v_call3"); (VLocal "v_addr")])
                  :: (IAssign (TInt TI64) "v_call3_sink" (VLocal "v_call4"))
                  :: (IAssign (TInt TI32) "v__sink" (VInt (3)))
                  :: nil)
                 ((IAssign (TInt TI64) "v_call3_sink" (VLocal "v_call3"))
                  :: (IAssign (TInt TI32) "v__sink" (VInt (2)))
                  :: nil))
             :: (IBinOp (TInt TI64) "v_and11" OAnd (VLocal "v_call3_sink") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp12" Ceq (VLocal "v_and11") (VInt (0)))
             :: (ISelect (TInt TI32) "v__32" (VLocal "v_cmp12") (VInt (0)) (VLocal "v__sink"))
             :: (IReturn (TInt TI32) (Some (VLocal "v__32")))
             :: nil)) |}.

Definition f_dump_output :=
    {| fname := "dump_output";
       rettype := TVoid;
       fargs :=
        (("v_str", (TPtr (TInt TI8)))
         :: ("v_out", (TPtr (TInt TI8)))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp7" Csgt (VLocal "v_len") (VInt (0)))
             :: (IIf (VLocal "v_cmp7")
                 ((IUnaryOp (TInt TI64) "v_wide_trip_count" (OZExt (TInt TI64)) (VLocal "v_len"))
                  :: (IAssign (TInt TI64) "v_indvars_iv" (VInt (0)))
                  :: (ILoop
                        ((IGetElemPtr (TPtr (TInt TI8)) "v_arrayidx" (TPtr (TInt TI8)) (VLocal "v_out") [(VLocal "v_indvars_iv")])
                         :: (ILoad (TInt TI8) "v_0" (VLocal "v_arrayidx") 1)
                         :: (IUnaryOp (TInt TI32) "v_conv" (OZExt (TInt TI32)) (VLocal "v_0"))
                         :: (IBinOp (TInt TI64) "v_indvars_iv_next" OAdd (VLocal "v_indvars_iv") (VInt (1)))
                         :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_indvars_iv_next") (VLocal "v_wide_trip_count"))
                         :: (IIf (VLocal "v_exitcond_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_indvars_iv" (VLocal "v_indvars_iv_next"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_sync_dirty_to_shadow :=
    {| fname := "sync_dirty_to_shadow";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IAssign (TInt TI32) "v_i_016" (VInt (0)))
             :: (ILoop
                   ((IBinOp (TInt TI32) "v_shl" OShl (VInt (1)) (VLocal "v_i_016"))
                    :: (IBinOp (TInt TI32) "v_and15" OAnd (VLocal "v_shl") (VLocal "v_call"))
                    :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_and15") (VInt (0)))
                    :: (IIf (VLocal "v_tobool_not")
                        nil
                        ((ICall (TInt TI64) (Some "v_call3") (VGlobal "get_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_i_016")])
                         :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_i_016"); (VLocal "v_call3")])
                         :: nil))
                    :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_i_016") (VInt (1)))
                    :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_add") (VInt (31)))
                    :: (IIf (VLocal "v_exitcond_not")
                        ((IReturn TVoid None)
                         :: nil)
                        ((IAssign (TInt TI32) "v_i_016" (VLocal "v_add"))
                         :: nil))
                    :: IContinue
                    :: nil))
             :: nil)) |}.

Definition f_get_pfn_owner :=
    {| fname := "get_pfn_owner";
       rettype := (TInt TI32);
       fargs :=
        (("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_s2_page_index") [(VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI32) "v_ret_0" (VInt (-1)))
                  :: nil)
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_s2_page_vmid") [(VLocal "v_call")])
                  :: (IAssign (TInt TI32) "v_ret_0" (VLocal "v_call1"))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_get_smmu_pmd_next :=
    {| fname := "get_smmu_pmd_next";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (36))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_smmu_page_pool_start") 16)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_pmd_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (38))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_smmu_pmd_used_pages") 16)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_1") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1048576)))
             :: (IBinOp (TInt TI64) "v_add1" OAdd (VLocal "v_add") (VLocal "v_mul"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add1")))
             :: nil)) |}.

Definition f_activate_traps_vhe_load :=
    {| fname := "activate_traps_vhe_load";
       rettype := TVoid;
       fargs :=
        (("v_vcpu", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IReturn TVoid None)
             :: nil)) |}.

Definition f___raw_readq :=
    {| fname := "__raw_readq";
       rettype := (TInt TI64);
       fargs :=
        (("v_addr", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_3_ldr") [(VLocal "v_addr")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_set_vm_load_signature :=
    {| fname := "set_vm_load_signature";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_arraydecay" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (4)); (VInt (0))])
             :: (ICall (TInt TI32) (Some "v_call3") (VGlobal "el2_hex2bin") [(VLocal "v_arraydecay"); (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 129))) [(VGlobal ".str.3"); (VInt (0)); (VInt (0))]); (VInt (64))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_init_s2pt :=
    {| fname := "init_s2pt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_pt") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "init_npt") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "release_lock_pt") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_stage2_spin_lock :=
    {| fname := "stage2_spin_lock";
       rettype := TVoid;
       fargs :=
        (("v_lock", (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "_arch_spin_lock") [(VLocal "v_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___kvm_phys_addr_ioremap :=
    {| fname := "__kvm_phys_addr_ioremap";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gpa", (TInt TI64))
         :: ("v_pa", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_pa") (VInt (12)))
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_shr")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp")
                 ((IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_pa") (VInt (18014398509483975)))
                  :: (ICall TVoid None (VGlobal "mmap_s2pt") [(VLocal "v_vmid"); (VLocal "v_gpa"); (VInt (3)); (VLocal "v_add")])
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_handle_smmu_global_access :=
    {| fname := "handle_smmu_global_access";
       rettype := (TInt TI32);
       fargs :=
        (("v_hsr", (TInt TI32))
         :: ("v_offset", (TInt TI64))
         :: ("v_smmu_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "host_get_mmio_data") [(VLocal "v_hsr")])
             :: (IBinOp TBool "v_cmp1" Cult (VLocal "v_offset") (VInt (4096)))
             :: (IIf (VLocal "v_cmp1")
                 ((IIf (VExpr TBool Ceq [(VLocal "v_offset"); (VInt (8))])
                      ((IBinOp (TInt TI64) "v_and9" OAnd (VLocal "v_call") (VInt (255)))
                       :: (IBinOp TBool "v_cmp10" Ceq (VLocal "v_and9") (VInt (0)))
                       :: (IUnaryOp (TInt TI32) "v__60" (OZExt (TInt TI32)) (VLocal "v_cmp10"))
                       :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v__60"))
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_offset"); (VInt (0))])
                           ((IUnaryOp (TInt TI32) "v_0" (OTrunc (TInt TI32)) (VLocal "v_call"))
                            :: (IBinOp (TInt TI32) "v_1" OLshr (VLocal "v_0") (VInt (21)))
                            :: (IBinOp (TInt TI32) "v_2" OAnd (VLocal "v_1") (VInt (1)))
                            :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_2"))
                            :: nil)
                           ((IAssign (TInt TI32) "v_ret_2" (VInt (1)))
                            :: nil))
                       :: nil))
                  :: nil)
                 ((IBinOp TBool "v_cmp20" Cult (VLocal "v_offset") (VInt (6144)))
                  :: (IIf (VLocal "v_cmp20")
                      ((IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_offset") (VInt (17179865088)))
                       :: (IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_sub") (VInt (2)))
                       :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_div"))
                       :: (ICall (TInt TI32) (Some "v_call22") (VGlobal "get_smmu_cfg_vmid") [(VLocal "v_conv"); (VLocal "v_smmu_index")])
                       :: (IBinOp TBool "v_cmp26" Ceq (VLocal "v_call22") (VInt (0)))
                       :: (IIf (VLocal "v_cmp26")
                           ((IAssign (TInt TI32) "v_ret_2" (VInt (1)))
                            :: nil)
                           ((IBinOp (TInt TI64) "v_and25" OAnd (VLocal "v_call") (VInt (255)))
                            :: (IUnaryOp (TInt TI64) "v_conv23" (OZExt (TInt TI64)) (VLocal "v_call22"))
                            :: (IBinOp TBool "v_cmp30" Cult (VLocal "v_call") (VInt (65536)))
                            :: (IBinOp TBool "v_cmp33" Ceq (VLocal "v_and25") (VLocal "v_conv23"))
                            :: (ISelect TBool "v_or_cond" (VLocal "v_cmp30") (VLocal "v_cmp33") (VBool false))
                            :: (IUnaryOp (TInt TI32) "v_spec_select" (OZExt (TInt TI32)) (VLocal "v_or_cond"))
                            :: (IAssign (TInt TI32) "v_ret_2" (VLocal "v_spec_select"))
                            :: nil))
                       :: nil)
                      ((IAssign (TInt TI32) "v_ret_2" (VInt (1)))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_ret_2")))
             :: nil)) |}.

Definition f_hypsec_register_kvm :=
    {| fname := "hypsec_register_kvm";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (13))])])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f___deactivate_traps :=
    {| fname := "__deactivate_traps";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "__deactivate_traps_nvhe") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_smmu_cfg_hw_ttbr :=
    {| fname := "get_smmu_cfg_hw_ttbr";
       rettype := (TInt TI64);
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_num") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_cbndx"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_hw_ttbr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (24)); (VLocal "v_idxprom"); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_hw_ttbr") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___fpsimd_save_state :=
    {| fname := "__fpsimd_save_state";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_emulate_mmio :=
    {| fname := "emulate_mmio";
       rettype := (TInt TI64);
       fargs :=
        (("v_addr", (TInt TI64))
         :: ("v_hsr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_smmu") [ ])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "is_smmu_range") [(VLocal "v_addr")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 nil
                 ((ICall TVoid None (VGlobal "handle_host_mmio") [(VLocal "v_call"); (VLocal "v_hsr")])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_smmu") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_get_vcpu_host_cpu_context :=
    {| fname := "get_vcpu_host_cpu_context";
       rettype := (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760))) "v_host_cpu_context" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (14))])
             :: (ILoad (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) "v_0" (VLocal "v_host_cpu_context") 8)
             :: (IUnaryOp (TInt TI64) "v_1" OPtrToInt (VLocal "v_0"))
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "__kern_hyp_va") [(VLocal "v_1")])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) "v_2" (OIntToPtr (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760))) (VLocal "v_call1"))
             :: (IReturn (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) (Some (VLocal "v_2")))
             :: nil)) |}.

Definition f_set_vcpu_inactive :=
    {| fname := "set_vcpu_inactive";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (4)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2))])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_mmap_s2pt :=
    {| fname := "mmap_s2pt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_level", (TInt TI32))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_pt") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "set_npt") [(VLocal "v_vmid"); (VLocal "v_addr"); (VLocal "v_level"); (VLocal "v_pte")])
             :: (ICall TVoid None (VGlobal "release_lock_pt") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___activate_traps_common :=
    {| fname := "__activate_traps_common";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "set_pmselr_el0") [ ])
             :: (ICall TVoid None (VGlobal "set_pmuserenr_el0") [(VInt (15))])
             :: (ICall TVoid None (VGlobal "set_mdcr_el2") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_smmu_map_page :=
    {| fname := "smmu_map_page";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_iova", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_smmu") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (ICall TVoid None (VGlobal "map_smmu") [(VLocal "v_call"); (VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova"); (VLocal "v_pte")])
             :: (ICall TVoid None (VGlobal "release_lock_smmu") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_smmu_pmd_next :=
    {| fname := "set_smmu_pmd_next";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_pmd_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (38))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_smmu_pmd_used_pages") 16)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1)))
             :: (IStore (TInt TI64) (VLocal "v_smmu_pmd_used_pages") (VLocal "v_add") 16)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_v_el2_arm_lpae_map :=
    {| fname := "v_el2_arm_lpae_map";
       rettype := TVoid;
       fargs :=
        (("v_iova", (TInt TI64))
         :: ("v_paddr", (TInt TI64))
         :: ("v_prot", (TInt TI64))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_paddr") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_div1" OLshr (VLocal "v_iova") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "smmu_init_pte") [(VLocal "v_prot"); (VLocal "v_paddr")])
             :: (ICall TVoid None (VGlobal "smmu_assign_page") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_div"); (VLocal "v_div1")])
             :: (ICall TVoid None (VGlobal "smmu_map_page") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova"); (VLocal "v_call")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_hypsec_vmid_to_kvm :=
    {| fname := "hypsec_vmid_to_kvm";
       rettype := (TPtr (TNamedStruct "struct.kvm" 8824));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_call") VNull)
             :: (IIf (VLocal "v_tobool_not")
                 ((ICall TVoid None (VGlobal "__hyp_panic") [ ])
                  :: nil)
                 ((IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.kvm" 8824)) "v_arrayidx" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom")])
                  :: (IReturn (TPtr (TNamedStruct "struct.kvm" 8824)) (Some (VLocal "v_arrayidx")))
                  :: nil))
             :: nil)) |}.

Definition f_release_lock_vm :=
    {| fname := "release_lock_vm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_vm_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (8))])
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_vm_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_inc_exe :=
    {| fname := "set_vm_inc_exe";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_inc_exe", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp TBool "v_tobool" Cne (VLocal "v_inc_exe") (VInt (0)))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_inc_exe1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (4))])
             :: (IUnaryOp (TInt TI8) "v_frombool" (OZExt (TInt TI8)) (VLocal "v_tobool"))
             :: (IStore (TInt TI8) (VLocal "v_inc_exe1") (VLocal "v_frombool") 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_hcr_el2 :=
    {| fname := "set_hcr_el2";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_set_hcr_el2") [(VLocal "v_val")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_handle_smmu_write :=
    {| fname := "handle_smmu_write";
       rettype := TVoid;
       fargs :=
        (("v_hsr", (TInt TI32))
         :: ("v_fault_ipa", (TInt TI64))
         :: ("v_len", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_far_el2") [ ])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_0") (VInt (65535)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_size") [(VLocal "v_index")])
             :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_call") (VInt (1)))
             :: (IBinOp TBool "v_cmp" Cult (VLocal "v_and") (VLocal "v_shr"))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "handle_smmu_global_access") [(VLocal "v_hsr"); (VLocal "v_and"); (VLocal "v_index")])
                  :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call1") (VInt (0)))
                  :: (IIf (VLocal "v_cmp2")
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil)
                      ((ICall TVoid None (VGlobal "__handle_smmu_write") [(VLocal "v_hsr"); (VLocal "v_fault_ipa"); (VLocal "v_len"); (VInt (0)); (VInt (0))])
                       :: nil))
                  :: nil)
                 ((ICall (TInt TI32) (Some "v_call5") (VGlobal "handle_smmu_cb_access") [(VLocal "v_and")])
                  :: (IIf (VExpr TBool Ceq [(VLocal "v_call5"); (VInt (3))])
                      ((ICall (TInt TI64) (Some "v_call20") (VGlobal "host_get_mmio_data") [(VLocal "v_hsr")])
                       :: (ICall TVoid None (VGlobal "__handle_smmu_write") [(VLocal "v_hsr"); (VLocal "v_fault_ipa"); (VLocal "v_len"); (VInt (0)); (VInt (0))])
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_call5"); (VInt (0))])
                           ((ICall TVoid None (VGlobal "v_panic") [ ])
                            :: nil)
                           ((IIf (VExpr TBool Ceq [(VLocal "v_call5"); (VInt (2))])
                                ((ICall (TInt TI64) (Some "v_call11") (VGlobal "smmu_get_cbndx") [(VLocal "v_and")])
                                 :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call11"))
                                 :: (ICall (TInt TI64) (Some "v_call12") (VGlobal "get_smmu_cfg_hw_ttbr") [(VLocal "v_conv"); (VLocal "v_index")])
                                 :: (ICall (TInt TI64) (Some "v_call13") (VGlobal "host_get_mmio_data") [(VLocal "v_hsr")])
                                 :: (ICall TVoid None (VGlobal "__handle_smmu_write") [(VLocal "v_hsr"); (VLocal "v_fault_ipa"); (VLocal "v_len"); (VLocal "v_call12"); (VInt (1))])
                                 :: (IUnaryOp (TInt TI64) "v_conv14" (OZExt (TInt TI64)) (VLocal "v_index"))
                                 :: nil)
                                ((ICall TVoid None (VGlobal "__handle_smmu_write") [(VLocal "v_hsr"); (VLocal "v_fault_ipa"); (VLocal "v_len"); (VInt (0)); (VInt (0))])
                                 :: nil))
                            :: nil))
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_walk_smmu_pgd :=
    {| fname := "walk_smmu_pgd";
       rettype := (TInt TI64);
       fargs :=
        (("v_ttbr", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_alloc", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_ttbr") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (27)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (8184)))
                  :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "smmu_pt_load") [(VLocal "v_add")])
                  :: (IBinOp (TInt TI64) "v_and4" OAnd (VLocal "v_call") (VInt (281474976706560)))
                  :: (IBinOp TBool "v_cmp5" Ceq (VLocal "v_and4") (VInt (0)))
                  :: (IBinOp TBool "v_cmp6" Ceq (VLocal "v_alloc") (VInt (1)))
                  :: (IBinOp TBool "v_or_cond" OAnd (VLocal "v_cmp6") (VLocal "v_cmp5"))
                  :: (IIf (VLocal "v_or_cond")
                      ((ICall (TInt TI64) (Some "v_call8") (VGlobal "alloc_smmu_pgd_page") [ ])
                       :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_call8") (VInt (3)))
                       :: (ICall TVoid None (VGlobal "smmu_pt_store") [(VLocal "v_add"); (VLocal "v_or")])
                       :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_or"))
                       :: nil)
                      ((IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f___kern_hyp_va :=
    {| fname := "__kern_hyp_va";
       rettype := (TInt TI64);
       fargs :=
        (("v_v", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_2") [(VLocal "v_v")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_smmu_pmd_end :=
    {| fname := "smmu_pmd_end";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (36))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_smmu_page_pool_start") 16)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (16777216)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f_hypsec_alloc_vcpu :=
    {| fname := "hypsec_alloc_vcpu";
       rettype := (TPtr (TNamedStruct "struct.kvm_vcpu" 9056));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (IBinOp TBool "v_cmp" Cugt (VLocal "v_vmid") (VInt (17)))
             :: (IBinOp TBool "v_cmp3" Csgt (VLocal "v_vcpu_id") (VInt (3)))
             :: (IBinOp TBool "v_or_cond" OOr (VLocal "v_cmp") (VLocal "v_cmp3"))
             :: (IIf (VLocal "v_or_cond")
                 ((ICall TVoid None (VGlobal "iasm_11") [ ])
                  :: nil)
                 ((ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
                  :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
                  :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
                  :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_2"))
                  :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
                  :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "shared_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
                  :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
                  :: (IBinOp (TInt TI32) "v_add9" OAdd (VLocal "v_mul") (VLocal "v_vcpu_id"))
                  :: (IGetElemPtr (TPtr (TInt TI8)) "v_vcpu_pool" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (158832))])
                  :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.kvm_vcpu" 9056) 72)) "v_4" (OBitCast (TPtr (TArray (TNamedStruct "struct.kvm_vcpu" 9056) 72))) (VLocal "v_vcpu_pool"))
                  :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add9"))
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) "v_arrayidx" (TPtr (TArray (TNamedStruct "struct.kvm_vcpu" 9056) 72)) (VLocal "v_4") [(VInt (0)); (VLocal "v_idxprom")])
                  :: (IReturn (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (Some (VLocal "v_arrayidx")))
                  :: nil))
             :: nil)) |}.

Definition f___vm_sysreg_save_el1_state :=
    {| fname := "__vm_sysreg_save_el1_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_vmpidr_el2") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (1))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx1") (VLocal "v_0") 8)
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_csselr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx5" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (2))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx5") (VLocal "v_1") 8)
             :: (ICall (TInt TI64) (Some "v_2") (VGlobal "iasm_get_sctlr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx8" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (3))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx8") (VLocal "v_2") 8)
             :: (ICall (TInt TI64) (Some "v_3") (VGlobal "iasm_get_actlr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx12" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (4))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx12") (VLocal "v_3") 8)
             :: (ICall (TInt TI64) (Some "v_4") (VGlobal "iasm_get_cpacr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx16" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (5))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx16") (VLocal "v_4") 8)
             :: (ICall (TInt TI64) (Some "v_5") (VGlobal "iasm_get_ttbr0_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx20" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (7))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx20") (VLocal "v_5") 8)
             :: (ICall (TInt TI64) (Some "v_6") (VGlobal "iasm_get_ttbr1_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx24" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (8))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx24") (VLocal "v_6") 8)
             :: (ICall (TInt TI64) (Some "v_7") (VGlobal "iasm_get_tcr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx28" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (9))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx28") (VLocal "v_7") 8)
             :: (ICall (TInt TI64) (Some "v_8") (VGlobal "iasm_get_esr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx32" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (10))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx32") (VLocal "v_8") 8)
             :: (ICall (TInt TI64) (Some "v_9") (VGlobal "iasm_get_afsr0_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx36" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (11))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx36") (VLocal "v_9") 8)
             :: (ICall (TInt TI64) (Some "v_10") (VGlobal "iasm_get_afsr1_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx40" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (12))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx40") (VLocal "v_10") 8)
             :: (ICall (TInt TI64) (Some "v_11") (VGlobal "iasm_get_far_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx44" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (13))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx44") (VLocal "v_11") 8)
             :: (ICall (TInt TI64) (Some "v_12") (VGlobal "iasm_get_mair_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx48" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (14))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx48") (VLocal "v_12") 8)
             :: (ICall (TInt TI64) (Some "v_13") (VGlobal "iasm_get_vbar_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx52" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (15))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx52") (VLocal "v_13") 8)
             :: (ICall (TInt TI64) (Some "v_14") (VGlobal "iasm_get_contextidr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx56" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (16))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx56") (VLocal "v_14") 8)
             :: (ICall (TInt TI64) (Some "v_15") (VGlobal "iasm_get_amair_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx60" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (20))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx60") (VLocal "v_15") 8)
             :: (ICall (TInt TI64) (Some "v_16") (VGlobal "iasm_get_cntkctl_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx64" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (21))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx64") (VLocal "v_16") 8)
             :: (ICall (TInt TI64) (Some "v_17") (VGlobal "iasm_get_par_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx68" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (22))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx68") (VLocal "v_17") 8)
             :: (ICall (TInt TI64) (Some "v_18") (VGlobal "iasm_get_tpidr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx72" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (19))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx72") (VLocal "v_18") 8)
             :: (ICall (TInt TI64) (Some "v_19") (VGlobal "iasm_get_sp_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx75" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (34))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx75") (VLocal "v_19") 16)
             :: (ICall (TInt TI64) (Some "v_20") (VGlobal "iasm_get_elr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx79" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (35))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx79") (VLocal "v_20") 8)
             :: (ICall (TInt TI64) (Some "v_21") (VGlobal "iasm_get_spsr_el1") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx83" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (36))])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx83") (VLocal "v_21") 16)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_kvm_vcpu_run_vhe :=
    {| fname := "kvm_vcpu_run_vhe";
       rettype := (TInt TI32);
       fargs :=
        (("v_vcpu", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IReturn (TInt TI32) (Some (VInt (0))))
             :: nil)) |}.

Definition f_get_far_el2 :=
    {| fname := "get_far_el2";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_far_el2") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_pmd_next :=
    {| fname := "get_pmd_next";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pte_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (20))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_pte_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_1") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (2097152)))
             :: (IBinOp (TInt TI64) "v_add4" OAdd (VLocal "v_add") (VLocal "v_mul"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add4")))
             :: nil)) |}.

Definition f_acquire_lock_core :=
    {| fname := "acquire_lock_core";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_abs_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (11))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_abs_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_clear_pfn_host :=
    {| fname := "clear_pfn_host";
       rettype := TVoid;
       fargs :=
        (("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_pt") [(VInt (0))])
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "walk_npt") [(VInt (0)); (VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 nil
                 ((ICall TVoid None (VGlobal "set_npt") [(VInt (0)); (VLocal "v_mul"); (VInt (3)); (VInt (144115188075855872))])
                  :: (ICall TVoid None (VGlobal "kvm_tlb_flush_vmid_ipa_host") [(VLocal "v_mul")])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_pt") [(VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_core_context :=
    {| fname := "get_core_context";
       rettype := (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760));
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) "v_core_ctxt" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (2))])
             :: (IReturn (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) (Some (VLocal "v_core_ctxt")))
             :: nil)) |}.

Definition f_release_lock_smmu :=
    {| fname := "release_lock_smmu";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_smmu_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (14))])
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_smmu_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___clear_vm_range :=
    {| fname := "__clear_vm_range";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_start", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_cmp_not5" Cult (VLocal "v_size") (VInt (4096)))
             :: (IIf (VLocal "v_cmp_not5")
                 nil
                 ((IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_size") (VInt (12)))
                  :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_start") (VInt (12)))
                  :: (IAssign (TInt TI64) "v_num_07" (VLocal "v_div"))
                  :: (IAssign (TInt TI64) "v_pfn_06" (VLocal "v_shr"))
                  :: (ILoop
                        ((ICall TVoid None (VGlobal "clear_vm_page") [(VLocal "v_vmid"); (VLocal "v_pfn_06")])
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_pfn_06") (VInt (1)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_num_07") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_num_07" (VLocal "v_sub"))
                              :: (IAssign (TInt TI64) "v_pfn_06" (VLocal "v_add"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_verify_and_load_images :=
    {| fname := "verify_and_load_images";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (2)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vm_next_load_idx") [(VLocal "v_vmid")])
                  :: (IBinOp TBool "v_cmp231_not" Ceq (VLocal "v_call1") (VInt (0)))
                  :: (IIf (VLocal "v_cmp231_not")
                      nil
                      ((IAssign (TInt TI32) "v_load_idx_032" (VInt (0)))
                       :: (ILoop
                             ((ICall (TInt TI64) (Some "v_call3") (VGlobal "get_vm_load_addr") [(VLocal "v_vmid"); (VLocal "v_load_idx_032")])
                              :: (ICall (TInt TI64) (Some "v_call4") (VGlobal "get_vm_remap_addr") [(VLocal "v_vmid"); (VLocal "v_load_idx_032")])
                              :: (ICall (TInt TI64) (Some "v_call5") (VGlobal "get_vm_mapped_pages") [(VLocal "v_vmid"); (VLocal "v_load_idx_032")])
                              :: (ICall TVoid None (VGlobal "unmap_and_load_vm_image") [(VLocal "v_vmid"); (VLocal "v_call3"); (VLocal "v_call4"); (VLocal "v_call5")])
                              :: (ICall (TInt TI32) (Some "v_call6") (VGlobal "verify_image") [(VLocal "v_vmid"); (VLocal "v_load_idx_032")])
                              :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_load_idx_032") (VInt (1)))
                              :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_add") (VLocal "v_call1"))
                              :: (IIf (VLocal "v_exitcond_not")
                                  (IBreak
                                   :: nil)
                                  ((IAssign (TInt TI32) "v_load_idx_032" (VLocal "v_add"))
                                   :: IContinue
                                   :: nil))
                              :: nil))
                       :: nil))
                  :: (ICall TVoid None (VGlobal "set_vm_state") [(VLocal "v_vmid"); (VInt (3))])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___timer_disable_traps :=
    {| fname := "__timer_disable_traps";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_get_s2_page_gfn :=
    {| fname := "get_s2_page_gfn";
       rettype := (TInt TI32);
       fargs :=
        (("v_index", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_gfn" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (17)); (VLocal "v_index"); (VInt (2))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_gfn") 8)
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_0"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_get_pfn_map :=
    {| fname := "get_pfn_map";
       rettype := (TInt TI64);
       fargs :=
        (("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_s2_page_index") [(VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (-1)))
                  :: nil)
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_s2_page_gfn") [(VLocal "v_call")])
                  :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_call1"))
                  :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_conv"))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f___kvm_call_hyp :=
    {| fname := "__kvm_call_hyp";
       rettype := (TInt TI64);
       fargs :=
        (("v_0", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_el2_verify_and_load_images :=
    {| fname := "el2_verify_and_load_images";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (12))]); (VLocal "v_vmid")])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_hypsec_vcpu_id_to_shadow_ctxt :=
    {| fname := "hypsec_vcpu_id_to_shadow_ctxt";
       rettype := (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp TBool "v_cmp" Csgt (VLocal "v_vcpu_id") (VInt (3)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "__hyp_panic") [ ])
                  :: nil)
                 ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
                  :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpu_id"))
                  :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) "v_arrayidx" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom")])
                  :: (IReturn (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (Some (VLocal "v_arrayidx")))
                  :: nil))
             :: nil)) |}.

Definition f_clear_phys_page :=
    {| fname := "clear_phys_page";
       rettype := TVoid;
       fargs :=
        (("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_shl" OShl (VLocal "v_pfn") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_shl") (VInt (1099511623680)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_or"))
             :: (ICall TVoid None (VGlobal "el2_memset") [(VLocal "v_0"); (VInt (0)); (VInt (4096))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_smmu_pgd_next :=
    {| fname := "get_smmu_pgd_next";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (36))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_smmu_page_pool_start") 16)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_smmu_pgd_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (37))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_smmu_pgd_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_1") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_mul") (VLocal "v_0"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f_clear_smmu_pt :=
    {| fname := "clear_smmu_pt";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "smmu_pt_clear") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_smmu_free_pgd :=
    {| fname := "el2_smmu_free_pgd";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (23))]); (VLocal "v_cbndx"); (VLocal "v_num")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_deactivate_traps_vhe_put :=
    {| fname := "deactivate_traps_vhe_put";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IReturn TVoid None)
             :: nil)) |}.

Definition f_hypsec_set_vcpu_active :=
    {| fname := "hypsec_set_vcpu_active";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_vm_info" 768)) (Some "v_call") (VGlobal "vmid_to_vm_info") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call1") (VInt (3)))
             :: (IIf (VLocal "v_cmp_not")
                 ((ICall (TInt TI32) (Some "v_call3") (VGlobal "get_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (IBinOp TBool "v_cmp4" Ceq (VLocal "v_call3") (VInt (2)))
                  :: (IIf (VLocal "v_cmp4")
                      ((ICall TVoid None (VGlobal "set_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpu_id"); (VInt (4))])
                       :: (IAssign (TInt TI32) "v_ret_0" (VInt (1)))
                       :: nil)
                      ((IAssign (TInt TI32) "v_ret_0" (VInt (0)))
                       :: nil))
                  :: nil)
                 ((IAssign (TInt TI32) "v_ret_0" (VInt (0)))
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_clear_shadow_gp_regs :=
    {| fname := "clear_shadow_gp_regs";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arraydecay" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (0))])
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OBitCast (TPtr (TInt TI8))) (VLocal "v_arraydecay"))
             :: (ICall TVoid None (VGlobal "el2_memset") [(VLocal "v_0"); (VInt (0)); (VInt (864))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_kvm :=
    {| fname := "set_vm_kvm";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_kvm", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.kvm" 8824)) "v_0" (OIntToPtr (TPtr (TNamedStruct "struct.kvm" 8824))) (VLocal "v_kvm"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.kvm" 8824))) "v_kvm1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (9))])
             :: (IStore (TPtr (TNamedStruct "struct.kvm" 8824)) (VLocal "v_kvm1") (VLocal "v_0") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_pud_next :=
    {| fname := "set_pud_next";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pmd_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (18))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pmd_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1)))
             :: (IStore (TInt TI64) (VLocal "v_pmd_used_pages") (VLocal "v_add") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_cptr_el2 :=
    {| fname := "set_cptr_el2";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_set_cptr_el2") [(VLocal "v_val")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_vcpu :=
    {| fname := "set_vm_vcpu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_vcpu", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) "v_0" (OIntToPtr (TPtr (TNamedStruct "struct.kvm_vcpu" 9056))) (VLocal "v_vcpu"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_vcpuid"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.kvm_vcpu" 9056))) "v_vcpu3" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (10)); (VLocal "v_idxprom1"); (VInt (0))])
             :: (IStore (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_vcpu3") (VLocal "v_0") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_mem_region_cnt :=
    {| fname := "get_mem_region_cnt";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_regions_cnt" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (3))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_regions_cnt") 16)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_el2_set_boot_info :=
    {| fname := "el2_set_boot_info";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_addr", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: ("v_type", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (10))]); (VLocal "v_vmid"); (VLocal "v_load_addr"); (VLocal "v_size"); (VLocal "v_type")])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_kvm_tlb_flush_vmid_ipa_host :=
    {| fname := "kvm_tlb_flush_vmid_ipa_host";
       rettype := TVoid;
       fargs :=
        (("v_0", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f__arch_spin_unlock :=
    {| fname := "_arch_spin_unlock";
       rettype := TVoid;
       fargs :=
        (("v_lock", (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IGetElemPtr (TPtr (TInt TI32)) "v_lock1" (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) (VLocal "v_lock") [(VInt (0)); (VInt (0))])
             :: (ICall TVoid None (VGlobal "iasm_8") [(VLocal "v_lock1"); (VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_pfn_owner :=
    {| fname := "set_pfn_owner";
       rettype := TVoid;
       fargs :=
        (("v_pfn", (TInt TI64))
         :: ("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_s2_page_index") [(VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 nil
                 ((ICall TVoid None (VGlobal "set_s2_page_vmid") [(VLocal "v_call"); (VLocal "v_vmid")])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_poweroff :=
    {| fname := "set_vm_poweroff";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "set_vm_power") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_v_update_exception_gp_regs :=
    {| fname := "v_update_exception_gp_regs";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (33))])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (32))])
             :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (35)); (VLocal "v_call1")])
             :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (32)); (VInt (0))])
             :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (33)); (VInt (11))])
             :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (8)); (VLocal "v_call")])
             :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (51)); (VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_register_vcpu :=
    {| fname := "register_vcpu";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (2)))
             :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call1") (VInt (0)))
             :: (ISelect TBool "v_or_cond" (VLocal "v_cmp") (VBool true) (VLocal "v_cmp2"))
             :: (IIf (VLocal "v_or_cond")
                 ((ICall (TInt TI64) (Some "v_call3") (VGlobal "get_shared_vcpu") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
                  :: (ICall TVoid None (VGlobal "set_vm_vcpu") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VLocal "v_call3")])
                  :: (ICall TVoid None (VGlobal "set_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2))])
                  :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (45)); (VInt (-1))])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI32) (Some (VInt (0))))
             :: nil)) |}.

Definition f_get_shared_data_start :=
    {| fname := "get_shared_data_start";
       rettype := (TPtr (TNamedStruct "struct.shared_data" 810864));
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_2"))
             :: (ISelect (TInt TI64) "v_3" (VLocal "v_call") (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_sub1"))
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "__kern_hyp_va") [(VLocal "v_3")])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.shared_data" 810864)) "v_4" (OIntToPtr (TPtr (TNamedStruct "struct.shared_data" 810864))) (VLocal "v_call3"))
             :: (IReturn (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some (VLocal "v_4")))
             :: nil)) |}.

Definition f_int_to_shadow_fp_regs :=
    {| fname := "int_to_shadow_fp_regs";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IReturn TVoid None)
             :: nil)) |}.

Definition f_get_vm_vttbr :=
    {| fname := "get_vm_vttbr";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_pt") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_pt_vttbr") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "release_lock_pt") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_walk_npt :=
    {| fname := "walk_npt";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pt_vttbr") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_pgd") [(VLocal "v_vmid"); (VLocal "v_call"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_pud") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "walk_pmd") [(VLocal "v_vmid"); (VLocal "v_call2"); (VLocal "v_addr"); (VInt (0))])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call3") (VInt (3)))
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_and") (VInt (3)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI64) (Some "v_call4") (VGlobal "walk_pte") [(VLocal "v_vmid"); (VLocal "v_call3"); (VLocal "v_addr")])
                  :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_call4"))
                  :: nil)
                 ((IAssign (TInt TI64) "v_ret_0" (VLocal "v_call3"))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f___vm_sysreg_restore_user_state :=
    {| fname := "__vm_sysreg_restore_user_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (17))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_arrayidx1") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_tpidr_el0") [(VLocal "v_0")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx5" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (18))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_arrayidx5") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_tpidrro_el0") [(VLocal "v_1")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_waituart :=
    {| fname := "waituart";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pl011_base" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (8))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pl011_base") 8)
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_17") [(VLocal "v_0"); (VInt (24))])
             :: (IReturn (TInt TI64) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_get_mem_region_flag :=
    {| fname := "get_mem_region_flag";
       rettype := (TInt TI64);
       fargs :=
        (("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_flags" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom"); (VInt (2))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_flags") 8)
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_0"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_pud_pool_end :=
    {| fname := "pud_pool_end";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (2097152)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f_set_vm_load_size :=
    {| fname := "set_vm_load_size";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_size3" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (1))])
             :: (IStore (TInt TI64) (VLocal "v_size3") (VLocal "v_size") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_tpidr_el2 :=
    {| fname := "set_tpidr_el2";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_set_tpidr_el2") [(VLocal "v_val")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___deactivate_traps_common :=
    {| fname := "__deactivate_traps_common";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "set_pmuserenr_el0") [(VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_clear_vm_page :=
    {| fname := "clear_vm_page";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VLocal "v_vmid"))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_pfn_owner") [(VLocal "v_pfn"); (VInt (0))])
                  :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn"); (VInt (0))])
                  :: (ICall TVoid None (VGlobal "set_pfn_map") [(VLocal "v_pfn"); (VInt (0))])
                  :: (ICall TVoid None (VGlobal "clear_phys_page") [(VLocal "v_pfn")])
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_hex2bin :=
    {| fname := "el2_hex2bin";
       rettype := (TInt TI32);
       fargs :=
        (("v_dst", (TPtr (TInt TI8)))
         :: ("v_src", (TPtr (TInt TI8)))
         :: ("v_count", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IAssign (TPtr (TInt TI8)) "v_src_addr_0" (VLocal "v_src"))
             :: (IAssign (TInt TI32) "v_count_addr_0" (VLocal "v_count"))
             :: (IAssign (TPtr (TInt TI8)) "v_dst_addr_0" (VLocal "v_dst"))
             :: (ILoop
                   ((IBinOp (TInt TI32) "v_dec" OAdd (VLocal "v_count_addr_0") (VInt (-1)))
                    :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_count_addr_0") (VInt (0)))
                    :: (IIf (VLocal "v_tobool_not")
                        ((IAssign (TInt TI32) "v_retval_2" (VInt (0)))
                         :: IBreak
                         :: nil)
                        ((IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr" (TPtr (TInt TI8)) (VLocal "v_src_addr_0") [(VInt (1))])
                         :: (ILoad (TInt TI8) "v_0" (VLocal "v_src_addr_0") 1)
                         :: (ICall (TInt TI32) (Some "v_call") (VGlobal "el2_hex_to_bin") [(VLocal "v_0")])
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr1" (TPtr (TInt TI8)) (VLocal "v_src_addr_0") [(VInt (2))])
                         :: (ILoad (TInt TI8) "v_1" (VLocal "v_incdec_ptr") 1)
                         :: (ICall (TInt TI32) (Some "v_call2") (VGlobal "el2_hex_to_bin") [(VLocal "v_1")])
                         :: (IBinOp TBool "v_cmp" Cslt (VLocal "v_call") (VInt (0)))
                         :: (IBinOp TBool "v_cmp3" Cslt (VLocal "v_call2") (VInt (0)))
                         :: (ISelect TBool "v_or_cond" (VLocal "v_cmp") (VBool true) (VLocal "v_cmp3"))
                         :: (IIf (VLocal "v_or_cond")
                             ((IAssign (TPtr (TInt TI8)) "v_dst_addr_1" (VLocal "v_dst_addr_0"))
                              :: nil)
                             ((IBinOp (TInt TI32) "v_shl" OShl (VLocal "v_call") (VInt (4)))
                              :: (IBinOp (TInt TI32) "v_or" OOr (VLocal "v_call2") (VLocal "v_shl"))
                              :: (IUnaryOp (TInt TI8) "v_conv" (OTrunc (TInt TI8)) (VLocal "v_or"))
                              :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr4" (TPtr (TInt TI8)) (VLocal "v_dst_addr_0") [(VInt (1))])
                              :: (IStore (TInt TI8) (VLocal "v_dst_addr_0") (VLocal "v_conv") 1)
                              :: (IAssign (TPtr (TInt TI8)) "v_dst_addr_1" (VLocal "v_incdec_ptr4"))
                              :: nil))
                         :: (IIf (VLocal "v_or_cond")
                             ((IAssign (TInt TI32) "v_retval_2" (VInt (-1)))
                              :: IBreak
                              :: nil)
                             ((IAssign (TPtr (TInt TI8)) "v_src_addr_0" (VLocal "v_incdec_ptr1"))
                              :: (IAssign (TInt TI32) "v_count_addr_0" (VLocal "v_dec"))
                              :: (IAssign (TPtr (TInt TI8)) "v_dst_addr_0" (VLocal "v_dst_addr_1"))
                              :: IContinue
                              :: nil))
                         :: nil))
                    :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_retval_2")))
             :: nil)) |}.

Definition f_hvc_enable_s2_trans :=
    {| fname := "hvc_enable_s2_trans";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_core") [ ])
             :: (ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_installed" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (29))])
             :: (ILoad (TInt TI8) "v_0" (VLocal "v_installed") 8)
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_0") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((ICall TVoid None (VGlobal "protect_el2_mem") [ ])
                  :: (IStore (TInt TI8) (VLocal "v_installed") (VInt (1)) 8)
                  :: nil)
                 nil)
             :: (ICall (TInt TI32) (Some "v_call2") (VGlobal "__init_stage2_translation") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_host_vttbr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (5))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_host_vttbr") 16)
             :: (ICall TVoid None (VGlobal "iasm_set_vttbr_el2") [(VLocal "v_1")])
             :: (ICall TVoid None (VGlobal "iasm_set_hcr_el2") [(VInt (2147483681))])
             :: (ICall TVoid None (VGlobal "__kvm_flush_vm_context") [ ])
             :: (ICall TVoid None (VGlobal "release_lock_core") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vcpu_active :=
    {| fname := "set_vcpu_active";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (3)))
             :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call1") (VInt (2)))
             :: (ISelect TBool "v_or_cond" (VLocal "v_cmp") (VLocal "v_cmp2") (VBool false))
             :: (IIf (VLocal "v_or_cond")
                 ((ICall TVoid None (VGlobal "set_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (4))])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_memcmp :=
    {| fname := "el2_memcmp";
       rettype := (TInt TI32);
       fargs :=
        (("v_dest", (TPtr (TInt TI8)))
         :: ("v_src", (TPtr (TInt TI8)))
         :: ("v_len", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IAssign (TInt TI64) "v_len_addr_0" (VLocal "v_len"))
             :: (IAssign (TPtr (TInt TI8)) "v_cdest_0" (VLocal "v_dest"))
             :: (IAssign (TPtr (TInt TI8)) "v_csrc_0" (VLocal "v_src"))
             :: (ILoop
                   ((IBinOp TBool "v_tobool_not" Ceq (VLocal "v_len_addr_0") (VInt (0)))
                    :: (IIf (VLocal "v_tobool_not")
                        ((IAssign (TInt TI32) "v_retval_0" (VInt (0)))
                         :: IBreak
                         :: nil)
                        ((IBinOp (TInt TI64) "v_dec" OAdd (VLocal "v_len_addr_0") (VInt (-1)))
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr" (TPtr (TInt TI8)) (VLocal "v_cdest_0") [(VInt (1))])
                         :: (ILoad (TInt TI8) "v_0" (VLocal "v_cdest_0") 1)
                         :: (IGetElemPtr (TPtr (TInt TI8)) "v_incdec_ptr1" (TPtr (TInt TI8)) (VLocal "v_csrc_0") [(VInt (1))])
                         :: (ILoad (TInt TI8) "v_1" (VLocal "v_csrc_0") 1)
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_0") (VLocal "v_1"))
                         :: (IIf (VLocal "v_cmp_not")
                             ((IAssign (TInt TI64) "v_len_addr_0" (VLocal "v_dec"))
                              :: (IAssign (TPtr (TInt TI8)) "v_cdest_0" (VLocal "v_incdec_ptr"))
                              :: (IAssign (TPtr (TInt TI8)) "v_csrc_0" (VLocal "v_incdec_ptr1"))
                              :: IContinue
                              :: nil)
                             ((IAssign (TInt TI32) "v_retval_0" (VInt (1)))
                              :: IBreak
                              :: nil))
                         :: nil))
                    :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_get_vm_poweron :=
    {| fname := "get_vm_poweron";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_power") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_get_int_gpr :=
    {| fname := "get_int_gpr";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IUnaryOp (TInt TI64) "v_idxprom2" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx3" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (3)); (VInt (0)); (VInt (0)); (VInt (0)); (VLocal "v_idxprom2")])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_arrayidx3") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_llvm_dbg_declare :=
    {| fname := "llvm.dbg.declare";
       rettype := TVoid;
       fargs :=
        (("v_0", UNKNOWN_TYPE)
         :: ("v_1", UNKNOWN_TYPE)
         :: ("v_2", UNKNOWN_TYPE)
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_remap_vm_image :=
    {| fname := "remap_vm_image";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (2)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vm_next_load_idx") [(VLocal "v_vmid")])
                  :: (IBinOp TBool "v_cmp2" Cugt (VLocal "v_call1") (VLocal "v_load_idx"))
                  :: (IIf (VLocal "v_cmp2")
                      ((ICall (TInt TI64) (Some "v_call4") (VGlobal "get_vm_load_size") [(VLocal "v_vmid"); (VLocal "v_load_idx")])
                       :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_call4") (VInt (4095)))
                       :: (IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_sub") (VInt (12)))
                       :: (ICall (TInt TI64) (Some "v_call5") (VGlobal "get_vm_mapped_pages") [(VLocal "v_vmid"); (VLocal "v_load_idx")])
                       :: (ICall (TInt TI64) (Some "v_call6") (VGlobal "get_vm_remap_addr") [(VLocal "v_vmid"); (VLocal "v_load_idx")])
                       :: (IBinOp TBool "v_cmp8" Cult (VLocal "v_call5") (VLocal "v_div"))
                       :: (IIf (VLocal "v_cmp8")
                           ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_call5") (VInt (12)))
                            :: (IBinOp (TInt TI64) "v_add7" OAdd (VLocal "v_call6") (VLocal "v_mul"))
                            :: (IBinOp (TInt TI64) "v_mul10" OShl (VLocal "v_pfn") (VInt (12)))
                            :: (IBinOp (TInt TI64) "v_add11" OAdd (VLocal "v_mul10") (VInt (18014398509483859)))
                            :: (ICall TVoid None (VGlobal "mmap_s2pt") [(VInt (18)); (VLocal "v_add7"); (VInt (3)); (VLocal "v_add11")])
                            :: (IBinOp (TInt TI64) "v_add12" OAdd (VLocal "v_call5") (VInt (1)))
                            :: (ICall TVoid None (VGlobal "set_vm_mapped_pages") [(VLocal "v_vmid"); (VLocal "v_load_idx"); (VLocal "v_add12")])
                            :: nil)
                           nil)
                       :: nil)
                      nil)
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_alloc_s2pt_pmd :=
    {| fname := "alloc_s2pt_pmd";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pmd_next") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "pmd_pool_end") [(VLocal "v_vmid")])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call") (VInt (4096)))
             :: (IBinOp TBool "v_cmp_not" Cugt (VLocal "v_add") (VLocal "v_call1"))
             :: (IIf (VLocal "v_cmp_not")
                 ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall TVoid None (VGlobal "set_pmd_next") [(VLocal "v_vmid")])
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_set_per_cpu :=
    {| fname := "set_per_cpu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vmid2" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (0))])
             :: (IStore (TInt TI32) (VLocal "v_vmid2") (VLocal "v_vmid") 16)
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vcpu_id6" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (1))])
             :: (IStore (TInt TI32) (VLocal "v_vcpu_id6") (VLocal "v_vcpu_id") 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f__arch_spin_lock :=
    {| fname := "_arch_spin_lock";
       rettype := TVoid;
       fargs :=
        (("v_lock", (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IGetElemPtr (TPtr (TInt TI32)) "v_lock1" (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) (VLocal "v_lock") [(VInt (0)); (VInt (0))])
             :: (ICall (TInt TI32) (Some "v_0") (VGlobal "iasm_7") [(VLocal "v_lock1"); (VInt (1)); (VLocal "v_lock1")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_reset_mpidr :=
    {| fname := "el2_reset_mpidr";
       rettype := (TInt TI64);
       fargs :=
        (("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_and" OAnd (VLocal "v_vcpu_id") (VInt (15)))
             :: (IBinOp (TInt TI32) "v_0" OShl (VLocal "v_vcpu_id") (VInt (4)))
             :: (IBinOp (TInt TI32) "v_shl2" OAnd (VLocal "v_0") (VInt (65280)))
             :: (IBinOp (TInt TI32) "v_shl6" OAnd (VLocal "v_0") (VInt (16711680)))
             :: (IBinOp (TInt TI32) "v_or15" OOr (VLocal "v_and") (VLocal "v_shl2"))
             :: (IBinOp (TInt TI32) "v_or816" OOr (VLocal "v_or15") (VLocal "v_shl6"))
             :: (IBinOp (TInt TI32) "v_1" OOr (VLocal "v_or816") (VInt (2147483648)))
             :: (IUnaryOp (TInt TI64) "v_or9" (OZExt (TInt TI64)) (VLocal "v_1"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_or9")))
             :: nil)) |}.

Definition f_map_smmu :=
    {| fname := "map_smmu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_iova", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (IBinOp (TInt TI32) "v_0" OAdd (VLocal "v_vmid") (VInt (-1)))
             :: (IBinOp TBool "v_1" Cult (VLocal "v_0") (VInt (17)))
             :: (IIf (VLocal "v_1")
                 ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_state") [(VLocal "v_vmid")])
                  :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call") (VInt (3)))
                  :: (IIf (VLocal "v_cmp2")
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil)
                      nil)
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "update_smmu_page") [(VLocal "v_vmid"); (VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova"); (VLocal "v_pte")])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_handle_host_stage2_fault :=
    {| fname := "handle_host_stage2_fault";
       rettype := TVoid;
       fargs :=
        (("v_host_lr", (TInt TI64))
         :: ("v_host_regs", (TPtr (TNamedStruct "struct.s2_host_regs" 256)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_hpfar_el2") [ ])
             :: (IBinOp (TInt TI64) "v_and" OShl (VLocal "v_0") (VInt (8)))
             :: (IBinOp (TInt TI64) "v_shl" OAnd (VLocal "v_and") (VInt (18446744073709547520)))
             :: (IUnaryOp (TInt TI64) "v_1" OPtrToInt (VLocal "v_host_regs"))
             :: (ICall TVoid None (VGlobal "set_per_cpu_host_regs") [(VLocal "v_1")])
             :: (ICall (TInt TI64) (Some "v_2") (VGlobal "iasm_get_esr_el2") [ ])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_2"))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "emulate_mmio") [(VLocal "v_shl"); (VLocal "v_conv")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "map_page_host") [(VLocal "v_shl")])
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_cur_vcpu_id :=
    {| fname := "get_cur_vcpu_id";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vcpu_id" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (1))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_vcpu_id") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_vm_state :=
    {| fname := "get_vm_state";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_state" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (5))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_state") 8)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_s2_page_count :=
    {| fname := "get_s2_page_count";
       rettype := (TInt TI32);
       fargs :=
        (("v_index", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_count" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (17)); (VLocal "v_index"); (VInt (0))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_count") 8)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___el2_alloc_smmu_pgd :=
    {| fname := "__el2_alloc_smmu_pgd";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_vmid", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_smmu") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_smmu_num_context_banks") [(VLocal "v_index")])
             :: (IBinOp TBool "v_cmp_not" Cugt (VLocal "v_call") (VLocal "v_cbndx"))
             :: (IIf (VLocal "v_cmp_not")
                 ((ICall (TInt TI32) (Some "v_call1") (VGlobal "get_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index")])
                  :: (IBinOp TBool "v_cmp2" Ceq (VLocal "v_call1") (VInt (-1)))
                  :: (IIf (VLocal "v_cmp2")
                      ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                       :: (ICall TVoid None (VGlobal "set_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_vmid")])
                       :: (ICall TVoid None (VGlobal "init_spt") [(VLocal "v_cbndx"); (VLocal "v_index")])
                       :: nil)
                      nil)
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_smmu") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_create_hypsec_io_mappings :=
    {| fname := "create_hypsec_io_mappings";
       rettype := (TInt TI32);
       fargs :=
        (("v_0", (TInt TI64))
         :: ("v_1", (TInt TI64))
         :: ("v_2", (TPtr (TInt TI64)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_mem_region_search :=
    {| fname := "mem_region_search";
       rettype := (TInt TI32);
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_mem_region_cnt") [ ])
             :: (IBinOp TBool "v_cmp17_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp17_not")
                 ((IAssign (TInt TI32) "v_res_0_lcssa" (VInt (-1)))
                  :: nil)
                 ((IAssign (TInt TI32) "v_i_019" (VInt (0)))
                  :: (IAssign (TInt TI32) "v_res_018" (VInt (-1)))
                  :: (ILoop
                        ((ICall (TInt TI64) (Some "v_call1") (VGlobal "get_mem_region_base") [(VLocal "v_i_019")])
                         :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_mem_region_size") [(VLocal "v_i_019")])
                         :: (IBinOp TBool "v_cmp3_not" Cule (VLocal "v_call1") (VLocal "v_addr"))
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call2") (VLocal "v_call1"))
                         :: (IBinOp TBool "v_cmp4" Cugt (VLocal "v_add") (VLocal "v_addr"))
                         :: (ISelect TBool "v_or_cond" (VLocal "v_cmp3_not") (VLocal "v_cmp4") (VBool false))
                         :: (ISelect (TInt TI32) "v_res_1" (VLocal "v_or_cond") (VLocal "v_i_019") (VLocal "v_res_018"))
                         :: (IBinOp (TInt TI32) "v_add5" OAdd (VLocal "v_i_019") (VInt (1)))
                         :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_add5") (VLocal "v_call"))
                         :: (IIf (VLocal "v_exitcond_not")
                             ((IAssign (TInt TI32) "v_res_0_lcssa" (VLocal "v_res_1"))
                              :: IBreak
                              :: nil)
                             ((IAssign (TInt TI32) "v_i_019" (VLocal "v_add5"))
                              :: (IAssign (TInt TI32) "v_res_018" (VLocal "v_res_1"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_res_0_lcssa")))
             :: nil)) |}.

Definition f_check_smmu_pfn :=
    {| fname := "check_smmu_pfn";
       rettype := (TInt TI32);
       fargs :=
        (("v_pfn", (TInt TI64))
         :: ("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn")])
             :: (IBinOp (TInt TI32) "v_0" OAdd (VLocal "v_call") (VInt (1)))
             :: (IBinOp TBool "v_1" Cult (VLocal "v_0") (VInt (2)))
             :: (IBinOp TBool "v_cmp2_not" Ceq (VLocal "v_call") (VLocal "v_vmid"))
             :: (IBinOp TBool "v_or_cond" OOr (VLocal "v_cmp2_not") (VLocal "v_1"))
             :: (IUnaryOp (TInt TI32) "v_retval_0" (OZExt (TInt TI32)) (VLocal "v_or_cond"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_smmu_pt_load :=
    {| fname := "smmu_pt_load";
       rettype := (TInt TI64);
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_addr") (VInt (1099511627775)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI64)) "v_0" (OIntToPtr (TPtr (TInt TI64))) (VLocal "v_or"))
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_0") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_init_spt :=
    {| fname := "init_spt";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_spt") [ ])
             :: (ICall TVoid None (VGlobal "init_smmu_pt") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (ICall TVoid None (VGlobal "release_lock_spt") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_acquire_lock_spt :=
    {| fname := "acquire_lock_spt";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_spt_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (15))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_spt_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___sysreg_save_state_nvhe :=
    {| fname := "__sysreg_save_state_nvhe";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_printhex_ul :=
    {| fname := "printhex_ul";
       rettype := TVoid;
       fargs :=
        (("v_input", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_console_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (13))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_console_lock")])
             :: (ICall TVoid None (VGlobal "senduart") [(VInt (13))])
             :: (ICall TVoid None (VGlobal "senduart") [(VInt (48))])
             :: (ICall TVoid None (VGlobal "senduart") [(VInt (120))])
             :: (IAssign (TInt TI64) "v_indvars_iv" (VInt (60)))
             :: (ILoop
                   ((IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_input") (VLocal "v_indvars_iv"))
                    :: (IUnaryOp (TInt TI32) "v_0" (OTrunc (TInt TI32)) (VLocal "v_shr"))
                    :: (IBinOp (TInt TI32) "v_conv" OAnd (VLocal "v_0") (VInt (15)))
                    :: (IBinOp TBool "v_cmp2" Cult (VLocal "v_conv") (VInt (10)))
                    :: (IUnaryOp (TInt TI8) "v_1" (OTrunc (TInt TI8)) (VLocal "v_conv"))
                    :: (IBinOp (TInt TI8) "v_conv5" OOr (VLocal "v_1") (VInt (48)))
                    :: (IBinOp (TInt TI8) "v_conv8" OAdd (VLocal "v_1") (VInt (87)))
                    :: (ISelect (TInt TI8) "v_word_0" (VLocal "v_cmp2") (VLocal "v_conv5") (VLocal "v_conv8"))
                    :: (ICall TVoid None (VGlobal "senduart") [(VLocal "v_word_0")])
                    :: (IBinOp (TInt TI64) "v_indvars_iv_next" OAdd (VLocal "v_indvars_iv") (VInt (-4)))
                    :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_indvars_iv") (VInt (0)))
                    :: (IIf (VLocal "v_cmp_not")
                        ((ICall TVoid None (VGlobal "senduart") [(VInt (13))])
                         :: (ICall TVoid None (VGlobal "senduart") [(VInt (10))])
                         :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_console_lock")])
                         :: (IReturn TVoid None)
                         :: nil)
                        ((IAssign (TInt TI64) "v_indvars_iv" (VLocal "v_indvars_iv_next"))
                         :: nil))
                    :: IContinue
                    :: nil))
             :: nil)) |}.

Definition f_get_el2_data_start :=
    {| fname := "get_el2_data_start";
       rettype := (TPtr (TNamedStruct "struct.el2_data" 33731152));
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
             :: (ISelect (TInt TI64) "v_3" (VLocal "v_call") (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_sub1"))
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "__kern_hyp_va") [(VLocal "v_3")])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.el2_data" 33731152)) "v_4" (OIntToPtr (TPtr (TNamedStruct "struct.el2_data" 33731152))) (VLocal "v_call3"))
             :: (IReturn (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some (VLocal "v_4")))
             :: nil)) |}.

Definition f_verify_image :=
    {| fname := "verify_image";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_vm_load_size") [(VLocal "v_vmid"); (VLocal "v_load_idx")])
             :: (ICall (TPtr (TInt TI8)) (Some "v_call1") (VGlobal "get_vm_public_key") [(VLocal "v_vmid")])
             :: (ICall (TPtr (TInt TI8)) (Some "v_call2") (VGlobal "get_vm_load_signature") [(VLocal "v_vmid"); (VLocal "v_load_idx")])
             :: (IReturn (TInt TI32) (Some (VInt (1))))
             :: nil)) |}.

Definition f_set_s2_page_gfn :=
    {| fname := "set_s2_page_gfn";
       rettype := TVoid;
       fargs :=
        (("v_index", (TInt TI64))
         :: ("v_gfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_gfn1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (17)); (VLocal "v_index"); (VInt (2))])
             :: (IStore (TInt TI64) (VLocal "v_gfn1") (VLocal "v_gfn") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_vcpu_id_to_int_vcpu :=
    {| fname := "vcpu_id_to_int_vcpu";
       rettype := (TPtr (TNamedStruct "struct.int_vcpu" 24));
       fargs :=
        (("v_vm_info", (TPtr (TNamedStruct "struct.el2_vm_info" 768)))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_0" Cugt (VLocal "v_vcpu_id") (VInt (3)))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_vcpu_id"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.int_vcpu" 24)) "v_arrayidx" (TPtr (TNamedStruct "struct.el2_vm_info" 768)) (VLocal "v_vm_info") [(VInt (0)); (VInt (10)); (VLocal "v_idxprom")])
             :: (ISelect (TPtr (TNamedStruct "struct.int_vcpu" 24)) "v_retval_0" (VLocal "v_0") VNull (VLocal "v_arrayidx"))
             :: (IReturn (TPtr (TNamedStruct "struct.int_vcpu" 24)) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f___guest_enter :=
    {| fname := "__guest_enter";
       rettype := (TInt TI64);
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)))
         :: ("v_1", (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_boot_from_inc_exe :=
    {| fname := "boot_from_inc_exe";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall TVoid None (VGlobal "set_vm_inc_exe") [(VLocal "v_vmid"); (VInt (1))])
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_s2_page_vmid :=
    {| fname := "get_s2_page_vmid";
       rettype := (TInt TI32);
       fargs :=
        (("v_index", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vmid" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (17)); (VLocal "v_index"); (VInt (1))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_vmid") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___sysreg_restore_state_nvhe :=
    {| fname := "__sysreg_restore_state_nvhe";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_el2_arm_lpae_map :=
    {| fname := "el2_arm_lpae_map";
       rettype := TVoid;
       fargs :=
        (("v_iova", (TInt TI64))
         :: ("v_paddr", (TInt TI64))
         :: ("v_prot", (TInt TI64))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (25))]); (VLocal "v_iova"); (VLocal "v_paddr"); (VLocal "v_prot"); (VLocal "v_cbndx"); (VLocal "v_num")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_shared_vcpu :=
    {| fname := "get_shared_vcpu";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1_op" OSub (VExpr (TInt TI64) OAdd [(VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]); (VInt (158832))]) (VLocal "v_2"))
             :: (ISelect (TInt TI64) "v_add3" (VLocal "v_call") (VExpr (TInt TI64) OAdd [(VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]); (VInt (158832))]) (VLocal "v_sub1_op"))
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_add4" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_add4"))
             :: (IBinOp (TInt TI64) "v_mul5" OMul (VLocal "v_conv") (VInt (9056)))
             :: (IBinOp (TInt TI64) "v_add6" OAdd (VLocal "v_add3") (VLocal "v_mul5"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add6")))
             :: nil)) |}.

Definition f_handle_pvops :=
    {| fname := "handle_pvops";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2))])
             :: (IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (532480))])
                 ((ICall TVoid None (VGlobal "v_revoke_stage2_sg_gpa") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_call2")])
                  :: (IAssign (TInt TI32) "v_retval_0" (VInt (1)))
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_call"); (VInt (528384))])
                      ((ICall TVoid None (VGlobal "v_grant_stage2_sg_gpa") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_call2")])
                       :: (IAssign (TInt TI32) "v_retval_0" (VInt (1)))
                       :: nil)
                      ((IAssign (TInt TI32) "v_retval_0" (VInt (-22)))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_walk_pgd :=
    {| fname := "walk_pgd";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vttbr", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_alloc", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_vttbr") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (36)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
                  :: (IBinOp (TInt TI64) "v_add" OOr (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "pt_load") [(VLocal "v_vmid"); (VLocal "v_add")])
                  :: (IBinOp (TInt TI64) "v_and4" OAnd (VLocal "v_call") (VInt (281474976706560)))
                  :: (IBinOp TBool "v_cmp5" Ceq (VLocal "v_and4") (VInt (0)))
                  :: (IBinOp TBool "v_cmp6" Ceq (VLocal "v_alloc") (VInt (1)))
                  :: (IBinOp TBool "v_or_cond" OAnd (VLocal "v_cmp6") (VLocal "v_cmp5"))
                  :: (IIf (VLocal "v_or_cond")
                      ((ICall (TInt TI64) (Some "v_call8") (VGlobal "alloc_s2pt_pgd") [(VLocal "v_vmid")])
                       :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_call8") (VInt (3)))
                       :: (ICall TVoid None (VGlobal "pt_store") [(VLocal "v_vmid"); (VLocal "v_add"); (VLocal "v_or")])
                       :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_or"))
                       :: nil)
                      ((IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_get_int_esr :=
    {| fname := "get_int_esr";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_esr_el2" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (8)); (VInt (0))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_esr_el2") 16)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_get_vm_mapped_pages :=
    {| fname := "get_vm_mapped_pages";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_el2_mapped_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (3))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_el2_mapped_pages") 8)
             :: (IUnaryOp (TInt TI64) "v_conv" (OSExt (TInt TI64)) (VLocal "v_0"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_walk_pte :=
    {| fname := "walk_pte";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pmd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pmd") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (9)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
                  :: (IBinOp (TInt TI64) "v_add" OOr (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "pt_load") [(VLocal "v_vmid"); (VLocal "v_add")])
                  :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f___flush_dcache_area :=
    {| fname := "__flush_dcache_area";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TInt TI8)))
         :: ("v_1", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_get_shadow_esr :=
    {| fname := "get_shadow_esr";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_esr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (9))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_esr") 16)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_v_hypsec_inject_undef :=
    {| fname := "v_hypsec_inject_undef";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (34359738368))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_save_encrypted_vcpu :=
    {| fname := "save_encrypted_vcpu";
       rettype := TVoid;
       fargs :=
        (("v_vcpu", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.kvm" 8824))) "v_kvm" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_vcpu") [(VInt (0)); (VInt (0))])
             :: (ILoad (TPtr (TNamedStruct "struct.kvm" 8824)) "v_0" (VLocal "v_kvm") 16)
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vcpu_id" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_vcpu") [(VInt (0)); (VInt (3))])
             :: (ILoad (TInt TI32) "v_1" (VLocal "v_vcpu_id") 4)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v__elt" (TPtr (TNamedStruct "struct.kvm" 8824)) (VLocal "v_0") [(VInt (0)); (VInt (14)); (VInt (0)); (VInt (0))])
             :: (ILoad (TInt TI64) "v__unpack" (VLocal "v__elt") 8)
             :: (IInsertValue (TArray (TInt TI64) 2) "v_2" VUndef (VLocal "v__unpack") (0 :: nil))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v__elt2" (TPtr (TNamedStruct "struct.kvm" 8824)) (VLocal "v_0") [(VInt (0)); (VInt (14)); (VInt (0)); (VInt (1))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_3" (OBitCast (TPtr (TInt TI64))) (VLocal "v__elt2"))
             :: (ILoad (TInt TI64) "v__unpack3" (VLocal "v_3") 8)
             :: (IInsertValue (TArray (TInt TI64) 2) "v_4" (VLocal "v_2") (VLocal "v__unpack3") (1 :: nil))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (22))]); (VLocal "v_4"); (VLocal "v_1")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_s2_page_vmid :=
    {| fname := "set_s2_page_vmid";
       rettype := TVoid;
       fargs :=
        (("v_index", (TInt TI64))
         :: ("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vmid1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (17)); (VLocal "v_index"); (VInt (1))])
             :: (IStore (TInt TI32) (VLocal "v_vmid1") (VLocal "v_vmid") 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_smmu_base :=
    {| fname := "get_smmu_base";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_phys_base" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (25)); (VLocal "v_idxprom"); (VInt (0))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_phys_base") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_host_dabt_get_as :=
    {| fname := "host_dabt_get_as";
       rettype := (TInt TI32);
       fargs :=
        (("v_hsr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_0" OLshr (VLocal "v_hsr") (VInt (22)))
             :: (IBinOp (TInt TI32) "v_1" OAnd (VLocal "v_0") (VInt (3)))
             :: (IBinOp (TInt TI32) "v_shl" OShl (VInt (1)) (VLocal "v_1"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_shl")))
             :: nil)) |}.

Definition f_release_lock_core :=
    {| fname := "release_lock_core";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_abs_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (11))])
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_abs_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_pud_next :=
    {| fname := "get_pud_next";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pmd_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (18))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_pmd_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_1") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (69632)))
             :: (IBinOp (TInt TI64) "v_add4" OAdd (VLocal "v_add") (VLocal "v_mul"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add4")))
             :: nil)) |}.

Definition f_get_vm_inc_exe :=
    {| fname := "get_vm_inc_exe";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_inc_exe" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (4))])
             :: (ILoad (TInt TI8) "v_0" (VLocal "v_inc_exe") 4)
             :: (IUnaryOp (TInt TI32) "v_1" (OZExt (TInt TI32)) (VLocal "v_0"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_el2_arm_lpae_iova_to_phys :=
    {| fname := "el2_arm_lpae_iova_to_phys";
       rettype := (TInt TI64);
       fargs :=
        (("v_iova", (TInt TI64))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (26))]); (VLocal "v_iova"); (VLocal "v_cbndx"); (VLocal "v_num")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_set_vttbr_el2 :=
    {| fname := "set_vttbr_el2";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_set_vttbr_el2") [(VLocal "v_val")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_vm_public_key :=
    {| fname := "get_vm_public_key";
       rettype := (TPtr (TInt TI8));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_arraydecay" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (14)); (VInt (0))])
             :: (IReturn (TPtr (TInt TI8)) (Some (VLocal "v_arraydecay")))
             :: nil)) |}.

Definition f_register_kvm :=
    {| fname := "register_kvm";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "gen_vmid") [ ])
             :: (ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_call")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vm_state") [(VLocal "v_call")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call1") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_vm_inc_exe") [(VLocal "v_call"); (VInt (0))])
                  :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shared_kvm") [(VLocal "v_call")])
                  :: (ICall TVoid None (VGlobal "set_vm_kvm") [(VLocal "v_call"); (VLocal "v_call2")])
                  :: (ICall TVoid None (VGlobal "init_s2pt") [(VLocal "v_call")])
                  :: (ICall TVoid None (VGlobal "set_vm_public_key") [(VLocal "v_call")])
                  :: (ICall TVoid None (VGlobal "set_vm_state") [(VLocal "v_call"); (VInt (2))])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_call")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_restore_shadow_kvm_regs :=
    {| fname := "restore_shadow_kvm_regs";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_cur_vmid") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cur_vcpu_id") [ ])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (45))])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call2") (VInt (-1)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "reset_gp_regs") [(VLocal "v_call"); (VLocal "v_call1")])
                  :: (ICall TVoid None (VGlobal "reset_sys_regs") [(VLocal "v_call"); (VLocal "v_call1")])
                  :: (ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (0))])
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call3") (VGlobal "get_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (44))])
                  :: (IBinOp TBool "v_cmp4" Ceq (VLocal "v_call3") (VInt (2)))
                  :: (IBinOp TBool "v_tobool" Cne (VLocal "v_call2") (VInt (0)))
                  :: (ISelect TBool "v_or_cond" (VLocal "v_cmp4") (VLocal "v_tobool") (VBool false))
                  :: (IIf (VLocal "v_or_cond")
                      ((ICall TVoid None (VGlobal "sync_dirty_to_shadow") [(VLocal "v_call"); (VLocal "v_call1")])
                       :: nil)
                      nil)
                  :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call2") (VInt (60129542144)))
                  :: (IBinOp TBool "v_tobool6_not" Ceq (VLocal "v_and") (VInt (0)))
                  :: (IIf (VLocal "v_tobool6_not")
                      nil
                      ((ICall TVoid None (VGlobal "v_update_exception_gp_regs") [(VLocal "v_call"); (VLocal "v_call1")])
                       :: nil))
                  :: (IBinOp (TInt TI64) "v_and9" OAnd (VLocal "v_call2") (VInt (4294967296)))
                  :: (IBinOp TBool "v_tobool10_not" Ceq (VLocal "v_and9") (VInt (0)))
                  :: (IIf (VLocal "v_tobool10_not")
                      nil
                      ((ICall (TInt TI64) (Some "v_call12") (VGlobal "get_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (32))])
                       :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call12") (VInt (4)))
                       :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (32)); (VLocal "v_add")])
                       :: nil))
                  :: (ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (0))])
                  :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (41)); (VInt (0))])
                  :: (ICall (TInt TI64) (Some "v_call14") (VGlobal "get_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (46))])
                  :: (IBinOp (TInt TI64) "v_and15" OAnd (VLocal "v_call14") (VInt (2)))
                  :: (IBinOp TBool "v_tobool16_not" Ceq (VLocal "v_and15") (VInt (0)))
                  :: (IIf (VLocal "v_tobool16_not")
                      nil
                      ((ICall TVoid None (VGlobal "v_post_handle_shadow_s2pt_fault") [(VLocal "v_call"); (VLocal "v_call1")])
                       :: nil))
                  :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (46)); (VInt (0))])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___hyp_panic :=
    {| fname := "__hyp_panic";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := None |}.

Definition f_get_cur_vmid :=
    {| fname := "get_cur_vmid";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_vmid" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (0))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_vmid") 16)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_el2_smmu_clear :=
    {| fname := "el2_smmu_clear";
       rettype := TVoid;
       fargs :=
        (("v_iova", (TInt TI64))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (27))]); (VLocal "v_iova"); (VLocal "v_cbndx"); (VLocal "v_num")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___handle_smmu_write :=
    {| fname := "__handle_smmu_write";
       rettype := TVoid;
       fargs :=
        (("v_hsr", (TInt TI32))
         :: ("v_fault_ipa", (TInt TI64))
         :: ("v_len", (TInt TI32))
         :: ("v_val", (TInt TI64))
         :: ("v_write_val", (TInt TI32))
         :: nil);
       falloca_vars := ("v_val6" :: "v_data" :: nil);
       fbody := 
        (Some 
            ((IAlloca (TPtr (TInt TI64)) "v_data" 8)
             :: (IAlloca (TPtr (TInt TI32)) "v_val6" 4)
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_fault_ipa"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_1" (OBitCast (TPtr (TInt TI8))) (VLocal "v_data"))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "host_get_mmio_data") [(VLocal "v_hsr")])
             :: (IStore (TInt TI64) (VLocal "v_data") (VLocal "v_call") 8)
             :: (IIf (VExpr TBool Ceq [(VLocal "v_len"); (VInt (4))])
                 ((IUnaryOp (TPtr (TInt TI8)) "v_2" (OBitCast (TPtr (TInt TI8))) (VLocal "v_val6"))
                  :: (ICall TVoid None (VGlobal "el2_memcpy") [(VLocal "v_2"); (VLocal "v_1"); (VInt (4))])
                  :: (ILoad (TInt TI32) "v_3" (VLocal "v_val6") 4)
                  :: (ICall TVoid None (VGlobal "__raw_writel") [(VLocal "v_3"); (VLocal "v_0")])
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_len"); (VInt (8))])
                      ((IBinOp TBool "v_cmp1" Ceq (VLocal "v_write_val") (VInt (0)))
                       :: (IIf (VLocal "v_cmp1")
                           ((ICall TVoid None (VGlobal "__raw_writeq") [(VLocal "v_call"); (VLocal "v_0")])
                            :: nil)
                           ((ICall TVoid None (VGlobal "__raw_writeq") [(VLocal "v_val"); (VLocal "v_0")])
                            :: nil))
                       :: nil)
                      ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_len"))
                       :: (ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_num_online_cpus :=
    {| fname := "num_online_cpus";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "atomic_read") [ ])
             :: (IReturn (TInt TI32) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_is_gic_cpu :=
    {| fname := "is_gic_cpu";
       rettype := TBool;
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_0" OAnd (VLocal "v_addr") (VInt (18446744073709486080)))
             :: (IBinOp TBool "v_1" Ceq (VLocal "v_0") (VInt (134283264)))
             :: (IReturn TBool (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f___activate_traps :=
    {| fname := "__activate_traps";
       rettype := TVoid;
       fargs :=
        (("v_vcpu", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IGetElemPtr (TPtr (TInt TI64)) "v_hcr_el2" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_vcpu") [(VInt (0)); (VInt (29)); (VInt (6))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_hcr_el2") 16)
             :: (IBinOp (TInt TI64) "v_1" OAnd (VLocal "v_0") (VInt (192)))
             :: (IBinOp (TInt TI64) "v_hcr_1" OOr (VLocal "v_1") (VInt (36515112507)))
             :: (ICall TVoid None (VGlobal "set_hcr_el2") [(VLocal "v_hcr_1")])
             :: (ICall TVoid None (VGlobal "__activate_traps_nvhe") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_v_revoke_stage2_sg_gpa :=
    {| fname := "v_revoke_stage2_sg_gpa";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_size") (VInt (4095)))
             :: (IBinOp TBool "v_tobool_not" Cne (VLocal "v_and") (VInt (0)))
             :: (IUnaryOp (TInt TI64) "v_0" (OZExt (TInt TI64)) (VLocal "v_tobool_not"))
             :: (IBinOp TBool "v_tobool1_not" Cult (VLocal "v_size") (VInt (4096)))
             :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_size") (VInt (12)))
             :: (ISelect (TInt TI64) "v_add" (VLocal "v_tobool1_not") (VInt (0)) (VLocal "v_shr"))
             :: (IBinOp (TInt TI64) "v_len_0" OAdd (VLocal "v_add") (VLocal "v_0"))
             :: (IBinOp TBool "v_cmp_not42" Ceq (VLocal "v_len_0") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not42")
                 nil
                 ((IAssign (TInt TI64) "v_addr_addr_044" (VLocal "v_addr"))
                  :: (IAssign (TInt TI64) "v_len_143" (VLocal "v_len_0"))
                  :: (ILoop
                        ((ICall (TInt TI64) (Some "v_call") (VGlobal "walk_s2pt") [(VLocal "v_vmid"); (VLocal "v_addr_addr_044")])
                         :: (IBinOp (TInt TI64) "v_and5" OAnd (VLocal "v_call") (VInt (281474976706560)))
                         :: (IBinOp TBool "v_cmp14_not" Ceq (VLocal "v_and5") (VInt (0)))
                         :: (IIf (VLocal "v_cmp14_not")
                             nil
                             ((IBinOp (TInt TI64) "v_and6" OAnd (VLocal "v_call") (VInt (36028797018963968)))
                              :: (IBinOp TBool "v_tobool7_not_not" Ceq (VLocal "v_and6") (VInt (0)))
                              :: (IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_and5") (VInt (12)))
                              :: (IBinOp (TInt TI64) "v_and20" OLshr (VLocal "v_addr_addr_044") (VInt (12)))
                              :: (IBinOp (TInt TI64) "v_div21" OAnd (VLocal "v_and20") (VInt (511)))
                              :: (ISelect (TInt TI64) "v_add22" (VLocal "v_tobool7_not_not") (VInt (0)) (VLocal "v_div21"))
                              :: (IBinOp (TInt TI64) "v_pfn_0" OAdd (VLocal "v_add22") (VLocal "v_div"))
                              :: (ICall TVoid None (VGlobal "revoke_vm_page") [(VLocal "v_vmid"); (VLocal "v_pfn_0")])
                              :: nil))
                         :: (IBinOp (TInt TI64) "v_add25" OAdd (VLocal "v_addr_addr_044") (VInt (4096)))
                         :: (IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_len_143") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_sub") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_addr_addr_044" (VLocal "v_add25"))
                              :: (IAssign (TInt TI64) "v_len_143" (VLocal "v_sub"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_llvm_lifetime_end_p0i8 :=
    {| fname := "llvm.lifetime.end.p0i8";
       rettype := TVoid;
       fargs :=
        (("v_0", (TInt TI64))
         :: ("v_1", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_walk_smmu_pmd :=
    {| fname := "walk_smmu_pmd";
       rettype := (TInt TI64);
       fargs :=
        (("v_pgd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_alloc", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pgd") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (18)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
                  :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "smmu_pt_load") [(VLocal "v_or")])
                  :: (IBinOp (TInt TI64) "v_and4" OAnd (VLocal "v_call") (VInt (281474976706560)))
                  :: (IBinOp TBool "v_cmp5" Ceq (VLocal "v_and4") (VInt (0)))
                  :: (IBinOp TBool "v_cmp6" Ceq (VLocal "v_alloc") (VInt (1)))
                  :: (IBinOp TBool "v_or_cond" OAnd (VLocal "v_cmp6") (VLocal "v_cmp5"))
                  :: (IIf (VLocal "v_or_cond")
                      ((ICall (TInt TI64) (Some "v_call8") (VGlobal "alloc_smmu_pmd_page") [ ])
                       :: (IBinOp (TInt TI64) "v_or9" OOr (VLocal "v_call8") (VInt (3)))
                       :: (ICall TVoid None (VGlobal "smmu_pt_store") [(VLocal "v_or"); (VLocal "v_or9")])
                       :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_or9"))
                       :: nil)
                      ((IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_get_mem_region_base :=
    {| fname := "get_mem_region_base";
       rettype := (TInt TI64);
       fargs :=
        (("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_base" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom"); (VInt (0))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_base") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_set_vm_load_addr :=
    {| fname := "set_vm_load_addr";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: ("v_load_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_load_addr3" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (0))])
             :: (IStore (TInt TI64) (VLocal "v_load_addr3") (VLocal "v_load_addr") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_smmu_get_cbndx :=
    {| fname := "smmu_get_cbndx";
       rettype := (TInt TI64);
       fargs :=
        (("v_offset", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_sub" OAdd (VLocal "v_offset") (VInt (18446744073709518848)))
             :: (IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_sub") (VInt (12)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_shr")))
             :: nil)) |}.

Definition f_set_shadow_dirty_bit :=
    {| fname := "set_shadow_dirty_bit";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_value", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_value") (VInt (0)))
             :: (IUnaryOp (TInt TI64) "v_idxprom2" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_dirty4" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom2"); (VInt (5))])
             :: (IIf (VLocal "v_tobool_not")
                 ((IAssign (TInt TI64) "v__sink" (VInt (0)))
                  :: nil)
                 ((ILoad (TInt TI64) "v_0" (VLocal "v_dirty4") 8)
                  :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_0") (VLocal "v_value"))
                  :: (IAssign (TInt TI64) "v__sink" (VLocal "v_or"))
                  :: nil))
             :: (IStore (TInt TI64) (VLocal "v_dirty4") (VLocal "v__sink") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_unmap_and_load_vm_image :=
    {| fname := "unmap_and_load_vm_image";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_target_addr", (TInt TI64))
         :: ("v_remap_addr", (TInt TI64))
         :: ("v_num", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_target_addr") (VInt (18446744073707454464)))
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_num") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_target_addr") (VInt (2097151)))
             :: (IBinOp (TInt TI64) "v_sub" OSub (VLocal "v_add") (VLocal "v_and"))
             :: (IBinOp (TInt TI64) "v_add1" OAdd (VLocal "v_sub") (VLocal "v_mul"))
             :: (IBinOp TBool "v_cmp_not28" Cult (VLocal "v_add1") (VInt (2097152)))
             :: (IIf (VLocal "v_cmp_not28")
                 nil
                 ((IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_add1") (VInt (21)))
                  :: (IAssign (TInt TI64) "v_target_addr_addr_033" (VLocal "v_target_addr"))
                  :: (IAssign (TInt TI64) "v_remap_addr_addr_032" (VLocal "v_remap_addr"))
                  :: (IAssign (TInt TI64) "v_start_030" (VLocal "v_and"))
                  :: (IAssign (TInt TI64) "v_mb_num_029" (VLocal "v_div"))
                  :: (ILoop
                        ((ICall (TInt TI64) (Some "v_call") (VGlobal "walk_s2pt") [(VInt (18)); (VLocal "v_remap_addr_addr_032")])
                         :: (IBinOp (TInt TI64) "v_and4" OLshr (VLocal "v_call") (VInt (12)))
                         :: (IBinOp (TInt TI64) "v_div5" OAnd (VLocal "v_and4") (VInt (68719476224)))
                         :: (IBinOp TBool "v_cmp6" Ceq (VLocal "v_div5") (VInt (0)))
                         :: (IIf (VLocal "v_cmp6")
                             ((ICall TVoid None (VGlobal "v_panic") [ ])
                              :: nil)
                             ((IBinOp (TInt TI64) "v_mul8" OShl (VLocal "v_div5") (VInt (12)))
                              :: (ICall TVoid None (VGlobal "prot_and_map_vm_s2pt") [(VLocal "v_vmid"); (VLocal "v_start_030"); (VLocal "v_mul8"); (VInt (2))])
                              :: nil))
                         :: (IBinOp (TInt TI64) "v_add9" OAdd (VLocal "v_start_030") (VInt (2097152)))
                         :: (IBinOp (TInt TI64) "v_sub10" OAdd (VLocal "v_remap_addr_addr_032") (VLocal "v_add9"))
                         :: (IBinOp (TInt TI64) "v_add11" OSub (VLocal "v_sub10") (VLocal "v_target_addr_addr_033"))
                         :: (IBinOp (TInt TI64) "v_dec" OAdd (VLocal "v_mb_num_029") (VInt (-1)))
                         :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_dec") (VInt (0)))
                         :: (IIf (VLocal "v_cmp_not")
                             (IBreak
                              :: nil)
                             ((IAssign (TInt TI64) "v_target_addr_addr_033" (VLocal "v_add9"))
                              :: (IAssign (TInt TI64) "v_remap_addr_addr_032" (VLocal "v_add11"))
                              :: (IAssign (TInt TI64) "v_start_030" (VLocal "v_add9"))
                              :: (IAssign (TInt TI64) "v_mb_num_029" (VLocal "v_dec"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_el2_remap_vm_image :=
    {| fname := "el2_remap_vm_image";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: ("v_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "__kvm_call_hyp") [(VExpr (TPtr (TInt TI8)) (OIntToPtr (TPtr (TInt TI8))) [(VInt (11))]); (VLocal "v_vmid"); (VLocal "v_pfn"); (VLocal "v_id")])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_call"))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_set_shadow_ctxt_esr :=
    {| fname := "set_shadow_ctxt_esr";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_value", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_esr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (9))])
             :: (IStore (TInt TI32) (VLocal "v_esr") (VLocal "v_value") 16)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_is_kernel_in_hyp_mode :=
    {| fname := "is_kernel_in_hyp_mode";
       rettype := TBool;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_12") [ ])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_0") (VInt (8)))
             :: (IReturn TBool (Some (VLocal "v_cmp")))
             :: nil)) |}.

Definition f_v_search_load_info :=
    {| fname := "v_search_load_info";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_vm") [(VLocal "v_vmid")])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_next_load_idx") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp27_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp27_not")
                 ((IAssign (TInt TI64) "v_ret_0_lcssa" (VInt (0)))
                  :: nil)
                 ((IAssign (TInt TI32) "v_load_idx_029" (VInt (0)))
                  :: (IAssign (TInt TI64) "v_ret_028" (VInt (0)))
                  :: (ILoop
                        ((ICall (TInt TI64) (Some "v_call1") (VGlobal "get_vm_load_addr") [(VLocal "v_vmid"); (VLocal "v_load_idx_029")])
                         :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_vm_load_size") [(VLocal "v_vmid"); (VLocal "v_load_idx_029")])
                         :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "get_vm_remap_addr") [(VLocal "v_vmid"); (VLocal "v_load_idx_029")])
                         :: (IBinOp TBool "v_cmp4_not" Cule (VLocal "v_call1") (VLocal "v_addr"))
                         :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call2") (VLocal "v_call1"))
                         :: (IBinOp TBool "v_cmp5" Cugt (VLocal "v_add") (VLocal "v_addr"))
                         :: (ISelect TBool "v_or_cond" (VLocal "v_cmp4_not") (VLocal "v_cmp5") (VBool false))
                         :: (IBinOp (TInt TI64) "v_sub" OSub (VLocal "v_addr") (VLocal "v_call1"))
                         :: (IBinOp (TInt TI64) "v_add6" OAdd (VLocal "v_sub") (VLocal "v_call3"))
                         :: (ISelect (TInt TI64) "v_ret_1" (VLocal "v_or_cond") (VLocal "v_add6") (VLocal "v_ret_028"))
                         :: (IBinOp (TInt TI32) "v_add7" OAdd (VLocal "v_load_idx_029") (VInt (1)))
                         :: (IBinOp TBool "v_exitcond_not" Ceq (VLocal "v_add7") (VLocal "v_call"))
                         :: (IIf (VLocal "v_exitcond_not")
                             ((IAssign (TInt TI64) "v_ret_0_lcssa" (VLocal "v_ret_1"))
                              :: IBreak
                              :: nil)
                             ((IAssign (TInt TI32) "v_load_idx_029" (VLocal "v_add7"))
                              :: (IAssign (TInt TI64) "v_ret_028" (VLocal "v_ret_1"))
                              :: IContinue
                              :: nil))
                         :: nil))
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_vm") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0_lcssa")))
             :: nil)) |}.

Definition f_get_smmu_num :=
    {| fname := "get_smmu_num";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_el2_smmu_num" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (26))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_el2_smmu_num") 8)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_stage2_get_exception_vector :=
    {| fname := "stage2_get_exception_vector";
       rettype := (TInt TI64);
       fargs :=
        (("v_pstate", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_pstate") (VInt (31)))
             :: (IBinOp TBool "v_0" Cult (VLocal "v_and") (VInt (6)))
             :: (IIf (VLocal "v_0")
                 ((IGetElemPtr (TPtr (TInt TI64)) "v_switch_gep" (TPtr (TArray (TInt TI64) 6)) (VGlobal "switch.table.stage2_get_exception_vector") [(VInt (0)); (VLocal "v_and")])
                  :: (ILoad (TInt TI64) "v_switch_load" (VLocal "v_switch_gep") 8)
                  :: (IAssign (TInt TI64) "v_exc_offset_0" (VLocal "v_switch_load"))
                  :: nil)
                 ((IAssign (TInt TI64) "v_exc_offset_0" (VInt (1536)))
                  :: nil))
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_vbar_el1") [ ])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_1") (VLocal "v_exc_offset_0"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f_read_cpuid_mpidr :=
    {| fname := "read_cpuid_mpidr";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_13") [ ])
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_v_set_pmd :=
    {| fname := "v_set_pmd";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pgd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_pmd", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pgd") (VInt (281474976706560)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_pmd") (VInt (36028797018963968)))
             :: (IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (18)))
             :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
             :: (IBinOp (TInt TI64) "v_add" OOr (VLocal "v_mul") (VLocal "v_and1"))
             :: (ICall TVoid None (VGlobal "pt_store") [(VLocal "v_vmid"); (VLocal "v_add"); (VLocal "v_or")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_alloc_s2pt_pud :=
    {| fname := "alloc_s2pt_pud";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pud_next") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "pud_pool_end") [(VLocal "v_vmid")])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call") (VInt (4096)))
             :: (IBinOp TBool "v_cmp_not" Cugt (VLocal "v_add") (VLocal "v_call1"))
             :: (IIf (VLocal "v_cmp_not")
                 ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall TVoid None (VGlobal "set_pud_next") [(VLocal "v_vmid")])
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_set_pt_vttbr :=
    {| fname := "set_pt_vttbr";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vttbr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_vttbr1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (0))])
             :: (IStore (TInt TI64) (VLocal "v_vttbr1") (VLocal "v_vttbr") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_walk_pud :=
    {| fname := "walk_pud";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pgd", (TInt TI64))
         :: ("v_addr", (TInt TI64))
         :: ("v_alloc", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_pgd") (VInt (281474976706560)))
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_and1") (VInt (0)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_0" (VInt (0)))
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OLshr (VLocal "v_addr") (VInt (27)))
                  :: (IBinOp (TInt TI64) "v_mul" OAnd (VLocal "v_0") (VInt (4088)))
                  :: (IBinOp (TInt TI64) "v_add" OOr (VLocal "v_mul") (VLocal "v_and1"))
                  :: (ICall (TInt TI64) (Some "v_call") (VGlobal "pt_load") [(VLocal "v_vmid"); (VLocal "v_add")])
                  :: (IBinOp (TInt TI64) "v_and4" OAnd (VLocal "v_call") (VInt (281474976706560)))
                  :: (IBinOp TBool "v_cmp5" Ceq (VLocal "v_and4") (VInt (0)))
                  :: (IBinOp TBool "v_cmp6" Ceq (VLocal "v_alloc") (VInt (1)))
                  :: (IBinOp TBool "v_or_cond" OAnd (VLocal "v_cmp6") (VLocal "v_cmp5"))
                  :: (IIf (VLocal "v_or_cond")
                      ((ICall (TInt TI64) (Some "v_call8") (VGlobal "alloc_s2pt_pud") [(VLocal "v_vmid")])
                       :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_call8") (VInt (3)))
                       :: (ICall TVoid None (VGlobal "pt_store") [(VLocal "v_vmid"); (VLocal "v_add"); (VLocal "v_or")])
                       :: (IAssign (TInt TI64) "v_ret_0" (VLocal "v_or"))
                       :: nil)
                      ((IAssign (TInt TI64) "v_ret_0" (VLocal "v_call"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_set_smmu_pt :=
    {| fname := "set_smmu_pt";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_cfg_hw_ttbr") [(VLocal "v_cbndx"); (VLocal "v_num")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_smmu_pgd") [(VLocal "v_call"); (VLocal "v_addr"); (VInt (1))])
                  :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_smmu_pmd") [(VLocal "v_call1"); (VLocal "v_addr"); (VInt (1))])
                  :: (ICall TVoid None (VGlobal "set_smmu_pte") [(VLocal "v_call2"); (VLocal "v_addr"); (VLocal "v_pte")])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___kvm_vcpu_run_nvhe :=
    {| fname := "__kvm_vcpu_run_nvhe";
       rettype := (TInt TI32);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpu_id", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "hypsec_set_vcpu_active") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((IAssign (TInt TI32) "v_retval_0" (VInt (0)))
                  :: nil)
                 ((ICall TVoid None (VGlobal "set_per_cpu") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (ICall (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (Some "v_call1") (VGlobal "hypsec_vcpu_id_to_vcpu") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (ICall (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (Some "v_call2") (VGlobal "hypsec_vcpu_id_to_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call3") (VGlobal "get_el2_data_start") [ ])
                  :: (ICall (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) (Some "v_call4") (VGlobal "get_vcpu_host_cpu_context") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (ICall TVoid None (VGlobal "set_host_running_vcpu") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (IUnaryOp (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) "v_0" (OBitCast (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760))) (VLocal "v_call2"))
                  :: (ICall TVoid None (VGlobal "__sysreg_save_state_nvhe") [(VLocal "v_call4")])
                  :: (IUnaryOp (TInt TI64) "v_1" OPtrToInt (VLocal "v_call2"))
                  :: (ICall TVoid None (VGlobal "set_tpidr_el2") [(VLocal "v_1")])
                  :: (ICall TVoid None (VGlobal "restore_shadow_kvm_regs") [ ])
                  :: (ICall TVoid None (VGlobal "__activate_traps") [(VLocal "v_call1")])
                  :: (IBinOp (TInt TI32) "v_and" OAnd (VLocal "v_vmid") (VInt (255)))
                  :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_and"))
                  :: (ICall TVoid None (VGlobal "__activate_vm") [(VLocal "v_conv")])
                  :: (ICall TBool (Some "v_call5") (VGlobal "get_vcpu_was_preempted") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (IIf (VLocal "v_call5")
                      ((ICall TVoid None (VGlobal "hypsec_tlb_flush_local_vmid") [ ])
                       :: (ICall TVoid None (VGlobal "set_vcpu_was_preempted") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                       :: nil)
                      nil)
                  :: (ICall TVoid None (VGlobal "__timer_enable_traps") [(VLocal "v_call1")])
                  :: (ICall TVoid None (VGlobal "__sysreg32_restore_state") [(VLocal "v_call1")])
                  :: (ICall TVoid None (VGlobal "__vm_sysreg_restore_state_nvhe_opt") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)) "v_fp_regs" (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) (VLocal "v_call4") [(VInt (0)); (VInt (0)); (VInt (4))])
                  :: (ICall TVoid None (VGlobal "__fpsimd_save_state") [(VLocal "v_fp_regs")])
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.user_fpsimd_state" 528)) "v_fp_regs8" (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (VLocal "v_call2") [(VInt (0)); (VInt (8))])
                  :: (ICall TVoid None (VGlobal "__fpsimd_restore_state") [(VLocal "v_fp_regs8")])
                  :: (ILoop
                        ((ICall (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)) (Some "v_call9") (VGlobal "get_core_context") [ ])
                         :: (ICall (TInt TI64) (Some "v_call10") (VGlobal "__guest_enter") [(VLocal "v_0"); (VLocal "v_call9")])
                         :: (ICall TBool (Some "v_call11") (VGlobal "fixup_guest_exit") [(VLocal "v_vmid"); (VLocal "v_vcpu_id"); (VLocal "v_call10")])
                         :: (IIf (VLocal "v_call11")
                             (IContinue
                              :: nil)
                             ((ICall TVoid None (VGlobal "__vm_sysreg_save_state_nvhe_opt") [(VLocal "v_vmid"); (VLocal "v_vcpu_id")])
                              :: (ICall TVoid None (VGlobal "__sysreg32_save_state") [(VLocal "v_call1")])
                              :: (ICall TVoid None (VGlobal "__timer_disable_traps") [(VLocal "v_call1")])
                              :: (ICall TVoid None (VGlobal "__deactivate_traps") [ ])
                              :: (ICall TVoid None (VGlobal "__host_el2_restore_state") [ ])
                              :: (ICall TVoid None (VGlobal "__sysreg_restore_state_nvhe") [(VLocal "v_call4")])
                              :: (ICall TVoid None (VGlobal "__fpsimd_save_state") [(VLocal "v_fp_regs8")])
                              :: (ICall TVoid None (VGlobal "__fpsimd_restore_state") [(VLocal "v_fp_regs")])
                              :: (ICall TVoid None (VGlobal "set_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpu_id"); (VInt (44)); (VLocal "v_call10")])
                              :: (ICall TVoid None (VGlobal "save_shadow_kvm_regs") [ ])
                              :: (ICall (TInt TI32) (Some "v_call15") (VGlobal "get_cpuid") [ ])
                              :: (ICall TVoid None (VGlobal "set_per_cpu") [(VInt (0)); (VLocal "v_call15")])
                              :: (ICall TVoid None (VGlobal "hypsec_set_vcpu_state") [(VLocal "v_vmid"); (VLocal "v_vcpu_id"); (VInt (2))])
                              :: (IUnaryOp (TInt TI32) "v_conv16" (OTrunc (TInt TI32)) (VLocal "v_call10"))
                              :: (IAssign (TInt TI32) "v_retval_0" (VLocal "v_conv16"))
                              :: IBreak
                              :: nil))
                         :: nil))
                  :: nil))
             :: (IReturn (TInt TI32) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f___raw_writel :=
    {| fname := "__raw_writel";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI32))
         :: ("v_addr", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_4_str") [(VLocal "v_val"); (VLocal "v_addr")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___deactivate_traps_nvhe :=
    {| fname := "__deactivate_traps_nvhe";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "__deactivate_traps_common") [ ])
             :: (ICall TVoid None (VGlobal "set_mdcr_el2") [ ])
             :: (ICall TVoid None (VGlobal "set_cptr_el2") [(VInt (13055))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_per_cpu_host_regs :=
    {| fname := "set_per_cpu_host_regs";
       rettype := TVoid;
       fargs :=
        (("v_hr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.s2_host_regs" 256)) "v_0" (OIntToPtr (TPtr (TNamedStruct "struct.s2_host_regs" 256))) (VLocal "v_hr"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.s2_host_regs" 256))) "v_host_regs" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (3))])
             :: (IStore (TPtr (TNamedStruct "struct.s2_host_regs" 256)) (VLocal "v_host_regs") (VLocal "v_0") 16)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_pfn_count :=
    {| fname := "set_pfn_count";
       rettype := TVoid;
       fargs :=
        (("v_pfn", (TInt TI64))
         :: ("v_count", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_pfn") (VInt (12)))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_s2_page_index") [(VLocal "v_mul")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 nil
                 ((ICall TVoid None (VGlobal "set_s2_page_count") [(VLocal "v_call"); (VLocal "v_count")])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_dabt_is_write :=
    {| fname := "host_dabt_is_write";
       rettype := TBool;
       fargs :=
        (("v_hsr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_0" OAnd (VLocal "v_hsr") (VInt (64)))
             :: (IBinOp TBool "v_tobool" Cne (VLocal "v_0") (VInt (0)))
             :: (IReturn TBool (Some (VLocal "v_tobool")))
             :: nil)) |}.

Definition f_get_shared_kvm :=
    {| fname := "get_shared_kvm";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_2"))
             :: (ISelect (TInt TI64) "v_3" (VLocal "v_call") (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_sub1"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IBinOp (TInt TI64) "v_mul" OMul (VLocal "v_conv") (VInt (8824)))
             :: (IBinOp (TInt TI64) "v_add3" OAdd (VLocal "v_3") (VLocal "v_mul"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add3")))
             :: nil)) |}.

Definition f_llvm_lifetime_start_p0i8 :=
    {| fname := "llvm.lifetime.start.p0i8";
       rettype := TVoid;
       fargs :=
        (("v_0", (TInt TI64))
         :: ("v_1", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_get_host_regs :=
    {| fname := "get_host_regs";
       rettype := (TInt TI64);
       fargs :=
        (("v_nr", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cpuid") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_call1"))
             :: (IGetElemPtr (TPtr (TPtr (TNamedStruct "struct.s2_host_regs" 256))) "v_host_regs" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (30)); (VLocal "v_idxprom"); (VInt (3))])
             :: (ILoad (TPtr (TNamedStruct "struct.s2_host_regs" 256)) "v_0" (VLocal "v_host_regs") 16)
             :: (IUnaryOp (TInt TI64) "v_idxprom2" (OSExt (TInt TI64)) (VLocal "v_nr"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx3" (TPtr (TNamedStruct "struct.s2_host_regs" 256)) (VLocal "v_0") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom2")])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_arrayidx3") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_1")))
             :: nil)) |}.

Definition f_grant_vm_page :=
    {| fname := "grant_vm_page";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_pfn_count") [(VLocal "v_pfn")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VLocal "v_vmid"))
             :: (IBinOp TBool "v_cmp2" Cult (VLocal "v_call1") (VInt (100)))
             :: (ISelect TBool "v_or_cond" (VLocal "v_cmp") (VLocal "v_cmp2") (VBool false))
             :: (IIf (VLocal "v_or_cond")
                 ((IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_call1") (VInt (1)))
                  :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn"); (VLocal "v_add")])
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_handle_smmu_read :=
    {| fname := "handle_smmu_read";
       rettype := TVoid;
       fargs :=
        (("v_hsr", (TInt TI32))
         :: ("v_fault_ipa", (TInt TI64))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "__handle_smmu_read") [(VLocal "v_hsr"); (VLocal "v_fault_ipa"); (VLocal "v_len")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_hyp_panic :=
    {| fname := "hyp_panic";
       rettype := TVoid;
       fargs :=
        (("v_host_ctxt", (TPtr (TNamedStruct "struct.kvm_cpu_context" 1760)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_set_npt :=
    {| fname := "set_npt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: ("v_level", (TInt TI32))
         :: ("v_pte", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pt_vttbr") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_pgd") [(VLocal "v_vmid"); (VLocal "v_call"); (VLocal "v_addr"); (VInt (1))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_pud") [(VLocal "v_vmid"); (VLocal "v_call1"); (VLocal "v_addr"); (VInt (1))])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_level") (VInt (2)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI64) (Some "v_call3") (VGlobal "walk_pmd") [(VLocal "v_vmid"); (VLocal "v_call2"); (VLocal "v_addr"); (VInt (0))])
                  :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call3") (VInt (3)))
                  :: (IBinOp TBool "v_cmp4" Ceq (VLocal "v_and") (VInt (3)))
                  :: (IIf (VLocal "v_cmp4")
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil)
                      ((ICall TVoid None (VGlobal "v_set_pmd") [(VLocal "v_vmid"); (VLocal "v_call2"); (VLocal "v_addr"); (VLocal "v_pte")])
                       :: nil))
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call7") (VGlobal "walk_pmd") [(VLocal "v_vmid"); (VLocal "v_call2"); (VLocal "v_addr"); (VInt (1))])
                  :: (IBinOp (TInt TI64) "v_and8" OAnd (VLocal "v_call7") (VInt (3)))
                  :: (IBinOp TBool "v_cmp9" Ceq (VLocal "v_and8") (VInt (3)))
                  :: (IIf (VLocal "v_cmp9")
                      ((ICall TVoid None (VGlobal "v_set_pte") [(VLocal "v_vmid"); (VLocal "v_call7"); (VLocal "v_addr"); (VLocal "v_pte")])
                       :: nil)
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_pgd_pool_end :=
    {| fname := "pgd_pool_end";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (69632)))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add")))
             :: nil)) |}.

Definition f___el2_arm_lpae_iova_to_phys :=
    {| fname := "__el2_arm_lpae_iova_to_phys";
       rettype := (TInt TI64);
       fargs :=
        (("v_iova", (TInt TI64))
         :: ("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "walk_spt") [(VLocal "v_cbndx"); (VLocal "v_index"); (VLocal "v_iova")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IBinOp (TInt TI64) "v_and1" OAnd (VLocal "v_call") (VInt (281474976706560)))
             :: (IBinOp (TInt TI64) "v_rem" OAnd (VLocal "v_iova") (VInt (4095)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and1") (VLocal "v_rem"))
             :: (ISelect (TInt TI64) "v_ret_0" (VLocal "v_cmp") (VInt (0)) (VLocal "v_or"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_0")))
             :: nil)) |}.

Definition f_protect_el2_mem :=
    {| fname := "protect_el2_mem";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_core_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (31))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_core_start") 16)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_core_end" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (32))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_core_end") 8)
             :: (IAssign (TInt TI64) "v_addr_0" (VLocal "v_0"))
             :: (ILoop
                   ((ICall (TInt TI64) (Some "v_call1") (VGlobal "get_s2_page_index") [(VLocal "v_addr_0")])
                    :: (ICall TVoid None (VGlobal "set_s2_page_vmid") [(VLocal "v_call1"); (VInt (18))])
                    :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_addr_0") (VInt (4096)))
                    :: (IBinOp TBool "v_cmp" Cult (VLocal "v_add") (VLocal "v_1"))
                    :: (IIf (VLocal "v_cmp")
                        ((IAssign (TInt TI64) "v_addr_0" (VLocal "v_add"))
                         :: nil)
                        ((IReturn TVoid None)
                         :: nil))
                    :: IContinue
                    :: nil))
             :: nil)) |}.

Definition f_get_pgd_next :=
    {| fname := "get_pgd_next";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pud_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (19))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_pud_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_1") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (4096)))
             :: (IBinOp (TInt TI64) "v_add4" OAdd (VLocal "v_add") (VLocal "v_mul"))
             :: (IReturn (TInt TI64) (Some (VLocal "v_add4")))
             :: nil)) |}.

Definition f_smmu_pt_store :=
    {| fname := "smmu_pt_store";
       rettype := TVoid;
       fargs :=
        (("v_addr", (TInt TI64))
         :: ("v_value", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_addr") (VInt (1099511627775)))
             :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_and") (VInt (5497558138880)))
             :: (IUnaryOp (TPtr (TInt TI64)) "v_0" (OIntToPtr (TPtr (TInt TI64))) (VLocal "v_or"))
             :: (IStore (TInt TI64) (VLocal "v_0") (VLocal "v_value") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_save_shadow_kvm_regs :=
    {| fname := "save_shadow_kvm_regs";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_cur_vmid") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cur_vcpu_id") [ ])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (44))])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call2") (VInt (2)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall (TInt TI32) (Some "v_call3") (VGlobal "get_shadow_esr") [(VLocal "v_call"); (VLocal "v_call1")])
                  :: (IBinOp (TInt TI32) "v_0" OLshr (VLocal "v_call3") (VInt (26)))
                  :: (IIf (VExpr TBool Ceq [(VLocal "v_0"); (VInt (60))])
                      ((ICall TVoid None (VGlobal "prep_wfx") [(VLocal "v_call"); (VLocal "v_call1")])
                       :: nil)
                      ((IIf (VExpr TBool Ceq [(VLocal "v_0"); (VInt (1))])
                           ((ICall TVoid None (VGlobal "prep_wfx") [(VLocal "v_call"); (VLocal "v_call1")])
                            :: nil)
                           ((IIf (VExpr TBool Ceq [(VLocal "v_0"); (VInt (18))])
                                ((ICall TVoid None (VGlobal "prep_hvc") [(VLocal "v_call"); (VLocal "v_call1")])
                                 :: nil)
                                ((IIf (VExpr TBool Ceq [(VLocal "v_0"); (VInt (22))])
                                     ((ICall TVoid None (VGlobal "prep_hvc") [(VLocal "v_call"); (VLocal "v_call1")])
                                      :: nil)
                                     ((IIf (VExpr TBool Ceq [(VLocal "v_0"); (VInt (32))])
                                          ((ICall TVoid None (VGlobal "prep_abort") [(VLocal "v_call"); (VLocal "v_call1")])
                                           :: nil)
                                          ((IIf (VExpr TBool Ceq [(VLocal "v_0"); (VInt (36))])
                                               ((ICall TVoid None (VGlobal "prep_abort") [(VLocal "v_call"); (VLocal "v_call1")])
                                                :: nil)
                                               ((ICall TVoid None (VGlobal "v_panic") [ ])
                                                :: nil))
                                           :: nil))
                                      :: nil))
                                 :: nil))
                            :: nil))
                       :: nil))
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_power :=
    {| fname := "set_vm_power";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_powered_on" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (15))])
             :: (IStore (TInt TI8) (VLocal "v_powered_on") (VInt (0)) 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___handle_smmu_read :=
    {| fname := "__handle_smmu_read";
       rettype := TVoid;
       fargs :=
        (("v_hsr", (TInt TI32))
         :: ("v_fault_ipa", (TInt TI64))
         :: ("v_len", (TInt TI32))
         :: nil);
       falloca_vars := ("v_data_32" :: "v_val" :: nil);
       fbody := 
        (Some 
            ((IAlloca (TPtr (TInt TI64)) "v_val" 8)
             :: (IAlloca (TPtr (TInt TI32)) "v_data_32" 4)
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "host_dabt_get_rd") [(VLocal "v_hsr")])
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OBitCast (TPtr (TInt TI8))) (VLocal "v_val"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_1" (OBitCast (TPtr (TInt TI8))) (VLocal "v_data_32"))
             :: (IIf (VExpr TBool Ceq [(VLocal "v_len"); (VInt (4))])
                 ((IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_fault_ipa"))
                  :: (ICall (TInt TI32) (Some "v_call5") (VGlobal "__raw_readl") [(VLocal "v_3")])
                  :: (IStore (TInt TI32) (VLocal "v_data_32") (VLocal "v_call5") 4)
                  :: (ICall (TInt TI64) (Some "v_call7") (VGlobal "get_host_regs") [(VLocal "v_call")])
                  :: (IStore (TInt TI64) (VLocal "v_val") (VLocal "v_call7") 8)
                  :: (ICall TVoid None (VGlobal "el2_memcpy") [(VLocal "v_0"); (VLocal "v_1"); (VInt (4))])
                  :: (ILoad (TInt TI64) "v_4" (VLocal "v_val") 8)
                  :: (ICall TVoid None (VGlobal "set_host_regs") [(VLocal "v_call"); (VLocal "v_4")])
                  :: nil)
                 ((IIf (VExpr TBool Ceq [(VLocal "v_len"); (VInt (8))])
                      ((IUnaryOp (TPtr (TInt TI8)) "v_2" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_fault_ipa"))
                       :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "__raw_readq") [(VLocal "v_2")])
                       :: (ICall TVoid None (VGlobal "set_host_regs") [(VLocal "v_call"); (VLocal "v_call1")])
                       :: nil)
                      ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_len"))
                       :: (ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_pmuserenr_el0 :=
    {| fname := "set_pmuserenr_el0";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_set_pmuserenr_el0") [(VLocal "v_val")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_init_hypsec_io :=
    {| fname := "init_hypsec_io";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_pl011_base" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1080))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_4" (OBitCast (TPtr (TInt TI64))) (VLocal "v_pl011_base"))
             :: (ILoad (TInt TI64) "v_5" (VLocal "v_4") 8)
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_5") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((IStore (TInt TI64) (VLocal "v_4") (VInt (4263514112)) 8)
                  :: nil)
                 nil)
             :: (ILoad (TInt TI64) "v_6" (VLocal "v_4") 8)
             :: (ICall (TInt TI32) (Some "v_call8") (VGlobal "create_hypsec_io_mappings") [(VLocal "v_6"); (VInt (4096)); (VLocal "v_4")])
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_call8") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 nil
                 ((ICall (TInt TI64) (Some "v_7") (VGlobal "iasm_get_sp_el0") [ ])
                  :: (IUnaryOp (TPtr (TNamedStruct "struct.task_struct" 0)) "v_8" (OIntToPtr (TPtr (TNamedStruct "struct.task_struct" 0))) (VLocal "v_7"))
                  :: (ICall (TInt TI32) (Some "v_call11") (VGlobal "task_pid_nr") [(VLocal "v_8")])
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___populate_fault_info :=
    {| fname := "__populate_fault_info";
       rettype := TBool;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_esr", (TInt TI32))
         :: nil);
       falloca_vars := ("v_hpfar" :: nil);
       fbody := 
        (Some 
            ((IAlloca (TPtr (TInt TI64)) "v_hpfar" 8)
             :: (IUnaryOp (TPtr (TInt TI8)) "v_0" (OBitCast (TPtr (TInt TI8))) (VLocal "v_hpfar"))
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "get_far_el2") [ ])
             :: (ICall (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (Some "v_call1") (VGlobal "hypsec_vcpu_id_to_vcpu") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (Some "v_call2") (VGlobal "hypsec_vcpu_id_to_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IBinOp (TInt TI32) "v_1" OAnd (VLocal "v_esr") (VInt (128)))
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_1") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((ICall TBool (Some "v_call7") (VGlobal "__translate_far_to_hpfar") [(VLocal "v_call"); (VLocal "v_hpfar")])
                  :: (IIf (VLocal "v_call7")
                      nil
                      ((IAssign TBool "v_retval_0" (VBool false))
                       :: (IReturn TBool (Some (VLocal "v_retval_0")))
                       :: nil))
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call9") (VGlobal "get_hpfar_el2") [ ])
                  :: (IStore (TInt TI64) (VLocal "v_hpfar") (VLocal "v_call9") 8)
                  :: nil))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_far_el2" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_call1") [(VInt (0)); (VInt (29)); (VInt (8)); (VInt (1))])
             :: (IStore (TInt TI64) (VLocal "v_far_el2") (VLocal "v_call") 8)
             :: (ILoad (TInt TI64) "v_2" (VLocal "v_hpfar") 8)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_hpfar_el2" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_call1") [(VInt (0)); (VInt (29)); (VInt (8)); (VInt (2))])
             :: (IStore (TInt TI64) (VLocal "v_hpfar_el2") (VLocal "v_2") 16)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_far_el213" (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (VLocal "v_call2") [(VInt (0)); (VInt (1))])
             :: (IStore (TInt TI64) (VLocal "v_far_el213") (VLocal "v_call") 8)
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_hpfar14" (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (VLocal "v_call2") [(VInt (0)); (VInt (2))])
             :: (IStore (TInt TI64) (VLocal "v_hpfar14") (VLocal "v_2") 16)
             :: (IBinOp (TInt TI32) "v_and15" OAnd (VLocal "v_esr") (VInt (60)))
             :: (IBinOp TBool "v_cmp16" Ceq (VLocal "v_and15") (VInt (4)))
             :: (IIf (VLocal "v_cmp16")
                 ((IBinOp (TInt TI64) "v_and19" OShl (VLocal "v_2") (VInt (8)))
                  :: (IBinOp (TInt TI64) "v_shl" OAnd (VLocal "v_and19") (VInt (18446744073709547520)))
                  :: (ICall TBool (Some "v_call20") (VGlobal "is_mmio_gpa") [(VLocal "v_shl")])
                  :: (IIf (VLocal "v_call20")
                      ((IAssign TBool "v_retval_0" (VBool true))
                       :: nil)
                      ((IGetElemPtr (TPtr (TNamedStruct "struct.s2_trans" 32)) "v_walk_result" (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)) (VLocal "v_call1") [(VInt (0)); (VInt (29)); (VInt (2))])
                       :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OBitCast (TPtr (TInt TI8))) (VLocal "v_walk_result"))
                       :: (ICall TVoid None (VGlobal "el2_memset") [(VLocal "v_3"); (VInt (0)); (VInt (32))])
                       :: (IGetElemPtr (TPtr (TInt TI64)) "v_flags" (TPtr (TNamedStruct "struct.shadow_vcpu_context" 1808)) (VLocal "v_call2") [(VInt (0)); (VInt (6))])
                       :: (ILoad (TInt TI64) "v_4" (VLocal "v_flags") 16)
                       :: (IBinOp (TInt TI64) "v_or" OOr (VLocal "v_4") (VInt (2)))
                       :: (IStore (TInt TI64) (VLocal "v_flags") (VLocal "v_or") 16)
                       :: (IAssign TBool "v_retval_0" (VBool true))
                       :: nil))
                  :: nil)
                 ((IAssign TBool "v_retval_0" (VBool true))
                  :: nil))
             :: (IReturn TBool (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_assign_pfn_to_smmu :=
    {| fname := "assign_pfn_to_smmu";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_gfn", (TInt TI64))
         :: ("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_pfn_count") [(VLocal "v_pfn")])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_pfn_map") [(VLocal "v_pfn")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((IBinOp TBool "v_cmp3" Ceq (VLocal "v_call1") (VInt (0)))
                  :: (IIf (VLocal "v_cmp3")
                      ((ICall TVoid None (VGlobal "clear_pfn_host") [(VLocal "v_pfn")])
                       :: (ICall TVoid None (VGlobal "set_pfn_owner") [(VLocal "v_pfn"); (VLocal "v_vmid")])
                       :: (ICall TVoid None (VGlobal "set_pfn_map") [(VLocal "v_pfn"); (VLocal "v_gfn")])
                       :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn"); (VInt (-1))])
                       :: nil)
                      ((ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil))
                  :: nil)
                 ((IBinOp TBool "v_cmp6" Cne (VLocal "v_call") (VLocal "v_vmid"))
                  :: (IBinOp TBool "v_cmp8" Cne (VLocal "v_call") (VInt (-1)))
                  :: (IBinOp TBool "v_or_cond" OAnd (VLocal "v_cmp6") (VLocal "v_cmp8"))
                  :: (IIf (VLocal "v_or_cond")
                      ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                       :: (IUnaryOp (TInt TI64) "v_conv10" (OZExt (TInt TI64)) (VLocal "v_call"))
                       :: (ICall TVoid None (VGlobal "v_panic") [ ])
                       :: nil)
                      nil)
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_hypsec_alloc_vm :=
    {| fname := "hypsec_alloc_vm";
       rettype := (TPtr (TNamedStruct "struct.kvm" 8824));
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (IBinOp TBool "v_cmp" Cugt (VLocal "v_vmid") (VInt (17)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "iasm_11") [ ])
                  :: nil)
                 ((ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
                  :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
                  :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
                  :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_2"))
                  :: (IUnaryOp (TPtr (TArray (TNamedStruct "struct.kvm" 8824) 18)) "v_3" (OIntToPtr (TPtr (TArray (TNamedStruct "struct.kvm" 8824) 18))) (VLocal "v_sub1"))
                  :: (ISelect (TPtr (TArray (TNamedStruct "struct.kvm" 8824) 18)) "v_kvm_pool" (VLocal "v_call") (VExpr (TPtr (TArray (TNamedStruct "struct.kvm" 8824) 18)) (OBitCast (TPtr (TArray (TNamedStruct "struct.kvm" 8824) 18))) [(VGlobal "shared_data_start")]) (VLocal "v_3"))
                  :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (IGetElemPtr (TPtr (TNamedStruct "struct.kvm" 8824)) "v_arrayidx" (TPtr (TArray (TNamedStruct "struct.kvm" 8824) 18)) (VLocal "v_kvm_pool") [(VInt (0)); (VLocal "v_idxprom")])
                  :: (IReturn (TPtr (TNamedStruct "struct.kvm" 8824)) (Some (VLocal "v_arrayidx")))
                  :: nil))
             :: nil)) |}.

Definition f_set_vcpu_was_preempted :=
    {| fname := "set_vcpu_was_preempted";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_was_preempted" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (1))])
             :: (IStore (TInt TI8) (VLocal "v_was_preempted") (VInt (0)) 4)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_next_vmid :=
    {| fname := "get_next_vmid";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_next_vmid" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (27))])
             :: (ILoad (TInt TI32) "v_0" (VLocal "v_next_vmid") 4)
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_v_panic :=
    {| fname := "v_panic";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_cur_vmid") [ ])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_cur_vcpu_id") [ ])
             :: (IBinOp TBool "v_tobool_not" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_elr_el2") [ ])
                  :: (IAssign (TInt TI64) "v__sink" (VLocal "v_0"))
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shadow_ctxt") [(VLocal "v_call"); (VLocal "v_call1"); (VInt (32))])
                  :: (IAssign (TInt TI64) "v__sink" (VLocal "v_call2"))
                  :: nil))
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_esr_el2") [ ])
             :: (IBinOp (TInt TI64) "v_and" OLshr (VLocal "v_1") (VInt (26)))
             :: (IBinOp (TInt TI64) "v_shr" OAnd (VLocal "v_and") (VInt (63)))
             :: (ICall TVoid None (VGlobal "iasm_6_isb") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___raw_readl :=
    {| fname := "__raw_readl";
       rettype := (TInt TI32);
       fargs :=
        (("v_addr", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_0") (VGlobal "iasm_3_ldr") [(VLocal "v_addr")])
             :: (IReturn (TInt TI32) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_alloc_smmu_pgd_page :=
    {| fname := "alloc_smmu_pgd_page";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_pgd_next") [ ])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "smmu_pgd_end") [ ])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call") (VInt (4096)))
             :: (IBinOp TBool "v_cmp_not" Cugt (VLocal "v_add") (VLocal "v_call1"))
             :: (IIf (VLocal "v_cmp_not")
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall TVoid None (VGlobal "set_smmu_pgd_next") [ ])
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_revoke_vm_page :=
    {| fname := "revoke_vm_page";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_pfn", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_s2page") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_pfn_owner") [(VLocal "v_pfn")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_pfn_count") [(VLocal "v_pfn")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VLocal "v_vmid"))
             :: (IBinOp TBool "v_cmp2" Cne (VLocal "v_call1") (VInt (0)))
             :: (ISelect TBool "v_or_cond" (VLocal "v_cmp") (VLocal "v_cmp2") (VBool false))
             :: (IIf (VLocal "v_or_cond")
                 ((IBinOp (TInt TI32) "v_sub" OAdd (VLocal "v_call1") (VInt (-1)))
                  :: (ICall TVoid None (VGlobal "set_pfn_count") [(VLocal "v_pfn"); (VLocal "v_sub")])
                  :: (IBinOp TBool "v_cmp3" Ceq (VLocal "v_call1") (VInt (1)))
                  :: (IIf (VLocal "v_cmp3")
                      ((ICall TVoid None (VGlobal "clear_pfn_host") [(VLocal "v_pfn")])
                       :: nil)
                      nil)
                  :: nil)
                 nil)
             :: (ICall TVoid None (VGlobal "release_lock_s2page") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_alloc_pgd :=
    {| fname := "host_alloc_pgd";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_abs_lock" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1100))])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_4" (OBitCast (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4))) (VLocal "v_abs_lock"))
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_4")])
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33700976))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_5" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start"))
             :: (ILoad (TInt TI64) "v_6" (VLocal "v_5") 8)
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_4")])
             :: (IBinOp TBool "v_cmp_not" Cult (VLocal "v_6") (VInt (18446744073709547520)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IReturn (TInt TI64) (Some (VLocal "v_6")))
                  :: nil)
                 ((ICall TVoid None (VGlobal "iasm_11") [ ])
                  :: nil))
             :: nil)) |}.

Definition f_get_exception_vector :=
    {| fname := "get_exception_vector";
       rettype := (TInt TI64);
       fargs :=
        (("v_pstate", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IReturn (TInt TI64) (Some (VInt (0))))
             :: nil)) |}.

Definition f_set_int_gpr :=
    {| fname := "set_int_gpr";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_value", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (ICall (TPtr (TNamedStruct "struct.shared_data" 810864)) (Some "v_call") (VGlobal "get_shared_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IUnaryOp (TInt TI64) "v_idxprom2" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx3" (TPtr (TNamedStruct "struct.shared_data" 810864)) (VLocal "v_call") [(VInt (0)); (VInt (1)); (VLocal "v_idxprom"); (VInt (29)); (VInt (3)); (VInt (0)); (VInt (0)); (VInt (0)); (VLocal "v_idxprom2")])
             :: (IStore (TInt TI64) (VLocal "v_arrayidx3") (VLocal "v_value") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_alloc_stage2_page :=
    {| fname := "host_alloc_stage2_page";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IBinOp TBool "v_tobool_not" Ceq (VLocal "v_num") (VInt (0)))
             :: (IIf (VLocal "v_tobool_not")
                 ((IAssign (TInt TI64) "v_retval_0" (VInt (0)))
                  :: nil)
                 ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
                  :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
                  :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
                  :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
                  :: (IBinOp (TInt TI64) "v_sub2" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
                  :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub2"))
                  :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
                  :: (IGetElemPtr (TPtr (TInt TI8)) "v_abs_lock" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1100))])
                  :: (IUnaryOp (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_4" (OBitCast (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4))) (VLocal "v_abs_lock"))
                  :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_4")])
                  :: (IGetElemPtr (TPtr (TInt TI8)) "v_used_pages5" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33700984))])
                  :: (IUnaryOp (TPtr (TInt TI64)) "v_5" (OBitCast (TPtr (TInt TI64))) (VLocal "v_used_pages5"))
                  :: (ILoad (TInt TI64) "v_6" (VLocal "v_5") 8)
                  :: (IBinOp TBool "v_cmp" Cugt (VLocal "v_6") (VInt (9)))
                  :: (IIf (VLocal "v_cmp")
                      ((ICall TVoid None (VGlobal "iasm_11") [ ])
                       :: nil)
                      ((IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1048))])
                       :: (IUnaryOp (TPtr (TInt TI64)) "v_7" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start"))
                       :: (ILoad (TInt TI64) "v_8" (VLocal "v_7") 8)
                       :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_6") (VInt (12)))
                       :: (IBinOp (TInt TI64) "v_add19" OAdd (VLocal "v_8") (VLocal "v_mul"))
                       :: (IUnaryOp (TInt TI64) "v_conv20" (OZExt (TInt TI64)) (VLocal "v_num"))
                       :: (IBinOp (TInt TI64) "v_mul21" OShl (VLocal "v_conv20") (VInt (12)))
                       :: (IBinOp (TInt TI64) "v_rem" OUrem (VLocal "v_add19") (VLocal "v_mul21"))
                       :: (IBinOp TBool "v_tobool22_not" Ceq (VLocal "v_rem") (VInt (0)))
                       :: (IIf (VLocal "v_tobool22_not")
                           ((IAssign (TInt TI64) "v_p_addr_0" (VLocal "v_add19"))
                            :: (IAssign (TInt TI32) "v_num_addr_0" (VLocal "v_num"))
                            :: nil)
                           ((IBinOp (TInt TI64) "v_shr" OLshr (VLocal "v_rem") (VInt (12)))
                            :: (IBinOp (TInt TI64) "v_sub25" OSub (VLocal "v_conv20") (VLocal "v_shr"))
                            :: (IBinOp (TInt TI64) "v_mul26" OShl (VLocal "v_sub25") (VInt (12)))
                            :: (IBinOp (TInt TI64) "v_add27" OAdd (VLocal "v_mul26") (VLocal "v_add19"))
                            :: (IUnaryOp (TInt TI32) "v_9" (OTrunc (TInt TI32)) (VLocal "v_sub25"))
                            :: (IBinOp (TInt TI32) "v_conv30" OAdd (VLocal "v_9") (VLocal "v_num"))
                            :: (IAssign (TInt TI64) "v_p_addr_0" (VLocal "v_add27"))
                            :: (IAssign (TInt TI32) "v_num_addr_0" (VLocal "v_conv30"))
                            :: nil))
                       :: (IUnaryOp (TInt TI64) "v_conv32" (OZExt (TInt TI64)) (VLocal "v_num_addr_0"))
                       :: (IBinOp (TInt TI64) "v_add36" OAdd (VLocal "v_6") (VLocal "v_conv32"))
                       :: (IStore (TInt TI64) (VLocal "v_5") (VLocal "v_add36") 8)
                       :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_4")])
                       :: (IAssign (TInt TI64) "v_retval_0" (VLocal "v_p_addr_0"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_retval_0")))
             :: nil)) |}.

Definition f_set_pgd_next :=
    {| fname := "set_pgd_next";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_pud_used_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (19))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_pud_used_pages") 8)
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_0") (VInt (1)))
             :: (IStore (TInt TI64) (VLocal "v_pud_used_pages") (VLocal "v_add") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_stage2_inject_el1_fault :=
    {| fname := "stage2_inject_el1_fault";
       rettype := TVoid;
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_0") (VGlobal "iasm_get_spsr_el2") [ ])
             :: (ICall (TInt TI64) (Some "v_1") (VGlobal "iasm_get_elr_el2") [ ])
             :: (ICall TVoid None (VGlobal "iasm_set_elr_el1") [(VLocal "v_1")])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "stage2_get_exception_vector") [(VLocal "v_0")])
             :: (ICall TVoid None (VGlobal "iasm_set_elr_el2") [(VLocal "v_call")])
             :: (ICall TVoid None (VGlobal "iasm_set_far_el1") [(VLocal "v_addr")])
             :: (ICall TVoid None (VGlobal "iasm_set_spsr_el2") [(VInt (11))])
             :: (ICall TVoid None (VGlobal "iasm_set_spsr_el1") [(VLocal "v_0")])
             :: (ICall (TInt TI64) (Some "v_2") (VGlobal "iasm_get_esr_el2") [ ])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_0") (VInt (15)))
             :: (IBinOp TBool "v_cmp23" Ceq (VLocal "v_and") (VInt (0)))
             :: (ISelect (TInt TI64) "v_esr_0" (VLocal "v_cmp23") (VInt (2415919120)) (VInt (2483027984)))
             :: (ICall TVoid None (VGlobal "iasm_set_esr_el1") [(VLocal "v_esr_0")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___vm_sysreg_restore_el1_state :=
    {| fname := "__vm_sysreg_restore_el1_state";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IBinOp (TInt TI32) "v_mul" OShl (VLocal "v_vmid") (VInt (2)))
             :: (IBinOp (TInt TI32) "v_add" OAdd (VLocal "v_mul") (VLocal "v_vcpuid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OSExt (TInt TI64)) (VLocal "v_add"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_arrayidx1") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_vmpidr_el2") [(VLocal "v_0")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx5" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (2))])
             :: (ILoad (TInt TI64) "v_1" (VLocal "v_arrayidx5") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_csselr_el1") [(VLocal "v_1")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx11" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (3))])
             :: (ILoad (TInt TI64) "v_2" (VLocal "v_arrayidx11") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_sctlr_el1") [(VLocal "v_2")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx17" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (4))])
             :: (ILoad (TInt TI64) "v_3" (VLocal "v_arrayidx17") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_actlr_el1") [(VLocal "v_3")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx23" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (5))])
             :: (ILoad (TInt TI64) "v_4" (VLocal "v_arrayidx23") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_cpacr_el1") [(VLocal "v_4")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx29" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (7))])
             :: (ILoad (TInt TI64) "v_5" (VLocal "v_arrayidx29") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_ttbr0_el1") [(VLocal "v_5")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx35" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (8))])
             :: (ILoad (TInt TI64) "v_6" (VLocal "v_arrayidx35") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_ttbr1_el1") [(VLocal "v_6")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx41" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (9))])
             :: (ILoad (TInt TI64) "v_7" (VLocal "v_arrayidx41") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_tcr_el1") [(VLocal "v_7")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx47" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (10))])
             :: (ILoad (TInt TI64) "v_8" (VLocal "v_arrayidx47") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_esr_el1") [(VLocal "v_8")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx53" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (11))])
             :: (ILoad (TInt TI64) "v_9" (VLocal "v_arrayidx53") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_afsr0_el1") [(VLocal "v_9")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx59" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (12))])
             :: (ILoad (TInt TI64) "v_10" (VLocal "v_arrayidx59") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_afsr1_el1") [(VLocal "v_10")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx65" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (13))])
             :: (ILoad (TInt TI64) "v_11" (VLocal "v_arrayidx65") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_far_el1") [(VLocal "v_11")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx71" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (14))])
             :: (ILoad (TInt TI64) "v_12" (VLocal "v_arrayidx71") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_mair_el1") [(VLocal "v_12")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx77" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (15))])
             :: (ILoad (TInt TI64) "v_13" (VLocal "v_arrayidx77") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_vbar_el1") [(VLocal "v_13")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx83" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (16))])
             :: (ILoad (TInt TI64) "v_14" (VLocal "v_arrayidx83") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_contextidr_el1") [(VLocal "v_14")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx89" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (20))])
             :: (ILoad (TInt TI64) "v_15" (VLocal "v_arrayidx89") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_amair_el1") [(VLocal "v_15")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx95" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (21))])
             :: (ILoad (TInt TI64) "v_16" (VLocal "v_arrayidx95") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_cntkctl_el1") [(VLocal "v_16")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx101" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (22))])
             :: (ILoad (TInt TI64) "v_17" (VLocal "v_arrayidx101") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_par_el1") [(VLocal "v_17")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx107" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (7)); (VInt (0)); (VInt (19))])
             :: (ILoad (TInt TI64) "v_18" (VLocal "v_arrayidx107") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_tpidr_el1") [(VLocal "v_18")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx112" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (34))])
             :: (ILoad (TInt TI64) "v_19" (VLocal "v_arrayidx112") 16)
             :: (ICall TVoid None (VGlobal "iasm_set_sp_el1") [(VLocal "v_19")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx118" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (35))])
             :: (ILoad (TInt TI64) "v_20" (VLocal "v_arrayidx118") 8)
             :: (ICall TVoid None (VGlobal "iasm_set_elr_el1") [(VLocal "v_20")])
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx124" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (18)); (VLocal "v_idxprom"); (VInt (0)); (VInt (36))])
             :: (ILoad (TInt TI64) "v_21" (VLocal "v_arrayidx124") 16)
             :: (ICall TVoid None (VGlobal "iasm_set_spsr_el1") [(VLocal "v_21")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___sysreg32_restore_state :=
    {| fname := "__sysreg32_restore_state";
       rettype := TVoid;
       fargs :=
        (("v_0", (TPtr (TNamedStruct "struct.kvm_vcpu" 9056)))
         :: nil);
       falloca_vars := nil;
       fbody := None |}.

Definition f_set_s2_page_count :=
    {| fname := "set_s2_page_count";
       rettype := TVoid;
       fargs :=
        (("v_index", (TInt TI64))
         :: ("v_count", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_count1" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (17)); (VLocal "v_index"); (VInt (0))])
             :: (IStore (TInt TI32) (VLocal "v_count1") (VLocal "v_count") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_walk_smmu_pt :=
    {| fname := "walk_smmu_pt";
       rettype := (TInt TI64);
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_num", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_cfg_hw_ttbr") [(VLocal "v_cbndx"); (VLocal "v_num")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_smmu_pgd") [(VLocal "v_call"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_smmu_pmd") [(VLocal "v_call1"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "walk_smmu_pte") [(VLocal "v_call2"); (VLocal "v_addr")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call3")))
             :: nil)) |}.

Definition f_alloc_smmu_pmd_page :=
    {| fname := "alloc_smmu_pmd_page";
       rettype := (TInt TI64);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_pmd_next") [ ])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "smmu_pmd_end") [ ])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call") (VInt (4096)))
             :: (IBinOp TBool "v_cmp_not" Cugt (VLocal "v_add") (VLocal "v_call1"))
             :: (IIf (VLocal "v_cmp_not")
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall TVoid None (VGlobal "set_smmu_pmd_next") [ ])
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_v_walk_smmu_pt :=
    {| fname := "v_walk_smmu_pt";
       rettype := (TInt TI64);
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_smmu_cfg_hw_ttbr") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "walk_smmu_pgd") [(VLocal "v_call"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "walk_smmu_pmd") [(VLocal "v_call1"); (VLocal "v_addr"); (VInt (0))])
             :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "walk_smmu_pte") [(VLocal "v_call2"); (VLocal "v_addr")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call3")))
             :: nil)) |}.

Definition f_v_clear_vm_stage2_range :=
    {| fname := "v_clear_vm_stage2_range";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_start", (TInt TI64))
         :: ("v_size", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "get_vm_poweron") [(VLocal "v_vmid")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_start") (VInt (12)))
                  :: (IBinOp (TInt TI64) "v_div2" OLshr (VLocal "v_size") (VInt (12)))
                  :: (ICall TVoid None (VGlobal "clear_vm_range") [(VLocal "v_vmid"); (VLocal "v_div"); (VLocal "v_div2")])
                  :: nil)
                 nil)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_s2_page_index :=
    {| fname := "get_s2_page_index";
       rettype := (TInt TI64);
       fargs :=
        (("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI32) (Some "v_call") (VGlobal "mem_region_search") [(VLocal "v_addr")])
             :: (IBinOp TBool "v_cmp_not" Ceq (VLocal "v_call") (VInt (-1)))
             :: (IIf (VLocal "v_cmp_not")
                 ((IAssign (TInt TI64) "v_ret_1" (VInt (-1)))
                  :: nil)
                 ((ICall (TInt TI64) (Some "v_call1") (VGlobal "get_mem_region_index") [(VLocal "v_call")])
                  :: (IBinOp TBool "v_cmp2_not" Ceq (VLocal "v_call1") (VInt (-1)))
                  :: (IIf (VLocal "v_cmp2_not")
                      ((IAssign (TInt TI64) "v_ret_1" (VInt (-1)))
                       :: nil)
                      ((ICall (TInt TI64) (Some "v_call4") (VGlobal "get_mem_region_base") [(VLocal "v_call")])
                       :: (IBinOp (TInt TI64) "v_sub" OSub (VLocal "v_addr") (VLocal "v_call4"))
                       :: (IBinOp (TInt TI64) "v_div" OLshr (VLocal "v_sub") (VInt (12)))
                       :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_div") (VLocal "v_call1"))
                       :: (IAssign (TInt TI64) "v_ret_1" (VLocal "v_add"))
                       :: nil))
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_ret_1")))
             :: nil)) |}.

Definition f_alloc_s2pt_pgd :=
    {| fname := "alloc_s2pt_pgd";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_pgd_next") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "pgd_pool_end") [(VLocal "v_vmid")])
             :: (IBinOp (TInt TI64) "v_add" OAdd (VLocal "v_call") (VInt (4096)))
             :: (IBinOp TBool "v_cmp_not" Cugt (VLocal "v_add") (VLocal "v_call1"))
             :: (IIf (VLocal "v_cmp_not")
                 ((IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_vmid"))
                  :: (ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil)
                 ((ICall TVoid None (VGlobal "set_pgd_next") [(VLocal "v_vmid")])
                  :: nil))
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_get_cpuid :=
    {| fname := "get_cpuid";
       rettype := (TInt TI32);
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "read_cpuid_mpidr") [ ])
             :: (IUnaryOp (TInt TI32) "v_0" (OTrunc (TInt TI32)) (VLocal "v_call"))
             :: (IBinOp (TInt TI32) "v_conv" OAnd (VLocal "v_0") (VInt (16777215)))
             :: (IReturn (TInt TI32) (Some (VLocal "v_conv")))
             :: nil)) |}.

Definition f_pool_start :=
    {| fname := "pool_start";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_page_pool_start" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (16))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_page_pool_start") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_set_mdcr_el2 :=
    {| fname := "set_mdcr_el2";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_15") [(VInt (0))])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_remap_addr :=
    {| fname := "set_vm_remap_addr";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: ("v_remap_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_el2_remap_addr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (2))])
             :: (IStore (TInt TI64) (VLocal "v_el2_remap_addr") (VLocal "v_remap_addr") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_mem_region_size :=
    {| fname := "get_mem_region_size";
       rettype := (TInt TI64);
       fargs :=
        (("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_size" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom"); (VInt (1))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_size") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f___raw_writeq :=
    {| fname := "__raw_writeq";
       rettype := TVoid;
       fargs :=
        (("v_val", (TInt TI64))
         :: ("v_addr", (TPtr (TInt TI8)))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "iasm_4_str") [(VLocal "v_val"); (VLocal "v_addr")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_set_vm_mapped_pages :=
    {| fname := "set_vm_mapped_pages";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: ("v_mapped", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI32) "v_conv" (OTrunc (TInt TI32)) (VLocal "v_mapped"))
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI32)) "v_el2_mapped_pages" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (3))])
             :: (IStore (TInt TI32) (VLocal "v_el2_mapped_pages") (VLocal "v_conv") 8)
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_host_reg :=
    {| fname := "get_host_reg";
       rettype := (TInt TI64);
       fargs :=
        (("v_hr", (TPtr (TNamedStruct "struct.s2_host_regs" 256)))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_index"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_arrayidx" (TPtr (TNamedStruct "struct.s2_host_regs" 256)) (VLocal "v_hr") [(VInt (0)); (VInt (0)); (VLocal "v_idxprom")])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_arrayidx") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_prep_hvc :=
    {| fname := "prep_hvc";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TInt TI64) (Some "v_call") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (0))])
             :: (IBinOp (TInt TI64) "v_and" OAnd (VLocal "v_call") (VInt (4294967295)))
             :: (ICall (TInt TI64) (Some "v_call1") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (0))])
             :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (0)); (VLocal "v_call1")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_and") (VInt (3288334339)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1))])
                  :: (ICall (TInt TI64) (Some "v_call2") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1))])
                  :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1)); (VLocal "v_call2")])
                  :: (ICall (TInt TI64) (Some "v_call3") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2))])
                  :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2)); (VLocal "v_call3")])
                  :: (ICall (TInt TI64) (Some "v_call4") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (3))])
                  :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (3)); (VLocal "v_call4")])
                  :: nil)
                 ((IBinOp (TInt TI64) "v_0" OAnd (VLocal "v_call") (VInt (3221225471)))
                  :: (IBinOp TBool "v_1" Ceq (VLocal "v_0") (VInt (2214592516)))
                  :: (IIf (VLocal "v_1")
                      ((ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1))])
                       :: (ICall (TInt TI64) (Some "v_call8") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1))])
                       :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1)); (VLocal "v_call8")])
                       :: (ICall (TInt TI64) (Some "v_call9") (VGlobal "get_shadow_ctxt") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2))])
                       :: (ICall TVoid None (VGlobal "set_int_gpr") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (2)); (VLocal "v_call9")])
                       :: nil)
                      ((IBinOp TBool "v_cmp11" Ceq (VLocal "v_and") (VInt (2214592520)))
                       :: (IIf (VLocal "v_cmp11")
                           ((ICall TVoid None (VGlobal "set_shadow_dirty_bit") [(VLocal "v_vmid"); (VLocal "v_vcpuid"); (VInt (1))])
                            :: (ICall TVoid None (VGlobal "set_vm_poweroff") [(VLocal "v_vmid")])
                            :: nil)
                           nil)
                       :: nil))
                  :: nil))
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_walk_s2pt :=
    {| fname := "walk_s2pt";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_addr", (TInt TI64))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_pt") [(VLocal "v_vmid")])
             :: (ICall (TInt TI64) (Some "v_call") (VGlobal "walk_npt") [(VLocal "v_vmid"); (VLocal "v_addr")])
             :: (ICall TVoid None (VGlobal "release_lock_pt") [(VLocal "v_vmid")])
             :: (IReturn (TInt TI64) (Some (VLocal "v_call")))
             :: nil)) |}.

Definition f_el2_shared_data_init :=
    {| fname := "el2_shared_data_init";
       rettype := TVoid;
       fargs :=
        nil;
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "shared_data_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "shared_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (ICall TVoid None (VGlobal "llvm.memset.p0i8.i64") [(VLocal "v_val_0"); (VInt (0)); (VInt (810864)); (VBool false)])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___el2_free_smmu_pgd :=
    {| fname := "__el2_free_smmu_pgd";
       rettype := TVoid;
       fargs :=
        (("v_cbndx", (TInt TI32))
         :: ("v_index", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "acquire_lock_smmu") [ ])
             :: (ICall (TInt TI32) (Some "v_call") (VGlobal "get_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index")])
             :: (ICall (TInt TI32) (Some "v_call1") (VGlobal "get_vm_poweron") [(VLocal "v_call")])
             :: (IBinOp TBool "v_cmp" Ceq (VLocal "v_call1") (VInt (0)))
             :: (IIf (VLocal "v_cmp")
                 ((ICall TVoid None (VGlobal "set_smmu_cfg_vmid") [(VLocal "v_cbndx"); (VLocal "v_index"); (VInt (-1))])
                  :: nil)
                 ((ICall TVoid None (VGlobal "v_panic") [ ])
                  :: nil))
             :: (ICall TVoid None (VGlobal "release_lock_smmu") [ ])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f___vm_sysreg_save_state_nvhe_opt :=
    {| fname := "__vm_sysreg_save_state_nvhe_opt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_vcpuid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TVoid None (VGlobal "__vm_sysreg_save_el1_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "__vm_sysreg_save_common_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "__vm_sysreg_save_user_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (ICall TVoid None (VGlobal "__vm_sysreg_save_el2_return_state") [(VLocal "v_vmid"); (VLocal "v_vcpuid")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_get_vm_load_addr :=
    {| fname := "get_vm_load_addr";
       rettype := (TInt TI64);
       fargs :=
        (("v_vmid", (TInt TI32))
         :: ("v_load_idx", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IUnaryOp (TInt TI64) "v_idxprom1" (OZExt (TInt TI64)) (VLocal "v_load_idx"))
             :: (IGetElemPtr (TPtr (TInt TI64)) "v_load_addr" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (6)); (VLocal "v_idxprom1"); (VInt (0))])
             :: (ILoad (TInt TI64) "v_0" (VLocal "v_load_addr") 8)
             :: (IReturn (TInt TI64) (Some (VLocal "v_0")))
             :: nil)) |}.

Definition f_acquire_lock_pt :=
    {| fname := "acquire_lock_pt";
       rettype := TVoid;
       fargs :=
        (("v_vmid", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall (TPtr (TNamedStruct "struct.el2_data" 33731152)) (Some "v_call") (VGlobal "get_el2_data_start") [ ])
             :: (IUnaryOp (TInt TI64) "v_idxprom" (OZExt (TInt TI64)) (VLocal "v_vmid"))
             :: (IGetElemPtr (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_shadow_pt_lock" (TPtr (TNamedStruct "struct.el2_data" 33731152)) (VLocal "v_call") [(VInt (0)); (VInt (21)); (VLocal "v_idxprom"); (VInt (7))])
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_shadow_pt_lock")])
             :: (IReturn TVoid None)
             :: nil)) |}.

Definition f_host_alloc_pmd :=
    {| fname := "host_alloc_pmd";
       rettype := (TInt TI64);
       fargs :=
        (("v_num", (TInt TI32))
         :: nil);
       falloca_vars := nil;
       fbody := 
        (Some 
            ((ICall TBool (Some "v_call") (VGlobal "is_kernel_in_hyp_mode") [ ])
             :: (ILoad (TInt TI64) "v_0" (VGlobal "kimage_voffset") 8)
             :: (ILoad (TInt TI64) "v_1" (VGlobal "physvirt_offset") 8)
             :: (IBinOp (TInt TI64) "v_2" OAdd (VLocal "v_0") (VLocal "v_1"))
             :: (IBinOp (TInt TI64) "v_sub1" OSub (VExpr (TInt TI64) OPtrToInt [(VGlobal "el2_data_start")]) (VLocal "v_2"))
             :: (IUnaryOp (TPtr (TInt TI8)) "v_3" (OIntToPtr (TPtr (TInt TI8))) (VLocal "v_sub1"))
             :: (ISelect (TPtr (TInt TI8)) "v_val_0" (VLocal "v_call") (VExpr (TPtr (TInt TI8)) (OGetElementPtr (TPtr (TArray (TInt TI8) 0))) [(VGlobal "el2_data_start"); (VInt (0)); (VInt (0))]) (VLocal "v_3"))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_abs_lock" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (1100))])
             :: (IUnaryOp (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4)) "v_4" (OBitCast (TPtr (TNamedStruct "struct.b_arch_spinlock_t" 4))) (VLocal "v_abs_lock"))
             :: (ICall TVoid None (VGlobal "stage2_spin_lock") [(VLocal "v_4")])
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_page_pool_start" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33700976))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_5" (OBitCast (TPtr (TInt TI64))) (VLocal "v_page_pool_start"))
             :: (ILoad (TInt TI64) "v_6" (VLocal "v_5") 8)
             :: (IBinOp (TInt TI64) "v_add3" OAdd (VLocal "v_6") (VInt (2097152)))
             :: (IGetElemPtr (TPtr (TInt TI8)) "v_pmd_used_pages" (TPtr (TInt TI8)) (VLocal "v_val_0") [(VInt (33700992))])
             :: (IUnaryOp (TPtr (TInt TI64)) "v_7" (OBitCast (TPtr (TInt TI64))) (VLocal "v_pmd_used_pages"))
             :: (ILoad (TInt TI64) "v_8" (VLocal "v_7") 8)
             :: (IBinOp (TInt TI64) "v_mul" OShl (VLocal "v_8") (VInt (12)))
             :: (IBinOp (TInt TI64) "v_add6" OAdd (VLocal "v_6") (VInt (69632)))
             :: (IBinOp (TInt TI64) "v_add7" OAdd (VLocal "v_add6") (VLocal "v_mul"))
             :: (IUnaryOp (TInt TI64) "v_conv" (OZExt (TInt TI64)) (VLocal "v_num"))
             :: (IBinOp (TInt TI64) "v_add11" OAdd (VLocal "v_8") (VLocal "v_conv"))
             :: (IStore (TInt TI64) (VLocal "v_7") (VLocal "v_add11") 8)
             :: (ICall TVoid None (VGlobal "stage2_spin_unlock") [(VLocal "v_4")])
             :: (IBinOp TBool "v_cmp_not" Cult (VLocal "v_add7") (VLocal "v_add3"))
             :: (IIf (VLocal "v_cmp_not")
                 ((IReturn (TInt TI64) (Some (VLocal "v_add7")))
                  :: nil)
                 ((ICall TVoid None (VGlobal "iasm_11") [ ])
                  :: nil))
             :: nil)) |}.

Definition funcs :=
    (("get_smmu_pgshift", f_get_smmu_pgshift)
     :: ("get_vm_power", f_get_vm_power)
     :: ("get_pfn_count", f_get_pfn_count)
     :: ("get_hpfar_el2", f_get_hpfar_el2)
     :: ("__fpsimd_restore_state", f___fpsimd_restore_state)
     :: ("set_smmu_pgd_next", f_set_smmu_pgd_next)
     :: ("set_host_running_vcpu", f_set_host_running_vcpu)
     :: ("set_smmu_pte", f_set_smmu_pte)
     :: ("get_esr_el2", f_get_esr_el2)
     :: ("set_vm_public_key", f_set_vm_public_key)
     :: ("acquire_lock_vm", f_acquire_lock_vm)
     :: ("hypsec_vcpu_id_to_vcpu", f_hypsec_vcpu_id_to_vcpu)
     :: ("assign_smmu", f_assign_smmu)
     :: ("el2_smmu_alloc_pgd", f_el2_smmu_alloc_pgd)
     :: ("prep_abort", f_prep_abort)
     :: ("get_host_vttbr", f_get_host_vttbr)
     :: ("__vm_sysreg_restore_el2_return_state", f___vm_sysreg_restore_el2_return_state)
     :: ("pmd_pool_end", f_pmd_pool_end)
     :: ("set_vm_state", f_set_vm_state)
     :: ("vm_is_inc_exe", f_vm_is_inc_exe)
     :: ("v_grant_stage2_sg_gpa", f_v_grant_stage2_sg_gpa)
     :: ("v_set_pte", f_v_set_pte)
     :: ("el2_hex_to_bin", f_el2_hex_to_bin)
     :: ("acquire_lock_s2page", f_acquire_lock_s2page)
     :: ("get_int_new_pte", f_get_int_new_pte)
     :: ("fixup_guest_exit", f_fixup_guest_exit)
     :: ("reject_invalid_mem_access", f_reject_invalid_mem_access)
     :: ("virt_to_phys", f_virt_to_phys)
     :: ("get_smmu_cfg_vmid", f_get_smmu_cfg_vmid)
     :: ("set_vcpu_esr_el2", f_set_vcpu_esr_el2)
     :: ("llvm.dbg.value", f_llvm_dbg_value)
     :: ("release_lock_spt", f_release_lock_spt)
     :: ("walk_pmd", f_walk_pmd)
     :: ("smmu_init_pte", f_smmu_init_pte)
     :: ("reset_sys_regs", f_reset_sys_regs)
     :: ("get_smmu_size", f_get_smmu_size)
     :: ("clear_smmu", f_clear_smmu)
     :: ("alloc_remap_addr", f_alloc_remap_addr)
     :: ("prep_wfx", f_prep_wfx)
     :: ("handle_host_mmio", f_handle_host_mmio)
     :: ("alloc_smmu", f_alloc_smmu)
     :: ("__activate_vm", f___activate_vm)
     :: ("printk", f_printk)
     :: ("llvm.dbg.label", f_llvm_dbg_label)
     :: ("el2_memcpy", f_el2_memcpy)
     :: ("v_set_smmu_pt", f_v_set_smmu_pt)
     :: ("vmid_to_vm_info", f_vmid_to_vm_info)
     :: ("pt_store", f_pt_store)
     :: ("__clear_vm_stage2_range", f___clear_vm_stage2_range)
     :: ("get_shadow_dirty_bit", f_get_shadow_dirty_bit)
     :: ("__init_stage2_translation", f___init_stage2_translation)
     :: ("handle_host_hvc", f_handle_host_hvc)
     :: ("dump_output_el2", f_dump_output_el2)
     :: ("prot_and_map_vm_s2pt", f_prot_and_map_vm_s2pt)
     :: ("update_smmu_page", f_update_smmu_page)
     :: ("set_smmu_cfg_vmid", f_set_smmu_cfg_vmid)
     :: ("__vm_sysreg_restore_state_nvhe_opt", f___vm_sysreg_restore_state_nvhe_opt)
     :: ("__host_el2_restore_state", f___host_el2_restore_state)
     :: ("clear_vm_stage2_range", f_clear_vm_stage2_range)
     :: ("smmu_pgd_end", f_smmu_pgd_end)
     :: ("get_next_remap_ptr", f_get_next_remap_ptr)
     :: ("__translate_far_to_hpfar", f___translate_far_to_hpfar)
     :: ("release_lock_pt", f_release_lock_pt)
     :: ("walk_smmu_pte", f_walk_smmu_pte)
     :: ("walk_spt", f_walk_spt)
     :: ("hypsec_set_vcpu_state", f_hypsec_set_vcpu_state)
     :: ("__activate_traps_nvhe", f___activate_traps_nvhe)
     :: ("clear_vm_range", f_clear_vm_range)
     :: ("release_lock_s2page", f_release_lock_s2page)
     :: ("get_smmu_num_context_banks", f_get_smmu_num_context_banks)
     :: ("llvm.memset.p0i8.i64", f_llvm_memset_p0i8_i64)
     :: ("smmu_pt_clear", f_smmu_pt_clear)
     :: ("set_vcpu_state", f_set_vcpu_state)
     :: ("get_vm_next_load_idx", f_get_vm_next_load_idx)
     :: ("el2_decrypt_buf", f_el2_decrypt_buf)
     :: ("host_dabt_get_rd", f_host_dabt_get_rd)
     :: ("hypsec_tlb_flush_local_vmid", f_hypsec_tlb_flush_local_vmid)
     :: ("el2_boot_from_inc_exe", f_el2_boot_from_inc_exe)
     :: ("el2_memset", f_el2_memset)
     :: ("atomic_read", f_atomic_read)
     :: ("hypsec_register_vcpu", f_hypsec_register_vcpu)
     :: ("set_boot_info", f_set_boot_info)
     :: ("set_host_regs", f_set_host_regs)
     :: ("map_page_host", f_map_page_host)
     :: ("get_vm_load_size", f_get_vm_load_size)
     :: ("unmap_smmu_page", f_unmap_smmu_page)
     :: ("host_alloc_pud", f_host_alloc_pud)
     :: ("handle_smmu_cb_access", f_handle_smmu_cb_access)
     :: ("map_pfn_vm", f_map_pfn_vm)
     :: ("set_smmu_cfg_hw_ttbr", f_set_smmu_cfg_hw_ttbr)
     :: ("set_next_vmid", f_set_next_vmid)
     :: ("v_kvm_phys_addr_ioremap", f_v_kvm_phys_addr_ioremap)
     :: ("init_el2_data_page", f_init_el2_data_page)
     :: ("__vm_sysreg_restore_common_state", f___vm_sysreg_restore_common_state)
     :: ("__timer_enable_traps", f___timer_enable_traps)
     :: ("pt_load", f_pt_load)
     :: ("v_post_handle_shadow_s2pt_fault", f_v_post_handle_shadow_s2pt_fault)
     :: ("acquire_lock_smmu", f_acquire_lock_smmu)
     :: ("reset_fp_regs", f_reset_fp_regs)
     :: ("reset_gp_regs", f_reset_gp_regs)
     :: ("is_mmio_gpa", f_is_mmio_gpa)
     :: ("assign_pfn_to_vm", f_assign_pfn_to_vm)
     :: ("set_pmselr_el0", f_set_pmselr_el0)
     :: ("host_alloc_pte", f_host_alloc_pte)
     :: ("__vm_sysreg_save_user_state", f___vm_sysreg_save_user_state)
     :: ("el2_encrypt_buf", f_el2_encrypt_buf)
     :: ("set_pfn_to_vm", f_set_pfn_to_vm)
     :: ("smmu_assign_page", f_smmu_assign_page)
     :: ("get_int_new_level", f_get_int_new_level)
     :: ("get_vcpu_was_preempted", f_get_vcpu_was_preempted)
     :: ("set_pfn_map", f_set_pfn_map)
     :: ("get_pt_vttbr", f_get_pt_vttbr)
     :: ("task_pid_nr", f_task_pid_nr)
     :: ("get_vm_load_signature", f_get_vm_load_signature)
     :: ("get_level_s2pt", f_get_level_s2pt)
     :: ("set_pmd_next", f_set_pmd_next)
     :: ("get_int_pc", f_get_int_pc)
     :: ("gen_vmid", f_gen_vmid)
     :: ("unmap_spt", f_unmap_spt)
     :: ("__kvm_timer_set_cntvoff", f___kvm_timer_set_cntvoff)
     :: ("init_npt", f_init_npt)
     :: ("set_next_remap_ptr", f_set_next_remap_ptr)
     :: ("stage2_spin_unlock", f_stage2_spin_unlock)
     :: ("map_spt", f_map_spt)
     :: ("print_string", f_print_string)
     :: ("host_get_mmio_data", f_host_get_mmio_data)
     :: ("get_vcpu_state", f_get_vcpu_state)
     :: ("el2_kvm_phys_addr_ioremap", f_el2_kvm_phys_addr_ioremap)
     :: ("get_smmu_hyp_base", f_get_smmu_hyp_base)
     :: ("check_pfn_to_vm", f_check_pfn_to_vm)
     :: ("senduart", f_senduart)
     :: ("is_smmu_range", f_is_smmu_range)
     :: ("__vm_sysreg_save_el2_return_state", f___vm_sysreg_save_el2_return_state)
     :: ("clear_phys_mem", f_clear_phys_mem)
     :: ("get_sys_reg_desc_val", f_get_sys_reg_desc_val)
     :: ("__sysreg32_save_state", f___sysreg32_save_state)
     :: ("set_vm_next_load_idx", f_set_vm_next_load_idx)
     :: ("set_shadow_ctxt", f_set_shadow_ctxt)
     :: ("cpu_relax", f_cpu_relax)
     :: ("__el2_arm_lpae_clear", f___el2_arm_lpae_clear)
     :: ("__vm_sysreg_save_common_state", f___vm_sysreg_save_common_state)
     :: ("get_mem_region_index", f_get_mem_region_index)
     :: ("get_shadow_ctxt", f_get_shadow_ctxt)
     :: ("llvm.memcpy.p0i8.p0i8.i64", f_llvm_memcpy_p0i8_p0i8_i64)
     :: ("__kvm_flush_vm_context", f___kvm_flush_vm_context)
     :: ("map_io", f_map_io)
     :: ("get_int_pstate", f_get_int_pstate)
     :: ("init_smmu_pt", f_init_smmu_pt)
     :: ("get_vm_remap_addr", f_get_vm_remap_addr)
     :: ("get_npt_level", f_get_npt_level)
     :: ("dump_output", f_dump_output)
     :: ("sync_dirty_to_shadow", f_sync_dirty_to_shadow)
     :: ("get_pfn_owner", f_get_pfn_owner)
     :: ("get_smmu_pmd_next", f_get_smmu_pmd_next)
     :: ("activate_traps_vhe_load", f_activate_traps_vhe_load)
     :: ("__raw_readq", f___raw_readq)
     :: ("set_vm_load_signature", f_set_vm_load_signature)
     :: ("init_s2pt", f_init_s2pt)
     :: ("stage2_spin_lock", f_stage2_spin_lock)
     :: ("__kvm_phys_addr_ioremap", f___kvm_phys_addr_ioremap)
     :: ("handle_smmu_global_access", f_handle_smmu_global_access)
     :: ("hypsec_register_kvm", f_hypsec_register_kvm)
     :: ("__deactivate_traps", f___deactivate_traps)
     :: ("get_smmu_cfg_hw_ttbr", f_get_smmu_cfg_hw_ttbr)
     :: ("__fpsimd_save_state", f___fpsimd_save_state)
     :: ("emulate_mmio", f_emulate_mmio)
     :: ("get_vcpu_host_cpu_context", f_get_vcpu_host_cpu_context)
     :: ("set_vcpu_inactive", f_set_vcpu_inactive)
     :: ("mmap_s2pt", f_mmap_s2pt)
     :: ("__activate_traps_common", f___activate_traps_common)
     :: ("smmu_map_page", f_smmu_map_page)
     :: ("set_smmu_pmd_next", f_set_smmu_pmd_next)
     :: ("v_el2_arm_lpae_map", f_v_el2_arm_lpae_map)
     :: ("hypsec_vmid_to_kvm", f_hypsec_vmid_to_kvm)
     :: ("release_lock_vm", f_release_lock_vm)
     :: ("set_vm_inc_exe", f_set_vm_inc_exe)
     :: ("set_hcr_el2", f_set_hcr_el2)
     :: ("handle_smmu_write", f_handle_smmu_write)
     :: ("walk_smmu_pgd", f_walk_smmu_pgd)
     :: ("__kern_hyp_va", f___kern_hyp_va)
     :: ("smmu_pmd_end", f_smmu_pmd_end)
     :: ("hypsec_alloc_vcpu", f_hypsec_alloc_vcpu)
     :: ("__vm_sysreg_save_el1_state", f___vm_sysreg_save_el1_state)
     :: ("kvm_vcpu_run_vhe", f_kvm_vcpu_run_vhe)
     :: ("get_far_el2", f_get_far_el2)
     :: ("get_pmd_next", f_get_pmd_next)
     :: ("acquire_lock_core", f_acquire_lock_core)
     :: ("clear_pfn_host", f_clear_pfn_host)
     :: ("get_core_context", f_get_core_context)
     :: ("release_lock_smmu", f_release_lock_smmu)
     :: ("__clear_vm_range", f___clear_vm_range)
     :: ("verify_and_load_images", f_verify_and_load_images)
     :: ("__timer_disable_traps", f___timer_disable_traps)
     :: ("get_s2_page_gfn", f_get_s2_page_gfn)
     :: ("get_pfn_map", f_get_pfn_map)
     :: ("__kvm_call_hyp", f___kvm_call_hyp)
     :: ("el2_verify_and_load_images", f_el2_verify_and_load_images)
     :: ("hypsec_vcpu_id_to_shadow_ctxt", f_hypsec_vcpu_id_to_shadow_ctxt)
     :: ("clear_phys_page", f_clear_phys_page)
     :: ("get_smmu_pgd_next", f_get_smmu_pgd_next)
     :: ("clear_smmu_pt", f_clear_smmu_pt)
     :: ("el2_smmu_free_pgd", f_el2_smmu_free_pgd)
     :: ("deactivate_traps_vhe_put", f_deactivate_traps_vhe_put)
     :: ("hypsec_set_vcpu_active", f_hypsec_set_vcpu_active)
     :: ("clear_shadow_gp_regs", f_clear_shadow_gp_regs)
     :: ("set_vm_kvm", f_set_vm_kvm)
     :: ("set_pud_next", f_set_pud_next)
     :: ("set_cptr_el2", f_set_cptr_el2)
     :: ("set_vm_vcpu", f_set_vm_vcpu)
     :: ("get_mem_region_cnt", f_get_mem_region_cnt)
     :: ("el2_set_boot_info", f_el2_set_boot_info)
     :: ("kvm_tlb_flush_vmid_ipa_host", f_kvm_tlb_flush_vmid_ipa_host)
     :: ("_arch_spin_unlock", f__arch_spin_unlock)
     :: ("set_pfn_owner", f_set_pfn_owner)
     :: ("set_vm_poweroff", f_set_vm_poweroff)
     :: ("v_update_exception_gp_regs", f_v_update_exception_gp_regs)
     :: ("register_vcpu", f_register_vcpu)
     :: ("get_shared_data_start", f_get_shared_data_start)
     :: ("int_to_shadow_fp_regs", f_int_to_shadow_fp_regs)
     :: ("get_vm_vttbr", f_get_vm_vttbr)
     :: ("walk_npt", f_walk_npt)
     :: ("__vm_sysreg_restore_user_state", f___vm_sysreg_restore_user_state)
     :: ("waituart", f_waituart)
     :: ("get_mem_region_flag", f_get_mem_region_flag)
     :: ("pud_pool_end", f_pud_pool_end)
     :: ("set_vm_load_size", f_set_vm_load_size)
     :: ("set_tpidr_el2", f_set_tpidr_el2)
     :: ("__deactivate_traps_common", f___deactivate_traps_common)
     :: ("clear_vm_page", f_clear_vm_page)
     :: ("el2_hex2bin", f_el2_hex2bin)
     :: ("hvc_enable_s2_trans", f_hvc_enable_s2_trans)
     :: ("set_vcpu_active", f_set_vcpu_active)
     :: ("el2_memcmp", f_el2_memcmp)
     :: ("get_vm_poweron", f_get_vm_poweron)
     :: ("get_int_gpr", f_get_int_gpr)
     :: ("llvm.dbg.declare", f_llvm_dbg_declare)
     :: ("remap_vm_image", f_remap_vm_image)
     :: ("alloc_s2pt_pmd", f_alloc_s2pt_pmd)
     :: ("set_per_cpu", f_set_per_cpu)
     :: ("_arch_spin_lock", f__arch_spin_lock)
     :: ("el2_reset_mpidr", f_el2_reset_mpidr)
     :: ("map_smmu", f_map_smmu)
     :: ("handle_host_stage2_fault", f_handle_host_stage2_fault)
     :: ("get_cur_vcpu_id", f_get_cur_vcpu_id)
     :: ("get_vm_state", f_get_vm_state)
     :: ("get_s2_page_count", f_get_s2_page_count)
     :: ("__el2_alloc_smmu_pgd", f___el2_alloc_smmu_pgd)
     :: ("create_hypsec_io_mappings", f_create_hypsec_io_mappings)
     :: ("mem_region_search", f_mem_region_search)
     :: ("check_smmu_pfn", f_check_smmu_pfn)
     :: ("smmu_pt_load", f_smmu_pt_load)
     :: ("init_spt", f_init_spt)
     :: ("acquire_lock_spt", f_acquire_lock_spt)
     :: ("__sysreg_save_state_nvhe", f___sysreg_save_state_nvhe)
     :: ("printhex_ul", f_printhex_ul)
     :: ("get_el2_data_start", f_get_el2_data_start)
     :: ("verify_image", f_verify_image)
     :: ("set_s2_page_gfn", f_set_s2_page_gfn)
     :: ("vcpu_id_to_int_vcpu", f_vcpu_id_to_int_vcpu)
     :: ("__guest_enter", f___guest_enter)
     :: ("boot_from_inc_exe", f_boot_from_inc_exe)
     :: ("get_s2_page_vmid", f_get_s2_page_vmid)
     :: ("__sysreg_restore_state_nvhe", f___sysreg_restore_state_nvhe)
     :: ("el2_arm_lpae_map", f_el2_arm_lpae_map)
     :: ("get_shared_vcpu", f_get_shared_vcpu)
     :: ("handle_pvops", f_handle_pvops)
     :: ("walk_pgd", f_walk_pgd)
     :: ("get_int_esr", f_get_int_esr)
     :: ("get_vm_mapped_pages", f_get_vm_mapped_pages)
     :: ("walk_pte", f_walk_pte)
     :: ("__flush_dcache_area", f___flush_dcache_area)
     :: ("get_shadow_esr", f_get_shadow_esr)
     :: ("v_hypsec_inject_undef", f_v_hypsec_inject_undef)
     :: ("save_encrypted_vcpu", f_save_encrypted_vcpu)
     :: ("set_s2_page_vmid", f_set_s2_page_vmid)
     :: ("get_smmu_base", f_get_smmu_base)
     :: ("host_dabt_get_as", f_host_dabt_get_as)
     :: ("release_lock_core", f_release_lock_core)
     :: ("get_pud_next", f_get_pud_next)
     :: ("get_vm_inc_exe", f_get_vm_inc_exe)
     :: ("el2_arm_lpae_iova_to_phys", f_el2_arm_lpae_iova_to_phys)
     :: ("set_vttbr_el2", f_set_vttbr_el2)
     :: ("get_vm_public_key", f_get_vm_public_key)
     :: ("register_kvm", f_register_kvm)
     :: ("restore_shadow_kvm_regs", f_restore_shadow_kvm_regs)
     :: ("__hyp_panic", f___hyp_panic)
     :: ("get_cur_vmid", f_get_cur_vmid)
     :: ("el2_smmu_clear", f_el2_smmu_clear)
     :: ("__handle_smmu_write", f___handle_smmu_write)
     :: ("num_online_cpus", f_num_online_cpus)
     :: ("is_gic_cpu", f_is_gic_cpu)
     :: ("__activate_traps", f___activate_traps)
     :: ("v_revoke_stage2_sg_gpa", f_v_revoke_stage2_sg_gpa)
     :: ("llvm.lifetime.end.p0i8", f_llvm_lifetime_end_p0i8)
     :: ("walk_smmu_pmd", f_walk_smmu_pmd)
     :: ("get_mem_region_base", f_get_mem_region_base)
     :: ("set_vm_load_addr", f_set_vm_load_addr)
     :: ("smmu_get_cbndx", f_smmu_get_cbndx)
     :: ("set_shadow_dirty_bit", f_set_shadow_dirty_bit)
     :: ("unmap_and_load_vm_image", f_unmap_and_load_vm_image)
     :: ("el2_remap_vm_image", f_el2_remap_vm_image)
     :: ("set_shadow_ctxt_esr", f_set_shadow_ctxt_esr)
     :: ("is_kernel_in_hyp_mode", f_is_kernel_in_hyp_mode)
     :: ("v_search_load_info", f_v_search_load_info)
     :: ("get_smmu_num", f_get_smmu_num)
     :: ("stage2_get_exception_vector", f_stage2_get_exception_vector)
     :: ("read_cpuid_mpidr", f_read_cpuid_mpidr)
     :: ("v_set_pmd", f_v_set_pmd)
     :: ("alloc_s2pt_pud", f_alloc_s2pt_pud)
     :: ("set_pt_vttbr", f_set_pt_vttbr)
     :: ("walk_pud", f_walk_pud)
     :: ("set_smmu_pt", f_set_smmu_pt)
     :: ("__kvm_vcpu_run_nvhe", f___kvm_vcpu_run_nvhe)
     :: ("__raw_writel", f___raw_writel)
     :: ("__deactivate_traps_nvhe", f___deactivate_traps_nvhe)
     :: ("set_per_cpu_host_regs", f_set_per_cpu_host_regs)
     :: ("set_pfn_count", f_set_pfn_count)
     :: ("host_dabt_is_write", f_host_dabt_is_write)
     :: ("get_shared_kvm", f_get_shared_kvm)
     :: ("llvm.lifetime.start.p0i8", f_llvm_lifetime_start_p0i8)
     :: ("get_host_regs", f_get_host_regs)
     :: ("grant_vm_page", f_grant_vm_page)
     :: ("handle_smmu_read", f_handle_smmu_read)
     :: ("hyp_panic", f_hyp_panic)
     :: ("set_npt", f_set_npt)
     :: ("pgd_pool_end", f_pgd_pool_end)
     :: ("__el2_arm_lpae_iova_to_phys", f___el2_arm_lpae_iova_to_phys)
     :: ("protect_el2_mem", f_protect_el2_mem)
     :: ("get_pgd_next", f_get_pgd_next)
     :: ("smmu_pt_store", f_smmu_pt_store)
     :: ("save_shadow_kvm_regs", f_save_shadow_kvm_regs)
     :: ("set_vm_power", f_set_vm_power)
     :: ("__handle_smmu_read", f___handle_smmu_read)
     :: ("set_pmuserenr_el0", f_set_pmuserenr_el0)
     :: ("init_hypsec_io", f_init_hypsec_io)
     :: ("__populate_fault_info", f___populate_fault_info)
     :: ("assign_pfn_to_smmu", f_assign_pfn_to_smmu)
     :: ("hypsec_alloc_vm", f_hypsec_alloc_vm)
     :: ("set_vcpu_was_preempted", f_set_vcpu_was_preempted)
     :: ("get_next_vmid", f_get_next_vmid)
     :: ("v_panic", f_v_panic)
     :: ("__raw_readl", f___raw_readl)
     :: ("alloc_smmu_pgd_page", f_alloc_smmu_pgd_page)
     :: ("revoke_vm_page", f_revoke_vm_page)
     :: ("host_alloc_pgd", f_host_alloc_pgd)
     :: ("get_exception_vector", f_get_exception_vector)
     :: ("set_int_gpr", f_set_int_gpr)
     :: ("host_alloc_stage2_page", f_host_alloc_stage2_page)
     :: ("set_pgd_next", f_set_pgd_next)
     :: ("stage2_inject_el1_fault", f_stage2_inject_el1_fault)
     :: ("__vm_sysreg_restore_el1_state", f___vm_sysreg_restore_el1_state)
     :: ("__sysreg32_restore_state", f___sysreg32_restore_state)
     :: ("set_s2_page_count", f_set_s2_page_count)
     :: ("walk_smmu_pt", f_walk_smmu_pt)
     :: ("alloc_smmu_pmd_page", f_alloc_smmu_pmd_page)
     :: ("v_walk_smmu_pt", f_v_walk_smmu_pt)
     :: ("v_clear_vm_stage2_range", f_v_clear_vm_stage2_range)
     :: ("get_s2_page_index", f_get_s2_page_index)
     :: ("alloc_s2pt_pgd", f_alloc_s2pt_pgd)
     :: ("get_cpuid", f_get_cpuid)
     :: ("pool_start", f_pool_start)
     :: ("set_mdcr_el2", f_set_mdcr_el2)
     :: ("set_vm_remap_addr", f_set_vm_remap_addr)
     :: ("get_mem_region_size", f_get_mem_region_size)
     :: ("__raw_writeq", f___raw_writeq)
     :: ("set_vm_mapped_pages", f_set_vm_mapped_pages)
     :: ("get_host_reg", f_get_host_reg)
     :: ("prep_hvc", f_prep_hvc)
     :: ("walk_s2pt", f_walk_s2pt)
     :: ("el2_shared_data_init", f_el2_shared_data_init)
     :: ("__el2_free_smmu_pgd", f___el2_free_smmu_pgd)
     :: ("__vm_sysreg_save_state_nvhe_opt", f___vm_sysreg_save_state_nvhe_opt)
     :: ("get_vm_load_addr", f_get_vm_load_addr)
     :: ("acquire_lock_pt", f_acquire_lock_pt)
     :: ("host_alloc_pmd", f_host_alloc_pmd)
     :: nil).

(************ AsmProcs ************)

Definition p_iasm_set_vtcr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_vtcr_el2";
  pbody := (Imsr Rvtcr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_3_ldr :=
  {|
  ploc := 0;
  pname := "iasm_3_ldr";
  pbody := (Ildr (Rx0 SZ64) (Some (OpWithoutExt ((MemOp (Rx0 SZ64) (0) DirectIndex)))) None)
::(Iret)
::nil
 |}.

Definition p_iasm_4_str :=
  {|
  ploc := 0;
  pname := "iasm_4_str";
  pbody := (Istr (Rx0 SZ64) (MemOp (Rx1 SZ64) (0) DirectIndex))
::(Iret)
::nil
 |}.

Definition p_iasm_get_par_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_par_el1";
  pbody := (Imrs (Rx0 SZ64) Rpar_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_6_isb :=
  {|
  ploc := 0;
  pname := "iasm_6_isb";
  pbody := (Iisb)
::(Iret)
::nil
 |}.

Definition p_iasm_set_par_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_par_el1";
  pbody := (Imsr Rpar_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_mdscr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_mdscr_el1";
  pbody := (Imsr Rmdscr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_sp_el0 :=
  {|
  ploc := 0;
  pname := "iasm_set_sp_el0";
  pbody := (Imsr Rsp_el0 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_vmpidr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_vmpidr_el2";
  pbody := (Imsr Rvmpidr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_csselr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_csselr_el1";
  pbody := (Imsr Rcsselr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_sctlr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_sctlr_el1";
  pbody := (Imsr Rsctlr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_actlr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_actlr_el1";
  pbody := (Imsr Ractlr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_cpacr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_cpacr_el1";
  pbody := (Imsr Rcpacr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_ttbr0_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_ttbr0_el1";
  pbody := (Imsr Rttbr0_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_ttbr1_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_ttbr1_el1";
  pbody := (Imsr Rttbr1_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_tcr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_tcr_el1";
  pbody := (Imsr Rtcr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_esr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_esr_el1";
  pbody := (Imsr Resr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_afsr0_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_afsr0_el1";
  pbody := (Imsr Rafsr0_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_afsr1_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_afsr1_el1";
  pbody := (Imsr Rafsr1_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_far_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_far_el1";
  pbody := (Imsr Rfar_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_mair_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_mair_el1";
  pbody := (Imsr Rmair_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_vbar_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_vbar_el1";
  pbody := (Imsr Rvbar_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_contextidr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_contextidr_el1";
  pbody := (Imsr Rcontextidr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_amair_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_amair_el1";
  pbody := (Imsr Ramair_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_cntkctl_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_cntkctl_el1";
  pbody := (Imsr Rcntkctl_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_tpidr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_tpidr_el1";
  pbody := (Imsr Rtpidr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_sp_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_sp_el1";
  pbody := (Imsr Rsp_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_elr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_elr_el1";
  pbody := (Imsr Relr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_spsr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_set_spsr_el1";
  pbody := (Imsr Rspsr_el1 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_elr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_elr_el2";
  pbody := (Imsr Relr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_spsr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_spsr_el2";
  pbody := (Imsr Rspsr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_tpidr_el0 :=
  {|
  ploc := 0;
  pname := "iasm_set_tpidr_el0";
  pbody := (Imsr Rtpidr_el0 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_tpidrro_el0 :=
  {|
  ploc := 0;
  pname := "iasm_set_tpidrro_el0";
  pbody := (Imsr Rtpidrro_el0 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_get_mdscr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_mdscr_el1";
  pbody := (Imrs (Rx0 SZ64) Rmdscr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_sp_el0 :=
  {|
  ploc := 0;
  pname := "iasm_get_sp_el0";
  pbody := (Imrs (Rx0 SZ64) Rsp_el0)
::(Iret)
::nil
 |}.

Definition p_iasm_get_vmpidr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_vmpidr_el2";
  pbody := (Imrs (Rx0 SZ64) Rvmpidr_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_get_csselr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_csselr_el1";
  pbody := (Imrs (Rx0 SZ64) Rcsselr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_sctlr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_sctlr_el1";
  pbody := (Imrs (Rx0 SZ64) Rsctlr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_actlr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_actlr_el1";
  pbody := (Imrs (Rx0 SZ64) Ractlr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_cpacr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_cpacr_el1";
  pbody := (Imrs (Rx0 SZ64) Rcpacr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_ttbr0_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_ttbr0_el1";
  pbody := (Imrs (Rx0 SZ64) Rttbr0_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_ttbr1_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_ttbr1_el1";
  pbody := (Imrs (Rx0 SZ64) Rttbr1_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_tcr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_tcr_el1";
  pbody := (Imrs (Rx0 SZ64) Rtcr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_esr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_esr_el1";
  pbody := (Imrs (Rx0 SZ64) Resr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_afsr0_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_afsr0_el1";
  pbody := (Imrs (Rx0 SZ64) Rafsr0_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_afsr1_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_afsr1_el1";
  pbody := (Imrs (Rx0 SZ64) Rafsr1_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_far_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_far_el1";
  pbody := (Imrs (Rx0 SZ64) Rfar_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_mair_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_mair_el1";
  pbody := (Imrs (Rx0 SZ64) Rmair_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_vbar_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_vbar_el1";
  pbody := (Imrs (Rx0 SZ64) Rvbar_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_contextidr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_contextidr_el1";
  pbody := (Imrs (Rx0 SZ64) Rcontextidr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_amair_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_amair_el1";
  pbody := (Imrs (Rx0 SZ64) Ramair_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_cntkctl_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_cntkctl_el1";
  pbody := (Imrs (Rx0 SZ64) Rcntkctl_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_tpidr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_tpidr_el1";
  pbody := (Imrs (Rx0 SZ64) Rtpidr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_sp_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_sp_el1";
  pbody := (Imrs (Rx0 SZ64) Rsp_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_elr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_elr_el1";
  pbody := (Imrs (Rx0 SZ64) Relr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_spsr_el1 :=
  {|
  ploc := 0;
  pname := "iasm_get_spsr_el1";
  pbody := (Imrs (Rx0 SZ64) Rspsr_el1)
::(Iret)
::nil
 |}.

Definition p_iasm_get_elr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_elr_el2";
  pbody := (Imrs (Rx0 SZ64) Relr_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_get_spsr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_spsr_el2";
  pbody := (Imrs (Rx0 SZ64) Rspsr_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_get_tpidr_el0 :=
  {|
  ploc := 0;
  pname := "iasm_get_tpidr_el0";
  pbody := (Imrs (Rx0 SZ64) Rtpidr_el0)
::(Iret)
::nil
 |}.

Definition p_iasm_get_tpidrro_el0 :=
  {|
  ploc := 0;
  pname := "iasm_get_tpidrro_el0";
  pbody := (Imrs (Rx0 SZ64) Rtpidrro_el0)
::(Iret)
::nil
 |}.

Definition p_iasm_get_esr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_esr_el2";
  pbody := (Imrs (Rx0 SZ64) Resr_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_get_far_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_far_el2";
  pbody := (Imrs (Rx0 SZ64) Rfar_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_get_hpfar_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_hpfar_el2";
  pbody := (Imrs (Rx0 SZ64) Rhpfar_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_get_ttbr0_el2 :=
  {|
  ploc := 0;
  pname := "iasm_get_ttbr0_el2";
  pbody := (Imrs (Rx0 SZ64) Rttbr0_el2)
::(Iret)
::nil
 |}.

Definition p_iasm_set_vttbr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_vttbr_el2";
  pbody := (Imsr Rvttbr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_hcr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_hcr_el2";
  pbody := (Imsr Rhcr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_cptr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_cptr_el2";
  pbody := (Imsr Rcptr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_pmuserenr_el0 :=
  {|
  ploc := 0;
  pname := "iasm_set_pmuserenr_el0";
  pbody := (Imsr Rpmuserenr_el0 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition p_iasm_set_tpidr_el2 :=
  {|
  ploc := 0;
  pname := "iasm_set_tpidr_el2";
  pbody := (Imsr Rtpidr_el2 (Rx0 SZ64))
::(Iret)
::nil
 |}.

Definition asm_procs :=
    (("iasm_set_vtcr_el2", p_iasm_set_vtcr_el2)
     :: ("iasm_3_ldr", p_iasm_3_ldr)
     :: ("iasm_4_str", p_iasm_4_str)
     :: ("iasm_get_par_el1", p_iasm_get_par_el1)
     :: ("iasm_6_isb", p_iasm_6_isb)
     :: ("iasm_set_par_el1", p_iasm_set_par_el1)
     :: ("iasm_set_mdscr_el1", p_iasm_set_mdscr_el1)
     :: ("iasm_set_sp_el0", p_iasm_set_sp_el0)
     :: ("iasm_set_vmpidr_el2", p_iasm_set_vmpidr_el2)
     :: ("iasm_set_csselr_el1", p_iasm_set_csselr_el1)
     :: ("iasm_set_sctlr_el1", p_iasm_set_sctlr_el1)
     :: ("iasm_set_actlr_el1", p_iasm_set_actlr_el1)
     :: ("iasm_set_cpacr_el1", p_iasm_set_cpacr_el1)
     :: ("iasm_set_ttbr0_el1", p_iasm_set_ttbr0_el1)
     :: ("iasm_set_ttbr1_el1", p_iasm_set_ttbr1_el1)
     :: ("iasm_set_tcr_el1", p_iasm_set_tcr_el1)
     :: ("iasm_set_esr_el1", p_iasm_set_esr_el1)
     :: ("iasm_set_afsr0_el1", p_iasm_set_afsr0_el1)
     :: ("iasm_set_afsr1_el1", p_iasm_set_afsr1_el1)
     :: ("iasm_set_far_el1", p_iasm_set_far_el1)
     :: ("iasm_set_mair_el1", p_iasm_set_mair_el1)
     :: ("iasm_set_vbar_el1", p_iasm_set_vbar_el1)
     :: ("iasm_set_contextidr_el1", p_iasm_set_contextidr_el1)
     :: ("iasm_set_amair_el1", p_iasm_set_amair_el1)
     :: ("iasm_set_cntkctl_el1", p_iasm_set_cntkctl_el1)
     :: ("iasm_set_tpidr_el1", p_iasm_set_tpidr_el1)
     :: ("iasm_set_sp_el1", p_iasm_set_sp_el1)
     :: ("iasm_set_elr_el1", p_iasm_set_elr_el1)
     :: ("iasm_set_spsr_el1", p_iasm_set_spsr_el1)
     :: ("iasm_set_elr_el2", p_iasm_set_elr_el2)
     :: ("iasm_set_spsr_el2", p_iasm_set_spsr_el2)
     :: ("iasm_set_tpidr_el0", p_iasm_set_tpidr_el0)
     :: ("iasm_set_tpidrro_el0", p_iasm_set_tpidrro_el0)
     :: ("iasm_get_mdscr_el1", p_iasm_get_mdscr_el1)
     :: ("iasm_get_sp_el0", p_iasm_get_sp_el0)
     :: ("iasm_get_vmpidr_el2", p_iasm_get_vmpidr_el2)
     :: ("iasm_get_csselr_el1", p_iasm_get_csselr_el1)
     :: ("iasm_get_sctlr_el1", p_iasm_get_sctlr_el1)
     :: ("iasm_get_actlr_el1", p_iasm_get_actlr_el1)
     :: ("iasm_get_cpacr_el1", p_iasm_get_cpacr_el1)
     :: ("iasm_get_ttbr0_el1", p_iasm_get_ttbr0_el1)
     :: ("iasm_get_ttbr1_el1", p_iasm_get_ttbr1_el1)
     :: ("iasm_get_tcr_el1", p_iasm_get_tcr_el1)
     :: ("iasm_get_esr_el1", p_iasm_get_esr_el1)
     :: ("iasm_get_afsr0_el1", p_iasm_get_afsr0_el1)
     :: ("iasm_get_afsr1_el1", p_iasm_get_afsr1_el1)
     :: ("iasm_get_far_el1", p_iasm_get_far_el1)
     :: ("iasm_get_mair_el1", p_iasm_get_mair_el1)
     :: ("iasm_get_vbar_el1", p_iasm_get_vbar_el1)
     :: ("iasm_get_contextidr_el1", p_iasm_get_contextidr_el1)
     :: ("iasm_get_amair_el1", p_iasm_get_amair_el1)
     :: ("iasm_get_cntkctl_el1", p_iasm_get_cntkctl_el1)
     :: ("iasm_get_tpidr_el1", p_iasm_get_tpidr_el1)
     :: ("iasm_get_sp_el1", p_iasm_get_sp_el1)
     :: ("iasm_get_elr_el1", p_iasm_get_elr_el1)
     :: ("iasm_get_spsr_el1", p_iasm_get_spsr_el1)
     :: ("iasm_get_elr_el2", p_iasm_get_elr_el2)
     :: ("iasm_get_spsr_el2", p_iasm_get_spsr_el2)
     :: ("iasm_get_tpidr_el0", p_iasm_get_tpidr_el0)
     :: ("iasm_get_tpidrro_el0", p_iasm_get_tpidrro_el0)
     :: ("iasm_get_esr_el2", p_iasm_get_esr_el2)
     :: ("iasm_get_far_el2", p_iasm_get_far_el2)
     :: ("iasm_get_hpfar_el2", p_iasm_get_hpfar_el2)
     :: ("iasm_get_ttbr0_el2", p_iasm_get_ttbr0_el2)
     :: ("iasm_set_vttbr_el2", p_iasm_set_vttbr_el2)
     :: ("iasm_set_hcr_el2", p_iasm_set_hcr_el2)
     :: ("iasm_set_cptr_el2", p_iasm_set_cptr_el2)
     :: ("iasm_set_pmuserenr_el0", p_iasm_set_pmuserenr_el0)
     :: ("iasm_set_tpidr_el2", p_iasm_set_tpidr_el2)
     :: nil).

(************ IR Module ************)

Definition code :=
  {| structs := structures;
     global_vars := globvars;
     functions := funcs;
     asm_procedures := asm_procs |}.
