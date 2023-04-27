Record s_memblock_region :=
 mks_memblock_region {
    e_base : Z;
    e_size : Z;
    e_flags : Z
  }.

Record s_s2_memblock_info :=
 mks_s2_memblock_info {
    e_index : Z
  }.

Record s_s2_cpu_arch :=
 mks_s2_cpu_arch {
    e_host_hcr_el2 : Z;
    e_host_vttbr_el2 : Z
  }.

Record s_b_arch_spinlock_t :=
 mks_b_arch_spinlock_t {
    e_lock : Z
  }.

Record s_s2_page :=
 mks_s2_page {
    e_count : Z;
    e_vmid : Z;
    e_gfn : Z
  }.

Record s_user_fpsimd_state :=
 mks_user_fpsimd_state {
    e_vregs : (ZMap.t Z);
    e_fpsr : Z;
    e_fpcr : Z;
    e___reserved : (ZMap.t Z)
  }.

Record s_shadow_vcpu_context :=
 mks_shadow_vcpu_context {
    e_regs : (ZMap.t Z);
    e_far_el2 : Z;
    e_hpfar : Z;
    e_hcr_el2 : Z;
    e_ec : Z;
    e_dirty : Z;
    e__flags : Z;
    e_sys_regs : (ZMap.t Z);
    e_fp_regs : s_user_fpsimd_state;
    e_esr : Z;
    e__vmid : Z;
    e_sysregs_el2:  ZMap.t Z
  }.

Record s_s2_sys_reg_desc :=
 mks_s2_sys_reg_desc {
    e_Op0 : Z;
    e_Op1 : Z;
    e_CRn : Z;
    e_CRm : Z;
    e_Op2 : Z;
    e_reg : Z;
    e_val : Z
  }.

Record s_el2_load_info :=
 mks_el2_load_info {
    e_load_addr : Z;
    e__size : Z;
    e_el2_remap_addr : Z;
    e_el2_mapped_pages : Z;
    e_signature : (ZMap.t Z)
  }.

Record s_int_vcpu :=
 mks_int_vcpu {
    e_vcpu : Z;
    e_vcpu_pg_cnt : Z;
    e_state : Z;
    e_ctxtid : Z
  }.

Record s_el2_smmu_cfg :=
 mks_el2_smmu_cfg {
    e____vmid : Z;
    e_hw_ttbr : Z
  }.

Record s_el2_arm_smmu_device :=
 mks_el2_arm_smmu_device {
    e_phys_base : Z;
    e___size : Z;
    e_pgshift : Z;
    e_features : Z;
    e_num_context_banks : Z;
    e_num_s2_context_banks : Z;
    e_num_mapping_groups : Z;
    e_va_size : Z;
    e_ipa_size : Z;
    e_pa_size : Z;
    e_num_global_irqs : Z;
    e_num_context_irqs : Z;
    e_exists : Z;
    e_hyp_base : Z;
    e__index : Z
  }.

Record s_user_pt_regs :=
 mks_user_pt_regs {
    e__regs : (ZMap.t Z);
    e_sp : Z;
    e_pc : Z;
    e_pstate : Z
  }.

Record s_kvm_regs :=
 mks_kvm_regs {
    e___regs : s_user_pt_regs;
    e_sp_el1 : Z;
    e_elr_el1 : Z;
    e_spsr : (ZMap.t Z);
    e__fp_regs : s_user_fpsimd_state
  }.

Record s_kvm_cpu_context :=
 mks_kvm_cpu_context {
    e_gp_regs : s_kvm_regs;
    e__sys_regs : (ZMap.t Z);
    e___hyp_running_vcpu : Z
  }.

Record s_el2_per_cpu_data :=
 mks_el2_per_cpu_data {
    e_____vmid : Z;
    e_vcpu_id : Z;
    e_core_ctxt : s_kvm_cpu_context;
    e_host_regs : Z
  }.

Record s_atomic_t :=
 mks_atomic_t {
    e_counter : Z
  }.

Record u_anon_1 :=
 mku_anon_1 {
    e__val : s_atomic_t
  }.

Record s_qspinlock :=
 mks_qspinlock {
    e_qspinlock_0 : u_anon_1
  }.

Record s_raw_spinlock :=
 mks_raw_spinlock {
    e_raw_lock : s_qspinlock
  }.

Record u_anon_0 :=
 mku_anon_0 {
    e_rlock : s_raw_spinlock
  }.

Record s_spinlock :=
 mks_spinlock {
    e_spinlock_0 : u_anon_0
  }.

Record s_atomic64_t :=
 mks_atomic64_t {
    e__counter : Z
  }.

Record s_optimistic_spin_queue :=
 mks_optimistic_spin_queue {
    e_tail : s_atomic_t
  }.

Record s_list_head :=
 mks_list_head {
    e_next : Z;
    e_prev : Z
  }.

Record s_mutex :=
 mks_mutex {
    e_owner : s_atomic64_t;
    e_wait_lock : s_spinlock;
    e_osq : s_optimistic_spin_queue;
    e_wait_list : s_list_head
  }.

Record s_anon_124 :=
 mks_anon_124 {
    e__lock : s_spinlock;
    e_items : s_list_head;
    e_resampler_list : s_list_head;
    e_resampler_lock : s_mutex
  }.

Record s_kvm_vm_stat :=
 mks_kvm_vm_stat {
    e_remote_tlb_flush : Z
  }.

Record s_kvm_vmid :=
 mks_kvm_vmid {
    e_vmid_gen : Z;
    e______vmid : Z
  }.

Record u_anon_125 :=
 mku_anon_125 {
    e__vgic_cpu_base : s_list_head
  }.

Record u_anon_121 :=
 mku_anon_121 {
    e_redist_vcpu : Z
  }.

Record s_kvm_io_device :=
 mks_kvm_io_device {
    e_ops : Z
  }.

Record s_vgic_io_device :=
 mks_vgic_io_device {
    e_base_addr : Z;
    e_vgic_io_device_1 : u_anon_121;
    e__regions : Z;
    e_iodev_type : Z;
    e_nr_regions : Z;
    e_dev : s_kvm_io_device
  }.

Record s_its_vm :=
 mks_its_vm {
    e_fwnode : Z;
    e_domain : Z;
    e_vprop_page : Z;
    e_vpes : Z;
    e_nr_vpes : Z;
    e_db_lpi_base : Z;
    e_db_bitmap : Z;
    e_nr_db_lpis : Z;
    e_vlpi_count : (ZMap.t Z)
  }.

Record s_vgic_dist :=
 mks_vgic_dist {
    e_in_kernel : Z;
    e_ready : Z;
    e_initialized : Z;
    e_vgic_model : Z;
    e_implementation_rev : Z;
    e_v2_groups_user_writable : Z;
    e_msis_require_devid : Z;
    e_nr_spis : Z;
    e_vgic_dist_base : Z;
    e_vgic_dist_9 : u_anon_125;
    e_enabled : Z;
    e_spis : Z;
    e_dist_iodev : s_vgic_io_device;
    e_has_its : Z;
    e_propbaser : Z;
    e_lpi_list_lock : s_raw_spinlock;
    e_lpi_list_head : s_list_head;
    e_lpi_list_count : Z;
    e_lpi_translation_cache : s_list_head;
    e_iter : Z;
    e_its_vm : s_its_vm
  }.

Record s_kvm_arch :=
 mks_kvm_arch {
    e_______vmid : s_kvm_vmid;
    e_pgd : Z;
    e_pgd_phys : Z;
    e_vtcr : Z;
    e_last_vcpu_ran : Z;
    e_max_vcpus : Z;
    e_vgic : s_vgic_dist;
    e_psci_version : Z
  }.

Record s_refcount_struct :=
 mks_refcount_struct {
    e_refs : s_atomic_t
  }.

Record s_hlist_head :=
 mks_hlist_head {
    e_first : Z
  }.

Record s_hlist_node :=
 mks_hlist_node {
    e__next : Z;
    e_pprev : Z
  }.

Record s_callback_head :=
 mks_callback_head {
    e___next : Z;
    e_func : Z
  }.

Record s_mmu_notifier :=
 mks_mmu_notifier {
    e_hlist : s_hlist_node;
    e__ops : Z;
    e_mm : Z;
    e_rcu : s_callback_head;
    e_users : Z
  }.

Record s_srcu_node :=
 mks_srcu_node {
    e___lock : s_spinlock;
    e_srcu_have_cbs : (ZMap.t Z);
    e_srcu_data_have_cbs : (ZMap.t Z);
    e_srcu_gp_seq_needed_exp : Z;
    e_srcu_parent : Z;
    e_grplo : Z;
    e_grphi : Z
  }.

Record s_wait_queue_head :=
 mks_wait_queue_head {
    e____lock : s_spinlock;
    e_head : s_list_head
  }.

Record s_completion :=
 mks_completion {
    e_done : Z;
    e_wait : s_wait_queue_head
  }.

Record s_work_struct :=
 mks_work_struct {
    e_data : s_atomic64_t;
    e_entry : s_list_head;
    e__func : Z
  }.

Record s_timer_list :=
 mks_timer_list {
    e__entry : s_hlist_node;
    e_expires : Z;
    e_function : Z;
    e___flags : Z
  }.

Record s_delayed_work :=
 mks_delayed_work {
    e_work : s_work_struct;
    e_timer : s_timer_list;
    e_wq : Z;
    e_cpu : Z
  }.

Record s_srcu_struct :=
 mks_srcu_struct {
    e_node : (ZMap.t s_srcu_node);
    e_level : (ZMap.t Z);
    e_srcu_cb_mutex : s_mutex;
    e_____lock : s_spinlock;
    e_srcu_gp_mutex : s_mutex;
    e_srcu_idx : Z;
    e_srcu_gp_seq : Z;
    e_srcu_gp_seq_needed : Z;
    e__srcu_gp_seq_needed_exp : Z;
    e_srcu_last_gp_end : Z;
    e_sda : Z;
    e_srcu_barrier_seq : Z;
    e_srcu_barrier_mutex : s_mutex;
    e_srcu_barrier_completion : s_completion;
    e_srcu_barrier_cpu_cnt : s_atomic_t;
    e__work : s_delayed_work
  }.

Record s_kvm :=
 mks_kvm {
    e_mmu_lock : s_spinlock;
    e_slots_lock : s_mutex;
    e__mm : Z;
    e_memslots : (ZMap.t Z);
    e_vcpus : (ZMap.t Z);
    e_online_vcpus : s_atomic_t;
    e_created_vcpus : Z;
    e_last_boosted_vcpu : Z;
    e_vm_list : s_list_head;
    e______lock : s_mutex;
    e_buses : (ZMap.t Z);
    e_irqfds : s_anon_124;
    e_ioeventfds : s_list_head;
    e_stat : s_kvm_vm_stat;
    e__arch : s_kvm_arch;
    e_users_count : s_refcount_struct;
    e_coalesced_mmio_ring : Z;
    e_ring_lock : s_spinlock;
    e_coalesced_zones : s_list_head;
    e_irq_lock : s_mutex;
    e_irq_routing : Z;
    e_irq_ack_notifier_list : s_hlist_head;
    e_mmu_notifier : s_mmu_notifier;
    e_mmu_notifier_seq : Z;
    e_mmu_notifier_count : Z;
    e_tlbs_dirty : Z;
    e_devices : s_list_head;
    e_manual_dirty_log_protect : Z;
    e_debugfs_dentry : Z;
    e_debugfs_stat_data : Z;
    e_srcu : s_srcu_struct;
    e_irq_srcu : s_srcu_struct;
    e_userspace_pid : Z;
    e_verified : Z;
    e_hypsec_lock : s_spinlock
  }.

Record s_preempt_notifier :=
 mks_preempt_notifier {
    e_link : s_hlist_node;
    e___ops : Z
  }.

Record s_swait_queue_head :=
 mks_swait_queue_head {
    e_______lock : s_raw_spinlock;
    e_task_list : s_list_head
  }.

Record s_sigset_t :=
 mks_sigset_t {
    e_sig : (ZMap.t Z)
  }.

Record s_kvm_vcpu_stat :=
 mks_kvm_vcpu_stat {
    e_halt_successful_poll : Z;
    e_halt_attempted_poll : Z;
    e_halt_poll_invalid : Z;
    e_halt_wakeup : Z;
    e_hvc_exit_stat : Z;
    e_wfe_exit_stat : Z;
    e_wfi_exit_stat : Z;
    e_mmio_exit_user : Z;
    e_mmio_exit_kernel : Z;
    e_exits : Z
  }.

Record s_kvm_mmio_fragment :=
 mks_kvm_mmio_fragment {
    e_gpa : Z;
    e__data : Z;
    e_len : Z
  }.

Record s_anon_116 :=
 mks_anon_116 {
    e_in_spin_loop : Z;
    e_dy_eligible : Z
  }.

Record s_s2_trans :=
 mks_s2_trans {
    e_pfn : Z;
    e_output : Z;
    e_writable : Z;
    e_readable : Z;
    e__level : Z;
    e_desc : Z
  }.

Record s_kvm_vcpu_fault_info :=
 mks_kvm_vcpu_fault_info {
    e_esr_el2 : Z;
    e__far_el2 : Z;
    e_hpfar_el2 : Z;
    e_disr_el1 : Z
  }.

Record s_kvm_guest_debug_arch :=
 mks_kvm_guest_debug_arch {
    e_dbg_bcr : (ZMap.t Z);
    e_dbg_bvr : (ZMap.t Z);
    e_dbg_wcr : (ZMap.t Z);
    e_dbg_wvr : (ZMap.t Z)
  }.

Record s_anon_118 :=
 mks_anon_118 {
    e____regs : s_kvm_guest_debug_arch;
    e_pmscr_el1 : Z
  }.

Record s_its_vpe :=
 mks_its_vpe {
    e_vpt_page : Z;
    e__its_vm : Z;
    e_irq : Z;
    e_vpe_db_lpi : Z;
    e_vpe_proxy_event : Z;
    e_col_idx : Z;
    e_vpe_id : Z;
    e_idai : Z;
    e_pending_last : Z
  }.

Record s_vgic_v3_cpu_if :=
 mks_vgic_v3_cpu_if {
    e_vgic_hcr : Z;
    e_vgic_vmcr : Z;
    e_vgic_sre : Z;
    e_vgic_ap0r : (ZMap.t Z);
    e_vgic_ap1r : (ZMap.t Z);
    e_vgic_lr : (ZMap.t Z);
    e_its_vpe : s_its_vpe
  }.

Record u_anon_119 :=
 mku_anon_119 {
    e_ : s_vgic_v3_cpu_if;
    e__ : (ZMap.t Z)
  }.

Record s_kref :=
 mks_kref {
    e_refcount : s_refcount_struct
  }.

Record u_anon_120 :=
 mku_anon_120 {
    e_targets : Z
  }.

Record s_vgic_irq :=
 mks_vgic_irq {
    e__irq_lock : s_raw_spinlock;
    e_lpi_list : s_list_head;
    e_ap_list : s_list_head;
    e__vcpu : Z;
    e_target_vcpu : Z;
    e_intid : Z;
    e_line_level : Z;
    e_pending_latch : Z;
    e_active : Z;
    e__enabled : Z;
    e_hw : Z;
    e__refcount : s_kref;
    e_hwintid : Z;
    e_host_irq : Z;
    e_vgic_irq_14 : u_anon_120;
    e_source : Z;
    e_active_source : Z;
    e_priority : Z;
    e_group : Z;
    e_config : Z;
    e_get_input_level : Z;
    e__owner : Z
  }.

Record s_vgic_cpu :=
 mks_vgic_cpu {
    e_vgic_cpu_0 : u_anon_119;
    e_used_lrs : Z;
    e_private_irqs : (ZMap.t s_vgic_irq);
    e_ap_list_lock : s_raw_spinlock;
    e_ap_list_head : s_list_head;
    e_rd_iodev : s_vgic_io_device;
    e_rdreg : Z;
    e_pendbaser : Z;
    e_lpis_enabled : Z;
    e_num_pri_bits : Z;
    e_num_id_bits : Z
  }.

Record u_anon_122 :=
 mku_anon_122 {
    e__irq : Z
  }.

Record s_kvm_irq_level :=
 mks_kvm_irq_level {
    e_kvm_irq_level_0 : u_anon_122;
    e___level : Z
  }.

Record s_rb_node :=
 mks_rb_node {
    e___rb_parent_color : Z;
    e_rb_right : Z;
    e_rb_left : Z
  }.

Record s_timerqueue_node :=
 mks_timerqueue_node {
    e__node : s_rb_node;
    e__expires : Z
  }.

Record s_hrtimer :=
 mks_hrtimer {
    e___node : s_timerqueue_node;
    e__softexpires : Z;
    e__function : Z;
    e__base : Z;
    e___state : Z;
    e_is_rel : Z;
    e_is_soft : Z;
    e_is_hard : Z
  }.

Record s_arch_timer_context :=
 mks_arch_timer_context {
    e___vcpu : Z;
    e_cnt_ctl : Z;
    e_cnt_cval : Z;
    e___irq : s_kvm_irq_level;
    e_cntvoff : Z;
    e_hrtimer : s_hrtimer;
    e_loaded : Z;
    e_host_timer_irq : Z;
    e_host_timer_irq_flags : Z
  }.

Record s_arch_timer_cpu :=
 mks_arch_timer_cpu {
    e_timers : (ZMap.t s_arch_timer_context);
    e_bg_timer : s_hrtimer;
    e___enabled : Z
  }.

Record s_kvm_pmc :=
 mks_kvm_pmc {
    e_idx : Z;
    e_perf_event : Z
  }.

Record s_kvm_pmu :=
 mks_kvm_pmu {
    e_irq_num : Z;
    e_pmc : (ZMap.t s_kvm_pmc);
    e_chained : (ZMap.t Z);
    e__ready : Z;
    e_created : Z;
    e_irq_level : Z
  }.

Record s_anon_123 :=
 mks_anon_123 {
    e_mdscr_el1 : Z
  }.

Record s_kvm_decode :=
 mks_kvm_decode {
    e_rt : Z;
    e_sign_extend : Z;
    e_sixty_four : Z
  }.

Record s_kvm_mmu_memory_cache :=
 mks_kvm_mmu_memory_cache {
    e_nobjs : Z;
    e_objects : (ZMap.t Z)
  }.

Record s_vcpu_reset_state :=
 mks_vcpu_reset_state {
    e__pc : Z;
    e_r0 : Z;
    e_be : Z;
    e_reset : Z
  }.

Record s_kvm_vcpu_arch :=
 mks_kvm_vcpu_arch {
    e________vmid : Z;
    e_was_preempted : Z;
    e_walk_result : s_s2_trans;
    e_ctxt : s_kvm_cpu_context;
    e_sve_state : Z;
    e_sve_max_vl : Z;
    e__hcr_el2 : Z;
    e_mdcr_el2 : Z;
    e_fault : s_kvm_vcpu_fault_info;
    e_workaround_flags : Z;
    e____flags : Z;
    e_debug_ptr : Z;
    e_vcpu_debug_state : s_kvm_guest_debug_arch;
    e_external_debug_state : s_kvm_guest_debug_arch;
    e_host_cpu_context : Z;
    e_host_thread_info : Z;
    e_host_fpsimd_state : Z;
    e_host_debug_state : s_anon_118;
    e_vgic_cpu : s_vgic_cpu;
    e_timer_cpu : s_arch_timer_cpu;
    e_pmu : s_kvm_pmu;
    e_guest_debug_preserved : s_anon_123;
    e_power_off : Z;
    e_pause : Z;
    e_mmio_decode : s_kvm_decode;
    e_mmu_page_cache : s_kvm_mmu_memory_cache;
    e_target : Z;
    e__features : (ZMap.t Z);
    e_has_run_once : Z;
    e_vsesr_el2 : Z;
    e_reset_state : s_vcpu_reset_state;
    e_sysregs_loaded_on_cpu : Z
  }.

Record s_kvm_vcpu :=
 mks_kvm_vcpu {
    e__kvm : Z;
    e_preempt_notifier : s_preempt_notifier;
    e__cpu : Z;
    e__vcpu_id : Z;
    e__srcu_idx : Z;
    e_mode : Z;
    e_requests : Z;
    e_guest_debug : Z;
    e_pre_pcpu : Z;
    e_blocked_vcpu_list : s_list_head;
    e_mutex : s_mutex;
    e_run : Z;
    e_guest_xcr0_loaded : Z;
    e__wq : s_swait_queue_head;
    e_pid : Z;
    e_sigset_active : Z;
    e_sigset : s_sigset_t;
    e__stat : s_kvm_vcpu_stat;
    e_halt_poll_ns : Z;
    e_valid_wakeup : Z;
    e_mmio_needed : Z;
    e_mmio_read_completed : Z;
    e_mmio_is_write : Z;
    e_mmio_cur_fragment : Z;
    e_mmio_nr_fragments : Z;
    e_mmio_fragments : (ZMap.t s_kvm_mmio_fragment);
    e_spin_loop : s_anon_116;
    e_preempted : Z;
    e___ready : Z;
    e___arch : s_kvm_vcpu_arch;
    e__debugfs_dentry : Z
  }.
