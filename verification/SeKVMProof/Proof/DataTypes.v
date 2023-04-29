Require Import CommonDeps.

Local Open Scope Z_scope.

Record s_memblock_region :=
  mks_memblock_region {
    e_base: Z;
    e_size: Z;
    e_flags: Z
  }.

Record s_s2_memblock_info :=
  mks_s2_memblock_info {
    e_index: Z
  }.

Record s_s2_cpu_arch :=
  mks_s2_cpu_arch {
    e_host_hcr_el2: Z;
    e_host_vttbr_el2: Z
  }.

Record s_b_arch_spinlock_t :=
  mks_b_arch_spinlock_t {
    e_lock: Z
  }.

Record s_s2_page :=
  mks_s2_page {
    e_count: Z;
    e_vmid: Z;
    e_gfn: Z
  }.

Record s_user_fpsimd_state :=
  mks_user_fpsimd_state {
    e_vregs: (ZMap.t Z);
    e_fpsr: Z;
    e_fpcr: Z;
    e___reserved: (ZMap.t Z)
  }.

Record s_shadow_vcpu_context :=
  mks_shadow_vcpu_context {
    e_regs: (ZMap.t Z);
    e_far_el2: Z;
    e_hpfar: Z;
    e_hcr_el2: Z;
    e_ec: Z;
    e_dirty: Z;
    e__flags: Z;
    e_sys_regs: (ZMap.t Z);
    e_fp_regs: s_user_fpsimd_state;
    e_esr: Z;
    e__vmid: Z;
    e_sysregs_el2: (ZMap.t Z)
  }.

Record s_s2_sys_reg_desc :=
  mks_s2_sys_reg_desc {
    e_Op0: Z;
    e_Op1: Z;
    e_CRn: Z;
    e_CRm: Z;
    e_Op2: Z;
    e_reg: Z;
    e_val: Z
  }.

Record s_el2_load_info :=
  mks_el2_load_info {
    e_load_addr: Z;
    e__size: Z;
    e_el2_remap_addr: Z;
    e_el2_mapped_pages: Z;
    e_signature: (ZMap.t Z)
  }.

Record s_int_vcpu :=
  mks_int_vcpu {
    e_vcpu: Z;
    e_vcpu_pg_cnt: Z;
    e_state: Z;
    e_ctxtid: Z
  }.

Record s_el2_smmu_cfg :=
  mks_el2_smmu_cfg {
    e____vmid: Z;
    e_hw_ttbr: Z
  }.

Record s_el2_arm_smmu_device :=
  mks_el2_arm_smmu_device {
    e_phys_base: Z;
    e___size: Z;
    e_pgshift: Z;
    e_features: Z;
    e_num_context_banks: Z;
    e_num_s2_context_banks: Z;
    e_num_mapping_groups: Z;
    e_va_size: Z;
    e_ipa_size: Z;
    e_pa_size: Z;
    e_num_global_irqs: Z;
    e_num_context_irqs: Z;
    e_exists: Z;
    e_hyp_base: Z;
    e__index: Z
  }.

Record s_user_pt_regs :=
  mks_user_pt_regs {
    e__regs: (ZMap.t Z);
    e_sp: Z;
    e_pc: Z;
    e_pstate: Z
  }.

Record s_kvm_regs :=
  mks_kvm_regs {
    e___regs: s_user_pt_regs;
    e_sp_el1: Z;
    e_elr_el1: Z;
    e_spsr: (ZMap.t Z);
    e__fp_regs: s_user_fpsimd_state
  }.

Record s_kvm_cpu_context :=
  mks_kvm_cpu_context {
    e_gp_regs: s_kvm_regs;
    e__sys_regs: (ZMap.t Z);
    e___hyp_running_vcpu: Z
  }.

Record s_el2_per_cpu_data :=
  mks_el2_per_cpu_data {
    e_____vmid: Z;
    e_vcpu_id: Z;
    e_core_ctxt: s_kvm_cpu_context;
    e_host_regs: Z
  }.

Record s_atomic_t :=
  mks_atomic_t {
    e_counter: Z
  }.

Record u_anon_1 :=
  mku_anon_1 {
    e__val: s_atomic_t
  }.

Record s_qspinlock :=
  mks_qspinlock {
    e_qspinlock_0: u_anon_1
  }.

Record s_raw_spinlock :=
  mks_raw_spinlock {
    e_raw_lock: s_qspinlock
  }.

Record u_anon_0 :=
  mku_anon_0 {
    e_rlock: s_raw_spinlock
  }.

Record s_spinlock :=
  mks_spinlock {
    e_spinlock_0: u_anon_0
  }.

Record s_atomic64_t :=
  mks_atomic64_t {
    e__counter: Z
  }.

Record s_optimistic_spin_queue :=
  mks_optimistic_spin_queue {
    e_tail: s_atomic_t
  }.

Record s_list_head :=
  mks_list_head {
    e_next: Z;
    e_prev: Z
  }.

Record s_mutex :=
  mks_mutex {
    e_owner: s_atomic64_t;
    e_wait_lock: s_spinlock;
    e_osq: s_optimistic_spin_queue;
    e_wait_list: s_list_head
  }.

Record s_anon_124 :=
  mks_anon_124 {
    e__lock: s_spinlock;
    e_items: s_list_head;
    e_resampler_list: s_list_head;
    e_resampler_lock: s_mutex
  }.

Record s_kvm_vm_stat :=
  mks_kvm_vm_stat {
    e_remote_tlb_flush: Z
  }.

Record s_kvm_vmid :=
  mks_kvm_vmid {
    e_vmid_gen: Z;
    e______vmid: Z
  }.

Record u_anon_125 :=
  mku_anon_125 {
    e__vgic_cpu_base: s_list_head
  }.

Record u_anon_121 :=
  mku_anon_121 {
    e_redist_vcpu: Z
  }.

Record s_kvm_io_device :=
  mks_kvm_io_device {
    e_ops: Z
  }.

Record s_vgic_io_device :=
  mks_vgic_io_device {
    e_base_addr: Z;
    e_vgic_io_device_1: u_anon_121;
    e__regions: Z;
    e_iodev_type: Z;
    e_nr_regions: Z;
    e_dev: s_kvm_io_device
  }.

Record s_its_vm :=
  mks_its_vm {
    e_fwnode: Z;
    e_domain: Z;
    e_vprop_page: Z;
    e_vpes: Z;
    e_nr_vpes: Z;
    e_db_lpi_base: Z;
    e_db_bitmap: Z;
    e_nr_db_lpis: Z;
    e_vlpi_count: (ZMap.t Z)
  }.

Record s_vgic_dist :=
  mks_vgic_dist {
    e_in_kernel: Z;
    e_ready: Z;
    e_initialized: Z;
    e_vgic_model: Z;
    e_implementation_rev: Z;
    e_v2_groups_user_writable: Z;
    e_msis_require_devid: Z;
    e_nr_spis: Z;
    e_vgic_dist_base: Z;
    e_vgic_dist_9: u_anon_125;
    e_enabled: Z;
    e_spis: Z;
    e_dist_iodev: s_vgic_io_device;
    e_has_its: Z;
    e_propbaser: Z;
    e_lpi_list_lock: s_raw_spinlock;
    e_lpi_list_head: s_list_head;
    e_lpi_list_count: Z;
    e_lpi_translation_cache: s_list_head;
    e_iter: Z;
    e_its_vm: s_its_vm
  }.

Record s_kvm_arch :=
  mks_kvm_arch {
    e_______vmid: s_kvm_vmid;
    e_pgd: Z;
    e_pgd_phys: Z;
    e_vtcr: Z;
    e_last_vcpu_ran: Z;
    e_max_vcpus: Z;
    e_vgic: s_vgic_dist;
    e_psci_version: Z
  }.

Record s_refcount_struct :=
  mks_refcount_struct {
    e_refs: s_atomic_t
  }.

Record s_hlist_head :=
  mks_hlist_head {
    e_first: Z
  }.

Record s_hlist_node :=
  mks_hlist_node {
    e__next: Z;
    e_pprev: Z
  }.

Record s_callback_head :=
  mks_callback_head {
    e___next: Z;
    e_func: Z
  }.

Record s_mmu_notifier :=
  mks_mmu_notifier {
    e_hlist: s_hlist_node;
    e__ops: Z;
    e_mm: Z;
    e_rcu: s_callback_head;
    e_users: Z
  }.

Record s_srcu_node :=
  mks_srcu_node {
    e___lock: s_spinlock;
    e_srcu_have_cbs: (ZMap.t Z);
    e_srcu_data_have_cbs: (ZMap.t Z);
    e_srcu_gp_seq_needed_exp: Z;
    e_srcu_parent: Z;
    e_grplo: Z;
    e_grphi: Z
  }.

Record s_wait_queue_head :=
  mks_wait_queue_head {
    e____lock: s_spinlock;
    e_head: s_list_head
  }.

Record s_completion :=
  mks_completion {
    e_done: Z;
    e_wait: s_wait_queue_head
  }.

Record s_work_struct :=
  mks_work_struct {
    e_data: s_atomic64_t;
    e_entry: s_list_head;
    e__func: Z
  }.

Record s_timer_list :=
  mks_timer_list {
    e__entry: s_hlist_node;
    e_expires: Z;
    e_function: Z;
    e___flags: Z
  }.

Record s_delayed_work :=
  mks_delayed_work {
    e_work: s_work_struct;
    e_timer: s_timer_list;
    e_wq: Z;
    e_cpu: Z
  }.

Record s_srcu_struct :=
  mks_srcu_struct {
    e_node: (ZMap.t s_srcu_node);
    e_level: (ZMap.t Z);
    e_srcu_cb_mutex: s_mutex;
    e_____lock: s_spinlock;
    e_srcu_gp_mutex: s_mutex;
    e_srcu_idx: Z;
    e_srcu_gp_seq: Z;
    e_srcu_gp_seq_needed: Z;
    e__srcu_gp_seq_needed_exp: Z;
    e_srcu_last_gp_end: Z;
    e_sda: Z;
    e_srcu_barrier_seq: Z;
    e_srcu_barrier_mutex: s_mutex;
    e_srcu_barrier_completion: s_completion;
    e_srcu_barrier_cpu_cnt: s_atomic_t;
    e__work: s_delayed_work
  }.

Record s_kvm :=
  mks_kvm {
    e_mmu_lock: s_spinlock;
    e_slots_lock: s_mutex;
    e__mm: Z;
    e_memslots: (ZMap.t Z);
    e_vcpus: (ZMap.t Z);
    e_online_vcpus: s_atomic_t;
    e_created_vcpus: Z;
    e_last_boosted_vcpu: Z;
    e_vm_list: s_list_head;
    e______lock: s_mutex;
    e_buses: (ZMap.t Z);
    e_irqfds: s_anon_124;
    e_ioeventfds: s_list_head;
    e_stat: s_kvm_vm_stat;
    e__arch: s_kvm_arch;
    e_users_count: s_refcount_struct;
    e_coalesced_mmio_ring: Z;
    e_ring_lock: s_spinlock;
    e_coalesced_zones: s_list_head;
    e_irq_lock: s_mutex;
    e_irq_routing: Z;
    e_irq_ack_notifier_list: s_hlist_head;
    e_mmu_notifier: s_mmu_notifier;
    e_mmu_notifier_seq: Z;
    e_mmu_notifier_count: Z;
    e_tlbs_dirty: Z;
    e_devices: s_list_head;
    e_manual_dirty_log_protect: Z;
    e_debugfs_dentry: Z;
    e_debugfs_stat_data: Z;
    e_srcu: s_srcu_struct;
    e_irq_srcu: s_srcu_struct;
    e_userspace_pid: Z;
    e_verified: Z;
    e_hypsec_lock: s_spinlock
  }.

Record s_preempt_notifier :=
  mks_preempt_notifier {
    e_link: s_hlist_node;
    e___ops: Z
  }.

Record s_swait_queue_head :=
  mks_swait_queue_head {
    e_______lock: s_raw_spinlock;
    e_task_list: s_list_head
  }.

Record s_sigset_t :=
  mks_sigset_t {
    e_sig: (ZMap.t Z)
  }.

Record s_kvm_vcpu_stat :=
  mks_kvm_vcpu_stat {
    e_halt_successful_poll: Z;
    e_halt_attempted_poll: Z;
    e_halt_poll_invalid: Z;
    e_halt_wakeup: Z;
    e_hvc_exit_stat: Z;
    e_wfe_exit_stat: Z;
    e_wfi_exit_stat: Z;
    e_mmio_exit_user: Z;
    e_mmio_exit_kernel: Z;
    e_exits: Z
  }.

Record s_kvm_mmio_fragment :=
  mks_kvm_mmio_fragment {
    e_gpa: Z;
    e__data: Z;
    e_len: Z
  }.

Record s_anon_116 :=
  mks_anon_116 {
    e_in_spin_loop: Z;
    e_dy_eligible: Z
  }.

Record s_s2_trans :=
  mks_s2_trans {
    e_pfn: Z;
    e_output: Z;
    e_writable: Z;
    e_readable: Z;
    e__level: Z;
    e_desc: Z
  }.

Record s_kvm_vcpu_fault_info :=
  mks_kvm_vcpu_fault_info {
    e_esr_el2: Z;
    e__far_el2: Z;
    e_hpfar_el2: Z;
    e_disr_el1: Z
  }.

Record s_kvm_guest_debug_arch :=
  mks_kvm_guest_debug_arch {
    e_dbg_bcr: (ZMap.t Z);
    e_dbg_bvr: (ZMap.t Z);
    e_dbg_wcr: (ZMap.t Z);
    e_dbg_wvr: (ZMap.t Z)
  }.

Record s_anon_118 :=
  mks_anon_118 {
    e____regs: s_kvm_guest_debug_arch;
    e_pmscr_el1: Z
  }.

Record s_its_vpe :=
  mks_its_vpe {
    e_vpt_page: Z;
    e__its_vm: Z;
    e_irq: Z;
    e_vpe_db_lpi: Z;
    e_vpe_proxy_event: Z;
    e_col_idx: Z;
    e_vpe_id: Z;
    e_idai: Z;
    e_pending_last: Z
  }.

Record s_vgic_v3_cpu_if :=
  mks_vgic_v3_cpu_if {
    e_vgic_hcr: Z;
    e_vgic_vmcr: Z;
    e_vgic_sre: Z;
    e_vgic_ap0r: (ZMap.t Z);
    e_vgic_ap1r: (ZMap.t Z);
    e_vgic_lr: (ZMap.t Z);
    e_its_vpe: s_its_vpe
  }.

Record u_anon_119 :=
  mku_anon_119 {
    e_: s_vgic_v3_cpu_if;
    e__: (ZMap.t Z)
  }.

Record s_kref :=
  mks_kref {
    e_refcount: s_refcount_struct
  }.

Record u_anon_120 :=
  mku_anon_120 {
    e_targets: Z
  }.

Record s_vgic_irq :=
  mks_vgic_irq {
    e__irq_lock: s_raw_spinlock;
    e_lpi_list: s_list_head;
    e_ap_list: s_list_head;
    e__vcpu: Z;
    e_target_vcpu: Z;
    e_intid: Z;
    e_line_level: Z;
    e_pending_latch: Z;
    e_active: Z;
    e__enabled: Z;
    e_hw: Z;
    e__refcount: s_kref;
    e_hwintid: Z;
    e_host_irq: Z;
    e_vgic_irq_14: u_anon_120;
    e_source: Z;
    e_active_source: Z;
    e_priority: Z;
    e_group: Z;
    e_config: Z;
    e_get_input_level: Z;
    e__owner: Z
  }.

Record s_vgic_cpu :=
  mks_vgic_cpu {
    e_vgic_cpu_0: u_anon_119;
    e_used_lrs: Z;
    e_private_irqs: (ZMap.t s_vgic_irq);
    e_ap_list_lock: s_raw_spinlock;
    e_ap_list_head: s_list_head;
    e_rd_iodev: s_vgic_io_device;
    e_rdreg: Z;
    e_pendbaser: Z;
    e_lpis_enabled: Z;
    e_num_pri_bits: Z;
    e_num_id_bits: Z
  }.

Record u_anon_122 :=
  mku_anon_122 {
    e__irq: Z
  }.

Record s_kvm_irq_level :=
  mks_kvm_irq_level {
    e_kvm_irq_level_0: u_anon_122;
    e___level: Z
  }.

Record s_rb_node :=
  mks_rb_node {
    e___rb_parent_color: Z;
    e_rb_right: Z;
    e_rb_left: Z
  }.

Record s_timerqueue_node :=
  mks_timerqueue_node {
    e__node: s_rb_node;
    e__expires: Z
  }.

Record s_hrtimer :=
  mks_hrtimer {
    e___node: s_timerqueue_node;
    e__softexpires: Z;
    e__function: Z;
    e__base: Z;
    e___state: Z;
    e_is_rel: Z;
    e_is_soft: Z;
    e_is_hard: Z
  }.

Record s_arch_timer_context :=
  mks_arch_timer_context {
    e___vcpu: Z;
    e_cnt_ctl: Z;
    e_cnt_cval: Z;
    e___irq: s_kvm_irq_level;
    e_cntvoff: Z;
    e_hrtimer: s_hrtimer;
    e_loaded: Z;
    e_host_timer_irq: Z;
    e_host_timer_irq_flags: Z
  }.

Record s_arch_timer_cpu :=
  mks_arch_timer_cpu {
    e_timers: (ZMap.t s_arch_timer_context);
    e_bg_timer: s_hrtimer;
    e___enabled: Z
  }.

Record s_kvm_pmc :=
  mks_kvm_pmc {
    e_idx: Z;
    e_perf_event: Z
  }.

Record s_kvm_pmu :=
  mks_kvm_pmu {
    e_irq_num: Z;
    e_pmc: (ZMap.t s_kvm_pmc);
    e_chained: (ZMap.t Z);
    e__ready: Z;
    e_created: Z;
    e_irq_level: Z
  }.

Record s_anon_123 :=
  mks_anon_123 {
    e_mdscr_el1: Z
  }.

Record s_kvm_decode :=
  mks_kvm_decode {
    e_rt: Z;
    e_sign_extend: Z;
    e_sixty_four: Z
  }.

Record s_kvm_mmu_memory_cache :=
  mks_kvm_mmu_memory_cache {
    e_nobjs: Z;
    e_objects: (ZMap.t Z)
  }.

Record s_vcpu_reset_state :=
  mks_vcpu_reset_state {
    e__pc: Z;
    e_r0: Z;
    e_be: Z;
    e_reset: Z
  }.

Record s_kvm_vcpu_arch :=
  mks_kvm_vcpu_arch {
    e________vmid: Z;
    e_was_preempted: Z;
    e_walk_result: s_s2_trans;
    e_ctxt: s_kvm_cpu_context;
    e_sve_state: Z;
    e_sve_max_vl: Z;
    e__hcr_el2: Z;
    e_mdcr_el2: Z;
    e_fault: s_kvm_vcpu_fault_info;
    e_workaround_flags: Z;
    e____flags: Z;
    e_debug_ptr: Z;
    e_vcpu_debug_state: s_kvm_guest_debug_arch;
    e_external_debug_state: s_kvm_guest_debug_arch;
    e_host_cpu_context: Z;
    e_host_thread_info: Z;
    e_host_fpsimd_state: Z;
    e_host_debug_state: s_anon_118;
    e_vgic_cpu: s_vgic_cpu;
    e_timer_cpu: s_arch_timer_cpu;
    e_pmu: s_kvm_pmu;
    e_guest_debug_preserved: s_anon_123;
    e_power_off: Z;
    e_pause: Z;
    e_mmio_decode: s_kvm_decode;
    e_mmu_page_cache: s_kvm_mmu_memory_cache;
    e_target: Z;
    e__features: (ZMap.t Z);
    e_has_run_once: Z;
    e_vsesr_el2: Z;
    e_reset_state: s_vcpu_reset_state;
    e_sysregs_loaded_on_cpu: Z
  }.

Record s_kvm_vcpu :=
  mks_kvm_vcpu {
    e__kvm: Z;
    e_preempt_notifier: s_preempt_notifier;
    e__cpu: Z;
    e__vcpu_id: Z;
    e__srcu_idx: Z;
    e_mode: Z;
    e_requests: Z;
    e_guest_debug: Z;
    e_pre_pcpu: Z;
    e_blocked_vcpu_list: s_list_head;
    e_mutex: s_mutex;
    e_run: Z;
    e_guest_xcr0_loaded: Z;
    e__wq: s_swait_queue_head;
    e_pid: Z;
    e_sigset_active: Z;
    e_sigset: s_sigset_t;
    e__stat: s_kvm_vcpu_stat;
    e_halt_poll_ns: Z;
    e_valid_wakeup: Z;
    e_mmio_needed: Z;
    e_mmio_read_completed: Z;
    e_mmio_is_write: Z;
    e_mmio_cur_fragment: Z;
    e_mmio_nr_fragments: Z;
    e_mmio_fragments: (ZMap.t s_kvm_mmio_fragment);
    e_spin_loop: s_anon_116;
    e_preempted: Z;
    e___ready: Z;
    e___arch: s_kvm_vcpu_arch;
    e__debugfs_dentry: Z
  }.

Record CoreData :=
  mkCoreData {
    e_next_vmid: Z;
    e_last_remap_ptr: Z
  }.

Record SMMU_PT :=
  mkSMMU_PT {
    e_smmu_page_pool_start: Z;
    e_smmu_pgd_used_pages: Z;
    e_smmu_pmd_used_pages: Z;
    e_smmu_pgd_pool: (ZMap.t Z);
    e_smmu_pmd_pool: (ZMap.t Z);
    e_smmu_pte_pool: (ZMap.t Z);
    e_smmu_pt: (ZMap.t (ZMap.t (option Z)))
  }.

Record Stage2PT :=
  mkStage2PT {
    e_vttbr: Z;
    e_page_pool_start: Z;
    e_pmd_used_pages: Z;
    e_pud_used_pages: Z;
    e_pte_used_pages: Z;
    e_pgd_pool: (ZMap.t Z);
    e_pud_pool: (ZMap.t Z);
    e_pmd_pool: (ZMap.t Z);
    e_pte_pool: (ZMap.t Z);
    e_lv2pt: (ZMap.t (option Z));
    e_lv3pt: (ZMap.t (option Z))
  }.

Record VMInfo :=
  mkVMInfo {
    e___vmid: Z;
    e_load_info_cnt: Z;
    e_kvm_pg_cnt: Z;
    e_inc_exe: Z;
    e__state: Z;
    e_load_info: (ZMap.t s_el2_load_info);
    e_kvm: Z;
    e_int_vcpus: (ZMap.t s_int_vcpu);
    e_key: (ZMap.t Z);
    e_iv: (ZMap.t Z);
    e_public_key: (ZMap.t Z);
    e_powered_on: Z
  }.

Record Shared :=
  mkShared {
    e_locks: (ZMap.t (option Z));
    e_s2pages: (ZMap.t s_s2_page);
    e_core_data: CoreData;
    e_s2pts: (ZMap.t Stage2PT);
    e_smmupts: SMMU_PT;
    e_smmu_vmid: (ZMap.t Z);
    e_vminfos: (ZMap.t VMInfo)
  }.

Record PrivData :=
  mkPrivData {
    e_regions: (ZMap.t s_memblock_region);
    e_s2_memblock_info: (ZMap.t s_s2_memblock_info);
    e_arch: s_s2_cpu_arch;
    e_regions_cnt: Z;
    e_host_vttbr: Z;
    e_pl011_base: Z;
    e_uart_8250_base: Z;
    e_ram_start_pfn: Z;
    e_shadow_ctxts: (ZMap.t s_shadow_vcpu_context);
    e_s2_sys_reg_descs: (ZMap.t s_s2_sys_reg_desc);
    e_smmu_cfg: (ZMap.t s_el2_smmu_cfg);
    e_smmus: (ZMap.t s_el2_arm_smmu_device);
    e_el2_smmu_num: Z;
    e_vgic_cpu_base: Z;
    e_installed: Z;
    e_per_cpu_data: (ZMap.t s_el2_per_cpu_data);
    e_core_start: Z;
    e_core_end: Z;
    e_hacl_hash: (ZMap.t Z);
    e_hacl_hash0: (ZMap.t Z);
    e__key: (ZMap.t Z);
    e_phys_mem_start: Z;
    e_phys_mem_size: Z;
    e_kvm_pool: (ZMap.t s_kvm);
    e_vcpu_pool: (ZMap.t s_kvm_vcpu);
    e_cpu_regs: s_shadow_vcpu_context;
    e_host_cpus: (ZMap.t s_kvm_cpu_context);
    e_host_ctxt: (ZMap.t Z);
    e_umem: (ZMap.t Z)
  }.

Inductive SharedState: Type := 
| S2PAGE_STATE (s2p: (ZMap.t s_s2_page))
| ABS_STATE (score: CoreData)
| SMMU_VMID_STATE (ssmmu_vmid: (ZMap.t Z))
| SMMUPT_STATE (ssmmupt: SMMU_PT)
| VMINFO_STATE (svminfo: VMInfo)
| S2PT_STATE (ss2pt: Stage2PT).

Inductive AtomicEvent: Type := 
| ACQ (acq_lock: Z)
| REL (rel_lock: Z) (ss: SharedState)
| ALOAD (load_base: string) (load_off: Z) (load_size: Z)
| ASTORE (store_base: string) (store_off: Z) (store_size: Z) (store_val: Z).

Inductive Event: Type := 
| EVT (cpu: Z) (e: AtomicEvent).

Definition Log: Type :=list Event.

Definition Oracle: Type :=list Event -> list Event.

Inductive LOCK_MAP: Type := 
| PRIVATE 
| LOCK_FREE 
| LOCK_PROT (prot_lock: Z)
| LOCK_IMPL (impl_lock: Z).

Record RData :=
  mkRData {
    shared: Shared;
    priv: PrivData;
    log: list Event;
    oracle: list Event -> list Event;
    repl: Shared -> list Event -> (option Shared)
  }.

Definition update_s_memblock_region_e_base (_a: s_memblock_region) _b :=
  mks_memblock_region _b (_a.(e_size)) (_a.(e_flags)).
Notation "_a '.[e_base]' ':<' _b" := (update_s_memblock_region_e_base _a _b) (at level 1).

Definition update_s_memblock_region_e_size (_a: s_memblock_region) _b :=
  mks_memblock_region (_a.(e_base)) _b (_a.(e_flags)).
Notation "_a '.[e_size]' ':<' _b" := (update_s_memblock_region_e_size _a _b) (at level 1).

Definition update_s_memblock_region_e_flags (_a: s_memblock_region) _b :=
  mks_memblock_region (_a.(e_base)) (_a.(e_size)) _b.
Notation "_a '.[e_flags]' ':<' _b" := (update_s_memblock_region_e_flags _a _b) (at level 1).

Definition update_s_s2_memblock_info_e_index (_a: s_s2_memblock_info) _b :=
  mks_s2_memblock_info _b.
Notation "_a '.[e_index]' ':<' _b" := (update_s_s2_memblock_info_e_index _a _b) (at level 1).

Definition update_s_s2_cpu_arch_e_host_hcr_el2 (_a: s_s2_cpu_arch) _b :=
  mks_s2_cpu_arch _b (_a.(e_host_vttbr_el2)).
Notation "_a '.[e_host_hcr_el2]' ':<' _b" := (update_s_s2_cpu_arch_e_host_hcr_el2 _a _b) (at level 1).

Definition update_s_s2_cpu_arch_e_host_vttbr_el2 (_a: s_s2_cpu_arch) _b :=
  mks_s2_cpu_arch (_a.(e_host_hcr_el2)) _b.
Notation "_a '.[e_host_vttbr_el2]' ':<' _b" := (update_s_s2_cpu_arch_e_host_vttbr_el2 _a _b) (at level 1).

Definition update_s_b_arch_spinlock_t_e_lock (_a: s_b_arch_spinlock_t) _b :=
  mks_b_arch_spinlock_t _b.
Notation "_a '.[e_lock]' ':<' _b" := (update_s_b_arch_spinlock_t_e_lock _a _b) (at level 1).

Definition update_s_s2_page_e_count (_a: s_s2_page) _b :=
  mks_s2_page _b (_a.(e_vmid)) (_a.(e_gfn)).
Notation "_a '.[e_count]' ':<' _b" := (update_s_s2_page_e_count _a _b) (at level 1).

Definition update_s_s2_page_e_vmid (_a: s_s2_page) _b :=
  mks_s2_page (_a.(e_count)) _b (_a.(e_gfn)).
Notation "_a '.[e_vmid]' ':<' _b" := (update_s_s2_page_e_vmid _a _b) (at level 1).

Definition update_s_s2_page_e_gfn (_a: s_s2_page) _b :=
  mks_s2_page (_a.(e_count)) (_a.(e_vmid)) _b.
Notation "_a '.[e_gfn]' ':<' _b" := (update_s_s2_page_e_gfn _a _b) (at level 1).

Definition update_s_user_fpsimd_state_e_vregs (_a: s_user_fpsimd_state) _b :=
  mks_user_fpsimd_state _b (_a.(e_fpsr)) (_a.(e_fpcr)) (_a.(e___reserved)).
Notation "_a '.[e_vregs]' ':<' _b" := (update_s_user_fpsimd_state_e_vregs _a _b) (at level 1).

Definition update_s_user_fpsimd_state_e_fpsr (_a: s_user_fpsimd_state) _b :=
  mks_user_fpsimd_state (_a.(e_vregs)) _b (_a.(e_fpcr)) (_a.(e___reserved)).
Notation "_a '.[e_fpsr]' ':<' _b" := (update_s_user_fpsimd_state_e_fpsr _a _b) (at level 1).

Definition update_s_user_fpsimd_state_e_fpcr (_a: s_user_fpsimd_state) _b :=
  mks_user_fpsimd_state (_a.(e_vregs)) (_a.(e_fpsr)) _b (_a.(e___reserved)).
Notation "_a '.[e_fpcr]' ':<' _b" := (update_s_user_fpsimd_state_e_fpcr _a _b) (at level 1).

Definition update_s_user_fpsimd_state_e___reserved (_a: s_user_fpsimd_state) _b :=
  mks_user_fpsimd_state (_a.(e_vregs)) (_a.(e_fpsr)) (_a.(e_fpcr)) _b.
Notation "_a '.[e___reserved]' ':<' _b" := (update_s_user_fpsimd_state_e___reserved _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_regs (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context _b (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_regs]' ':<' _b" := (update_s_shadow_vcpu_context_e_regs _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_far_el2 (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) _b (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_far_el2]' ':<' _b" := (update_s_shadow_vcpu_context_e_far_el2 _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_hpfar (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) _b (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_hpfar]' ':<' _b" := (update_s_shadow_vcpu_context_e_hpfar _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_hcr_el2 (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) _b (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_hcr_el2]' ':<' _b" := (update_s_shadow_vcpu_context_e_hcr_el2 _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_ec (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) _b (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_ec]' ':<' _b" := (update_s_shadow_vcpu_context_e_ec _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_dirty (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) _b (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_dirty]' ':<' _b" := (update_s_shadow_vcpu_context_e_dirty _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e__flags (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) _b (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e__flags]' ':<' _b" := (update_s_shadow_vcpu_context_e__flags _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_sys_regs (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) _b
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_sys_regs]' ':<' _b" := (update_s_shadow_vcpu_context_e_sys_regs _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_fp_regs (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          _b (_a.(e_esr)) (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_fp_regs]' ':<' _b" := (update_s_shadow_vcpu_context_e_fp_regs _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_esr (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) _b (_a.(e__vmid)) (_a.(e_sysregs_el2)).
Notation "_a '.[e_esr]' ':<' _b" := (update_s_shadow_vcpu_context_e_esr _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e__vmid (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) _b (_a.(e_sysregs_el2)).
Notation "_a '.[e__vmid]' ':<' _b" := (update_s_shadow_vcpu_context_e__vmid _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_sysregs_el2 (_a: s_shadow_vcpu_context) _b :=
  mks_shadow_vcpu_context (_a.(e_regs)) (_a.(e_far_el2)) (_a.(e_hpfar)) (_a.(e_hcr_el2)) (_a.(e_ec)) (_a.(e_dirty)) (_a.(e__flags)) (_a.(e_sys_regs))
          (_a.(e_fp_regs)) (_a.(e_esr)) (_a.(e__vmid)) _b.
Notation "_a '.[e_sysregs_el2]' ':<' _b" := (update_s_shadow_vcpu_context_e_sysregs_el2 _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_Op0 (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc _b (_a.(e_Op1)) (_a.(e_CRn)) (_a.(e_CRm)) (_a.(e_Op2)) (_a.(e_reg)) (_a.(e_val)).
Notation "_a '.[e_Op0]' ':<' _b" := (update_s_s2_sys_reg_desc_e_Op0 _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_Op1 (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc (_a.(e_Op0)) _b (_a.(e_CRn)) (_a.(e_CRm)) (_a.(e_Op2)) (_a.(e_reg)) (_a.(e_val)).
Notation "_a '.[e_Op1]' ':<' _b" := (update_s_s2_sys_reg_desc_e_Op1 _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_CRn (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc (_a.(e_Op0)) (_a.(e_Op1)) _b (_a.(e_CRm)) (_a.(e_Op2)) (_a.(e_reg)) (_a.(e_val)).
Notation "_a '.[e_CRn]' ':<' _b" := (update_s_s2_sys_reg_desc_e_CRn _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_CRm (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc (_a.(e_Op0)) (_a.(e_Op1)) (_a.(e_CRn)) _b (_a.(e_Op2)) (_a.(e_reg)) (_a.(e_val)).
Notation "_a '.[e_CRm]' ':<' _b" := (update_s_s2_sys_reg_desc_e_CRm _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_Op2 (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc (_a.(e_Op0)) (_a.(e_Op1)) (_a.(e_CRn)) (_a.(e_CRm)) _b (_a.(e_reg)) (_a.(e_val)).
Notation "_a '.[e_Op2]' ':<' _b" := (update_s_s2_sys_reg_desc_e_Op2 _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_reg (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc (_a.(e_Op0)) (_a.(e_Op1)) (_a.(e_CRn)) (_a.(e_CRm)) (_a.(e_Op2)) _b (_a.(e_val)).
Notation "_a '.[e_reg]' ':<' _b" := (update_s_s2_sys_reg_desc_e_reg _a _b) (at level 1).

Definition update_s_s2_sys_reg_desc_e_val (_a: s_s2_sys_reg_desc) _b :=
  mks_s2_sys_reg_desc (_a.(e_Op0)) (_a.(e_Op1)) (_a.(e_CRn)) (_a.(e_CRm)) (_a.(e_Op2)) (_a.(e_reg)) _b.
Notation "_a '.[e_val]' ':<' _b" := (update_s_s2_sys_reg_desc_e_val _a _b) (at level 1).

Definition update_s_el2_load_info_e_load_addr (_a: s_el2_load_info) _b :=
  mks_el2_load_info _b (_a.(e__size)) (_a.(e_el2_remap_addr)) (_a.(e_el2_mapped_pages)) (_a.(e_signature)).
Notation "_a '.[e_load_addr]' ':<' _b" := (update_s_el2_load_info_e_load_addr _a _b) (at level 1).

Definition update_s_el2_load_info_e__size (_a: s_el2_load_info) _b :=
  mks_el2_load_info (_a.(e_load_addr)) _b (_a.(e_el2_remap_addr)) (_a.(e_el2_mapped_pages)) (_a.(e_signature)).
Notation "_a '.[e__size]' ':<' _b" := (update_s_el2_load_info_e__size _a _b) (at level 1).

Definition update_s_el2_load_info_e_el2_remap_addr (_a: s_el2_load_info) _b :=
  mks_el2_load_info (_a.(e_load_addr)) (_a.(e__size)) _b (_a.(e_el2_mapped_pages)) (_a.(e_signature)).
Notation "_a '.[e_el2_remap_addr]' ':<' _b" := (update_s_el2_load_info_e_el2_remap_addr _a _b) (at level 1).

Definition update_s_el2_load_info_e_el2_mapped_pages (_a: s_el2_load_info) _b :=
  mks_el2_load_info (_a.(e_load_addr)) (_a.(e__size)) (_a.(e_el2_remap_addr)) _b (_a.(e_signature)).
Notation "_a '.[e_el2_mapped_pages]' ':<' _b" := (update_s_el2_load_info_e_el2_mapped_pages _a _b) (at level 1).

Definition update_s_el2_load_info_e_signature (_a: s_el2_load_info) _b :=
  mks_el2_load_info (_a.(e_load_addr)) (_a.(e__size)) (_a.(e_el2_remap_addr)) (_a.(e_el2_mapped_pages)) _b.
Notation "_a '.[e_signature]' ':<' _b" := (update_s_el2_load_info_e_signature _a _b) (at level 1).

Definition update_s_int_vcpu_e_vcpu (_a: s_int_vcpu) _b :=
  mks_int_vcpu _b (_a.(e_vcpu_pg_cnt)) (_a.(e_state)) (_a.(e_ctxtid)).
Notation "_a '.[e_vcpu]' ':<' _b" := (update_s_int_vcpu_e_vcpu _a _b) (at level 1).

Definition update_s_int_vcpu_e_vcpu_pg_cnt (_a: s_int_vcpu) _b :=
  mks_int_vcpu (_a.(e_vcpu)) _b (_a.(e_state)) (_a.(e_ctxtid)).
Notation "_a '.[e_vcpu_pg_cnt]' ':<' _b" := (update_s_int_vcpu_e_vcpu_pg_cnt _a _b) (at level 1).

Definition update_s_int_vcpu_e_state (_a: s_int_vcpu) _b :=
  mks_int_vcpu (_a.(e_vcpu)) (_a.(e_vcpu_pg_cnt)) _b (_a.(e_ctxtid)).
Notation "_a '.[e_state]' ':<' _b" := (update_s_int_vcpu_e_state _a _b) (at level 1).

Definition update_s_int_vcpu_e_ctxtid (_a: s_int_vcpu) _b :=
  mks_int_vcpu (_a.(e_vcpu)) (_a.(e_vcpu_pg_cnt)) (_a.(e_state)) _b.
Notation "_a '.[e_ctxtid]' ':<' _b" := (update_s_int_vcpu_e_ctxtid _a _b) (at level 1).

Definition update_s_el2_smmu_cfg_e____vmid (_a: s_el2_smmu_cfg) _b :=
  mks_el2_smmu_cfg _b (_a.(e_hw_ttbr)).
Notation "_a '.[e____vmid]' ':<' _b" := (update_s_el2_smmu_cfg_e____vmid _a _b) (at level 1).

Definition update_s_el2_smmu_cfg_e_hw_ttbr (_a: s_el2_smmu_cfg) _b :=
  mks_el2_smmu_cfg (_a.(e____vmid)) _b.
Notation "_a '.[e_hw_ttbr]' ':<' _b" := (update_s_el2_smmu_cfg_e_hw_ttbr _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_phys_base (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device _b (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_phys_base]' ':<' _b" := (update_s_el2_arm_smmu_device_e_phys_base _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e___size (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) _b (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e___size]' ':<' _b" := (update_s_el2_arm_smmu_device_e___size _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_pgshift (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) _b (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_pgshift]' ':<' _b" := (update_s_el2_arm_smmu_device_e_pgshift _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_features (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) _b (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_features]' ':<' _b" := (update_s_el2_arm_smmu_device_e_features _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_num_context_banks (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) _b (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_num_context_banks]' ':<' _b" := (update_s_el2_arm_smmu_device_e_num_context_banks _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_num_s2_context_banks (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) _b (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_num_s2_context_banks]' ':<' _b" := (update_s_el2_arm_smmu_device_e_num_s2_context_banks _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_num_mapping_groups (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) _b (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_num_mapping_groups]' ':<' _b" := (update_s_el2_arm_smmu_device_e_num_mapping_groups _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_va_size (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) _b
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_va_size]' ':<' _b" := (update_s_el2_arm_smmu_device_e_va_size _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_ipa_size (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          _b (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_ipa_size]' ':<' _b" := (update_s_el2_arm_smmu_device_e_ipa_size _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_pa_size (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) _b (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_pa_size]' ':<' _b" := (update_s_el2_arm_smmu_device_e_pa_size _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_num_global_irqs (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) _b (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_num_global_irqs]' ':<' _b" := (update_s_el2_arm_smmu_device_e_num_global_irqs _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_num_context_irqs (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) _b (_a.(e_exists)) (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_num_context_irqs]' ':<' _b" := (update_s_el2_arm_smmu_device_e_num_context_irqs _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_exists (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) _b (_a.(e_hyp_base)) (_a.(e__index)).
Notation "_a '.[e_exists]' ':<' _b" := (update_s_el2_arm_smmu_device_e_exists _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e_hyp_base (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) _b (_a.(e__index)).
Notation "_a '.[e_hyp_base]' ':<' _b" := (update_s_el2_arm_smmu_device_e_hyp_base _a _b) (at level 1).

Definition update_s_el2_arm_smmu_device_e__index (_a: s_el2_arm_smmu_device) _b :=
  mks_el2_arm_smmu_device (_a.(e_phys_base)) (_a.(e___size)) (_a.(e_pgshift)) (_a.(e_features)) (_a.(e_num_context_banks)) (_a.(e_num_s2_context_banks)) (_a.(e_num_mapping_groups)) (_a.(e_va_size))
          (_a.(e_ipa_size)) (_a.(e_pa_size)) (_a.(e_num_global_irqs)) (_a.(e_num_context_irqs)) (_a.(e_exists)) (_a.(e_hyp_base)) _b.
Notation "_a '.[e__index]' ':<' _b" := (update_s_el2_arm_smmu_device_e__index _a _b) (at level 1).

Definition update_s_user_pt_regs_e__regs (_a: s_user_pt_regs) _b :=
  mks_user_pt_regs _b (_a.(e_sp)) (_a.(e_pc)) (_a.(e_pstate)).
Notation "_a '.[e__regs]' ':<' _b" := (update_s_user_pt_regs_e__regs _a _b) (at level 1).

Definition update_s_user_pt_regs_e_sp (_a: s_user_pt_regs) _b :=
  mks_user_pt_regs (_a.(e__regs)) _b (_a.(e_pc)) (_a.(e_pstate)).
Notation "_a '.[e_sp]' ':<' _b" := (update_s_user_pt_regs_e_sp _a _b) (at level 1).

Definition update_s_user_pt_regs_e_pc (_a: s_user_pt_regs) _b :=
  mks_user_pt_regs (_a.(e__regs)) (_a.(e_sp)) _b (_a.(e_pstate)).
Notation "_a '.[e_pc]' ':<' _b" := (update_s_user_pt_regs_e_pc _a _b) (at level 1).

Definition update_s_user_pt_regs_e_pstate (_a: s_user_pt_regs) _b :=
  mks_user_pt_regs (_a.(e__regs)) (_a.(e_sp)) (_a.(e_pc)) _b.
Notation "_a '.[e_pstate]' ':<' _b" := (update_s_user_pt_regs_e_pstate _a _b) (at level 1).

Definition update_s_kvm_regs_e___regs (_a: s_kvm_regs) _b :=
  mks_kvm_regs _b (_a.(e_sp_el1)) (_a.(e_elr_el1)) (_a.(e_spsr)) (_a.(e__fp_regs)).
Notation "_a '.[e___regs]' ':<' _b" := (update_s_kvm_regs_e___regs _a _b) (at level 1).

Definition update_s_kvm_regs_e_sp_el1 (_a: s_kvm_regs) _b :=
  mks_kvm_regs (_a.(e___regs)) _b (_a.(e_elr_el1)) (_a.(e_spsr)) (_a.(e__fp_regs)).
Notation "_a '.[e_sp_el1]' ':<' _b" := (update_s_kvm_regs_e_sp_el1 _a _b) (at level 1).

Definition update_s_kvm_regs_e_elr_el1 (_a: s_kvm_regs) _b :=
  mks_kvm_regs (_a.(e___regs)) (_a.(e_sp_el1)) _b (_a.(e_spsr)) (_a.(e__fp_regs)).
Notation "_a '.[e_elr_el1]' ':<' _b" := (update_s_kvm_regs_e_elr_el1 _a _b) (at level 1).

Definition update_s_kvm_regs_e_spsr (_a: s_kvm_regs) _b :=
  mks_kvm_regs (_a.(e___regs)) (_a.(e_sp_el1)) (_a.(e_elr_el1)) _b (_a.(e__fp_regs)).
Notation "_a '.[e_spsr]' ':<' _b" := (update_s_kvm_regs_e_spsr _a _b) (at level 1).

Definition update_s_kvm_regs_e__fp_regs (_a: s_kvm_regs) _b :=
  mks_kvm_regs (_a.(e___regs)) (_a.(e_sp_el1)) (_a.(e_elr_el1)) (_a.(e_spsr)) _b.
Notation "_a '.[e__fp_regs]' ':<' _b" := (update_s_kvm_regs_e__fp_regs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs (_a: s_kvm_cpu_context) _b :=
  mks_kvm_cpu_context _b (_a.(e__sys_regs)) (_a.(e___hyp_running_vcpu)).
Notation "_a '.[e_gp_regs]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e__sys_regs (_a: s_kvm_cpu_context) _b :=
  mks_kvm_cpu_context (_a.(e_gp_regs)) _b (_a.(e___hyp_running_vcpu)).
Notation "_a '.[e__sys_regs]' ':<' _b" := (update_s_kvm_cpu_context_e__sys_regs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e___hyp_running_vcpu (_a: s_kvm_cpu_context) _b :=
  mks_kvm_cpu_context (_a.(e_gp_regs)) (_a.(e__sys_regs)) _b.
Notation "_a '.[e___hyp_running_vcpu]' ':<' _b" := (update_s_kvm_cpu_context_e___hyp_running_vcpu _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_____vmid (_a: s_el2_per_cpu_data) _b :=
  mks_el2_per_cpu_data _b (_a.(e_vcpu_id)) (_a.(e_core_ctxt)) (_a.(e_host_regs)).
Notation "_a '.[e_____vmid]' ':<' _b" := (update_s_el2_per_cpu_data_e_____vmid _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_vcpu_id (_a: s_el2_per_cpu_data) _b :=
  mks_el2_per_cpu_data (_a.(e_____vmid)) _b (_a.(e_core_ctxt)) (_a.(e_host_regs)).
Notation "_a '.[e_vcpu_id]' ':<' _b" := (update_s_el2_per_cpu_data_e_vcpu_id _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt (_a: s_el2_per_cpu_data) _b :=
  mks_el2_per_cpu_data (_a.(e_____vmid)) (_a.(e_vcpu_id)) _b (_a.(e_host_regs)).
Notation "_a '.[e_core_ctxt]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_host_regs (_a: s_el2_per_cpu_data) _b :=
  mks_el2_per_cpu_data (_a.(e_____vmid)) (_a.(e_vcpu_id)) (_a.(e_core_ctxt)) _b.
Notation "_a '.[e_host_regs]' ':<' _b" := (update_s_el2_per_cpu_data_e_host_regs _a _b) (at level 1).

Definition update_s_atomic_t_e_counter (_a: s_atomic_t) _b :=
  mks_atomic_t _b.
Notation "_a '.[e_counter]' ':<' _b" := (update_s_atomic_t_e_counter _a _b) (at level 1).

Definition update_u_anon_1_e__val (_a: u_anon_1) _b :=
  mku_anon_1 _b.
Notation "_a '.[e__val]' ':<' _b" := (update_u_anon_1_e__val _a _b) (at level 1).

Definition update_s_qspinlock_e_qspinlock_0 (_a: s_qspinlock) _b :=
  mks_qspinlock _b.
Notation "_a '.[e_qspinlock_0]' ':<' _b" := (update_s_qspinlock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_raw_spinlock_e_raw_lock (_a: s_raw_spinlock) _b :=
  mks_raw_spinlock _b.
Notation "_a '.[e_raw_lock]' ':<' _b" := (update_s_raw_spinlock_e_raw_lock _a _b) (at level 1).

Definition update_u_anon_0_e_rlock (_a: u_anon_0) _b :=
  mku_anon_0 _b.
Notation "_a '.[e_rlock]' ':<' _b" := (update_u_anon_0_e_rlock _a _b) (at level 1).

Definition update_s_spinlock_e_spinlock_0 (_a: s_spinlock) _b :=
  mks_spinlock _b.
Notation "_a '.[e_spinlock_0]' ':<' _b" := (update_s_spinlock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_atomic64_t_e__counter (_a: s_atomic64_t) _b :=
  mks_atomic64_t _b.
Notation "_a '.[e__counter]' ':<' _b" := (update_s_atomic64_t_e__counter _a _b) (at level 1).

Definition update_s_optimistic_spin_queue_e_tail (_a: s_optimistic_spin_queue) _b :=
  mks_optimistic_spin_queue _b.
Notation "_a '.[e_tail]' ':<' _b" := (update_s_optimistic_spin_queue_e_tail _a _b) (at level 1).

Definition update_s_list_head_e_next (_a: s_list_head) _b :=
  mks_list_head _b (_a.(e_prev)).
Notation "_a '.[e_next]' ':<' _b" := (update_s_list_head_e_next _a _b) (at level 1).

Definition update_s_list_head_e_prev (_a: s_list_head) _b :=
  mks_list_head (_a.(e_next)) _b.
Notation "_a '.[e_prev]' ':<' _b" := (update_s_list_head_e_prev _a _b) (at level 1).

Definition update_s_mutex_e_owner (_a: s_mutex) _b :=
  mks_mutex _b (_a.(e_wait_lock)) (_a.(e_osq)) (_a.(e_wait_list)).
Notation "_a '.[e_owner]' ':<' _b" := (update_s_mutex_e_owner _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock (_a: s_mutex) _b :=
  mks_mutex (_a.(e_owner)) _b (_a.(e_osq)) (_a.(e_wait_list)).
Notation "_a '.[e_wait_lock]' ':<' _b" := (update_s_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_mutex_e_osq (_a: s_mutex) _b :=
  mks_mutex (_a.(e_owner)) (_a.(e_wait_lock)) _b (_a.(e_wait_list)).
Notation "_a '.[e_osq]' ':<' _b" := (update_s_mutex_e_osq _a _b) (at level 1).

Definition update_s_mutex_e_wait_list (_a: s_mutex) _b :=
  mks_mutex (_a.(e_owner)) (_a.(e_wait_lock)) (_a.(e_osq)) _b.
Notation "_a '.[e_wait_list]' ':<' _b" := (update_s_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_anon_124_e__lock (_a: s_anon_124) _b :=
  mks_anon_124 _b (_a.(e_items)) (_a.(e_resampler_list)) (_a.(e_resampler_lock)).
Notation "_a '.[e__lock]' ':<' _b" := (update_s_anon_124_e__lock _a _b) (at level 1).

Definition update_s_anon_124_e_items (_a: s_anon_124) _b :=
  mks_anon_124 (_a.(e__lock)) _b (_a.(e_resampler_list)) (_a.(e_resampler_lock)).
Notation "_a '.[e_items]' ':<' _b" := (update_s_anon_124_e_items _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_list (_a: s_anon_124) _b :=
  mks_anon_124 (_a.(e__lock)) (_a.(e_items)) _b (_a.(e_resampler_lock)).
Notation "_a '.[e_resampler_list]' ':<' _b" := (update_s_anon_124_e_resampler_list _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock (_a: s_anon_124) _b :=
  mks_anon_124 (_a.(e__lock)) (_a.(e_items)) (_a.(e_resampler_list)) _b.
Notation "_a '.[e_resampler_lock]' ':<' _b" := (update_s_anon_124_e_resampler_lock _a _b) (at level 1).

Definition update_s_kvm_vm_stat_e_remote_tlb_flush (_a: s_kvm_vm_stat) _b :=
  mks_kvm_vm_stat _b.
Notation "_a '.[e_remote_tlb_flush]' ':<' _b" := (update_s_kvm_vm_stat_e_remote_tlb_flush _a _b) (at level 1).

Definition update_s_kvm_vmid_e_vmid_gen (_a: s_kvm_vmid) _b :=
  mks_kvm_vmid _b (_a.(e______vmid)).
Notation "_a '.[e_vmid_gen]' ':<' _b" := (update_s_kvm_vmid_e_vmid_gen _a _b) (at level 1).

Definition update_s_kvm_vmid_e______vmid (_a: s_kvm_vmid) _b :=
  mks_kvm_vmid (_a.(e_vmid_gen)) _b.
Notation "_a '.[e______vmid]' ':<' _b" := (update_s_kvm_vmid_e______vmid _a _b) (at level 1).

Definition update_u_anon_125_e__vgic_cpu_base (_a: u_anon_125) _b :=
  mku_anon_125 _b.
Notation "_a '.[e__vgic_cpu_base]' ':<' _b" := (update_u_anon_125_e__vgic_cpu_base _a _b) (at level 1).

Definition update_u_anon_121_e_redist_vcpu (_a: u_anon_121) _b :=
  mku_anon_121 _b.
Notation "_a '.[e_redist_vcpu]' ':<' _b" := (update_u_anon_121_e_redist_vcpu _a _b) (at level 1).

Definition update_s_kvm_io_device_e_ops (_a: s_kvm_io_device) _b :=
  mks_kvm_io_device _b.
Notation "_a '.[e_ops]' ':<' _b" := (update_s_kvm_io_device_e_ops _a _b) (at level 1).

Definition update_s_vgic_io_device_e_base_addr (_a: s_vgic_io_device) _b :=
  mks_vgic_io_device _b (_a.(e_vgic_io_device_1)) (_a.(e__regions)) (_a.(e_iodev_type)) (_a.(e_nr_regions)) (_a.(e_dev)).
Notation "_a '.[e_base_addr]' ':<' _b" := (update_s_vgic_io_device_e_base_addr _a _b) (at level 1).

Definition update_s_vgic_io_device_e_vgic_io_device_1 (_a: s_vgic_io_device) _b :=
  mks_vgic_io_device (_a.(e_base_addr)) _b (_a.(e__regions)) (_a.(e_iodev_type)) (_a.(e_nr_regions)) (_a.(e_dev)).
Notation "_a '.[e_vgic_io_device_1]' ':<' _b" := (update_s_vgic_io_device_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_vgic_io_device_e__regions (_a: s_vgic_io_device) _b :=
  mks_vgic_io_device (_a.(e_base_addr)) (_a.(e_vgic_io_device_1)) _b (_a.(e_iodev_type)) (_a.(e_nr_regions)) (_a.(e_dev)).
Notation "_a '.[e__regions]' ':<' _b" := (update_s_vgic_io_device_e__regions _a _b) (at level 1).

Definition update_s_vgic_io_device_e_iodev_type (_a: s_vgic_io_device) _b :=
  mks_vgic_io_device (_a.(e_base_addr)) (_a.(e_vgic_io_device_1)) (_a.(e__regions)) _b (_a.(e_nr_regions)) (_a.(e_dev)).
Notation "_a '.[e_iodev_type]' ':<' _b" := (update_s_vgic_io_device_e_iodev_type _a _b) (at level 1).

Definition update_s_vgic_io_device_e_nr_regions (_a: s_vgic_io_device) _b :=
  mks_vgic_io_device (_a.(e_base_addr)) (_a.(e_vgic_io_device_1)) (_a.(e__regions)) (_a.(e_iodev_type)) _b (_a.(e_dev)).
Notation "_a '.[e_nr_regions]' ':<' _b" := (update_s_vgic_io_device_e_nr_regions _a _b) (at level 1).

Definition update_s_vgic_io_device_e_dev (_a: s_vgic_io_device) _b :=
  mks_vgic_io_device (_a.(e_base_addr)) (_a.(e_vgic_io_device_1)) (_a.(e__regions)) (_a.(e_iodev_type)) (_a.(e_nr_regions)) _b.
Notation "_a '.[e_dev]' ':<' _b" := (update_s_vgic_io_device_e_dev _a _b) (at level 1).

Definition update_s_its_vm_e_fwnode (_a: s_its_vm) _b :=
  mks_its_vm _b (_a.(e_domain)) (_a.(e_vprop_page)) (_a.(e_vpes)) (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_fwnode]' ':<' _b" := (update_s_its_vm_e_fwnode _a _b) (at level 1).

Definition update_s_its_vm_e_domain (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) _b (_a.(e_vprop_page)) (_a.(e_vpes)) (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_domain]' ':<' _b" := (update_s_its_vm_e_domain _a _b) (at level 1).

Definition update_s_its_vm_e_vprop_page (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) _b (_a.(e_vpes)) (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_vprop_page]' ':<' _b" := (update_s_its_vm_e_vprop_page _a _b) (at level 1).

Definition update_s_its_vm_e_vpes (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) (_a.(e_vprop_page)) _b (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_vpes]' ':<' _b" := (update_s_its_vm_e_vpes _a _b) (at level 1).

Definition update_s_its_vm_e_nr_vpes (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) (_a.(e_vprop_page)) (_a.(e_vpes)) _b (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_nr_vpes]' ':<' _b" := (update_s_its_vm_e_nr_vpes _a _b) (at level 1).

Definition update_s_its_vm_e_db_lpi_base (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) (_a.(e_vprop_page)) (_a.(e_vpes)) (_a.(e_nr_vpes)) _b (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_db_lpi_base]' ':<' _b" := (update_s_its_vm_e_db_lpi_base _a _b) (at level 1).

Definition update_s_its_vm_e_db_bitmap (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) (_a.(e_vprop_page)) (_a.(e_vpes)) (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) _b (_a.(e_nr_db_lpis))
          (_a.(e_vlpi_count)).
Notation "_a '.[e_db_bitmap]' ':<' _b" := (update_s_its_vm_e_db_bitmap _a _b) (at level 1).

Definition update_s_its_vm_e_nr_db_lpis (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) (_a.(e_vprop_page)) (_a.(e_vpes)) (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) _b
          (_a.(e_vlpi_count)).
Notation "_a '.[e_nr_db_lpis]' ':<' _b" := (update_s_its_vm_e_nr_db_lpis _a _b) (at level 1).

Definition update_s_its_vm_e_vlpi_count (_a: s_its_vm) _b :=
  mks_its_vm (_a.(e_fwnode)) (_a.(e_domain)) (_a.(e_vprop_page)) (_a.(e_vpes)) (_a.(e_nr_vpes)) (_a.(e_db_lpi_base)) (_a.(e_db_bitmap)) (_a.(e_nr_db_lpis))
          _b.
Notation "_a '.[e_vlpi_count]' ':<' _b" := (update_s_its_vm_e_vlpi_count _a _b) (at level 1).

Definition update_s_vgic_dist_e_in_kernel (_a: s_vgic_dist) _b :=
  mks_vgic_dist _b (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_in_kernel]' ':<' _b" := (update_s_vgic_dist_e_in_kernel _a _b) (at level 1).

Definition update_s_vgic_dist_e_ready (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) _b (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_ready]' ':<' _b" := (update_s_vgic_dist_e_ready _a _b) (at level 1).

Definition update_s_vgic_dist_e_initialized (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) _b (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_initialized]' ':<' _b" := (update_s_vgic_dist_e_initialized _a _b) (at level 1).

Definition update_s_vgic_dist_e_vgic_model (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) _b (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_vgic_model]' ':<' _b" := (update_s_vgic_dist_e_vgic_model _a _b) (at level 1).

Definition update_s_vgic_dist_e_implementation_rev (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) _b (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_implementation_rev]' ':<' _b" := (update_s_vgic_dist_e_implementation_rev _a _b) (at level 1).

Definition update_s_vgic_dist_e_v2_groups_user_writable (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) _b (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_v2_groups_user_writable]' ':<' _b" := (update_s_vgic_dist_e_v2_groups_user_writable _a _b) (at level 1).

Definition update_s_vgic_dist_e_msis_require_devid (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) _b (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_msis_require_devid]' ':<' _b" := (update_s_vgic_dist_e_msis_require_devid _a _b) (at level 1).

Definition update_s_vgic_dist_e_nr_spis (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) _b
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_nr_spis]' ':<' _b" := (update_s_vgic_dist_e_nr_spis _a _b) (at level 1).

Definition update_s_vgic_dist_e_vgic_dist_base (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          _b (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_vgic_dist_base]' ':<' _b" := (update_s_vgic_dist_e_vgic_dist_base _a _b) (at level 1).

Definition update_s_vgic_dist_e_vgic_dist_9 (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) _b (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_vgic_dist_9]' ':<' _b" := (update_s_vgic_dist_e_vgic_dist_9 _a _b) (at level 1).

Definition update_s_vgic_dist_e_enabled (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) _b (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_enabled]' ':<' _b" := (update_s_vgic_dist_e_enabled _a _b) (at level 1).

Definition update_s_vgic_dist_e_spis (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) _b (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_spis]' ':<' _b" := (update_s_vgic_dist_e_spis _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) _b (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_dist_iodev]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev _a _b) (at level 1).

Definition update_s_vgic_dist_e_has_its (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) _b (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_has_its]' ':<' _b" := (update_s_vgic_dist_e_has_its _a _b) (at level 1).

Definition update_s_vgic_dist_e_propbaser (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) _b (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_propbaser]' ':<' _b" := (update_s_vgic_dist_e_propbaser _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_lock (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) _b
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_lpi_list_lock]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_lock _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_head (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          _b (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_lpi_list_head]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_head _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_count (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) _b (_a.(e_lpi_translation_cache)) (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_lpi_list_count]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_count _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_translation_cache (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) _b (_a.(e_iter)) (_a.(e_its_vm)).
Notation "_a '.[e_lpi_translation_cache]' ':<' _b" := (update_s_vgic_dist_e_lpi_translation_cache _a _b) (at level 1).

Definition update_s_vgic_dist_e_iter (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) _b (_a.(e_its_vm)).
Notation "_a '.[e_iter]' ':<' _b" := (update_s_vgic_dist_e_iter _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm (_a: s_vgic_dist) _b :=
  mks_vgic_dist (_a.(e_in_kernel)) (_a.(e_ready)) (_a.(e_initialized)) (_a.(e_vgic_model)) (_a.(e_implementation_rev)) (_a.(e_v2_groups_user_writable)) (_a.(e_msis_require_devid)) (_a.(e_nr_spis))
          (_a.(e_vgic_dist_base)) (_a.(e_vgic_dist_9)) (_a.(e_enabled)) (_a.(e_spis)) (_a.(e_dist_iodev)) (_a.(e_has_its)) (_a.(e_propbaser)) (_a.(e_lpi_list_lock))
          (_a.(e_lpi_list_head)) (_a.(e_lpi_list_count)) (_a.(e_lpi_translation_cache)) (_a.(e_iter)) _b.
Notation "_a '.[e_its_vm]' ':<' _b" := (update_s_vgic_dist_e_its_vm _a _b) (at level 1).

Definition update_s_kvm_arch_e_______vmid (_a: s_kvm_arch) _b :=
  mks_kvm_arch _b (_a.(e_pgd)) (_a.(e_pgd_phys)) (_a.(e_vtcr)) (_a.(e_last_vcpu_ran)) (_a.(e_max_vcpus)) (_a.(e_vgic)) (_a.(e_psci_version)).
Notation "_a '.[e_______vmid]' ':<' _b" := (update_s_kvm_arch_e_______vmid _a _b) (at level 1).

Definition update_s_kvm_arch_e_pgd (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) _b (_a.(e_pgd_phys)) (_a.(e_vtcr)) (_a.(e_last_vcpu_ran)) (_a.(e_max_vcpus)) (_a.(e_vgic)) (_a.(e_psci_version)).
Notation "_a '.[e_pgd]' ':<' _b" := (update_s_kvm_arch_e_pgd _a _b) (at level 1).

Definition update_s_kvm_arch_e_pgd_phys (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) (_a.(e_pgd)) _b (_a.(e_vtcr)) (_a.(e_last_vcpu_ran)) (_a.(e_max_vcpus)) (_a.(e_vgic)) (_a.(e_psci_version)).
Notation "_a '.[e_pgd_phys]' ':<' _b" := (update_s_kvm_arch_e_pgd_phys _a _b) (at level 1).

Definition update_s_kvm_arch_e_vtcr (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) (_a.(e_pgd)) (_a.(e_pgd_phys)) _b (_a.(e_last_vcpu_ran)) (_a.(e_max_vcpus)) (_a.(e_vgic)) (_a.(e_psci_version)).
Notation "_a '.[e_vtcr]' ':<' _b" := (update_s_kvm_arch_e_vtcr _a _b) (at level 1).

Definition update_s_kvm_arch_e_last_vcpu_ran (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) (_a.(e_pgd)) (_a.(e_pgd_phys)) (_a.(e_vtcr)) _b (_a.(e_max_vcpus)) (_a.(e_vgic)) (_a.(e_psci_version)).
Notation "_a '.[e_last_vcpu_ran]' ':<' _b" := (update_s_kvm_arch_e_last_vcpu_ran _a _b) (at level 1).

Definition update_s_kvm_arch_e_max_vcpus (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) (_a.(e_pgd)) (_a.(e_pgd_phys)) (_a.(e_vtcr)) (_a.(e_last_vcpu_ran)) _b (_a.(e_vgic)) (_a.(e_psci_version)).
Notation "_a '.[e_max_vcpus]' ':<' _b" := (update_s_kvm_arch_e_max_vcpus _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) (_a.(e_pgd)) (_a.(e_pgd_phys)) (_a.(e_vtcr)) (_a.(e_last_vcpu_ran)) (_a.(e_max_vcpus)) _b (_a.(e_psci_version)).
Notation "_a '.[e_vgic]' ':<' _b" := (update_s_kvm_arch_e_vgic _a _b) (at level 1).

Definition update_s_kvm_arch_e_psci_version (_a: s_kvm_arch) _b :=
  mks_kvm_arch (_a.(e_______vmid)) (_a.(e_pgd)) (_a.(e_pgd_phys)) (_a.(e_vtcr)) (_a.(e_last_vcpu_ran)) (_a.(e_max_vcpus)) (_a.(e_vgic)) _b.
Notation "_a '.[e_psci_version]' ':<' _b" := (update_s_kvm_arch_e_psci_version _a _b) (at level 1).

Definition update_s_refcount_struct_e_refs (_a: s_refcount_struct) _b :=
  mks_refcount_struct _b.
Notation "_a '.[e_refs]' ':<' _b" := (update_s_refcount_struct_e_refs _a _b) (at level 1).

Definition update_s_hlist_head_e_first (_a: s_hlist_head) _b :=
  mks_hlist_head _b.
Notation "_a '.[e_first]' ':<' _b" := (update_s_hlist_head_e_first _a _b) (at level 1).

Definition update_s_hlist_node_e__next (_a: s_hlist_node) _b :=
  mks_hlist_node _b (_a.(e_pprev)).
Notation "_a '.[e__next]' ':<' _b" := (update_s_hlist_node_e__next _a _b) (at level 1).

Definition update_s_hlist_node_e_pprev (_a: s_hlist_node) _b :=
  mks_hlist_node (_a.(e__next)) _b.
Notation "_a '.[e_pprev]' ':<' _b" := (update_s_hlist_node_e_pprev _a _b) (at level 1).

Definition update_s_callback_head_e___next (_a: s_callback_head) _b :=
  mks_callback_head _b (_a.(e_func)).
Notation "_a '.[e___next]' ':<' _b" := (update_s_callback_head_e___next _a _b) (at level 1).

Definition update_s_callback_head_e_func (_a: s_callback_head) _b :=
  mks_callback_head (_a.(e___next)) _b.
Notation "_a '.[e_func]' ':<' _b" := (update_s_callback_head_e_func _a _b) (at level 1).

Definition update_s_mmu_notifier_e_hlist (_a: s_mmu_notifier) _b :=
  mks_mmu_notifier _b (_a.(e__ops)) (_a.(e_mm)) (_a.(e_rcu)) (_a.(e_users)).
Notation "_a '.[e_hlist]' ':<' _b" := (update_s_mmu_notifier_e_hlist _a _b) (at level 1).

Definition update_s_mmu_notifier_e__ops (_a: s_mmu_notifier) _b :=
  mks_mmu_notifier (_a.(e_hlist)) _b (_a.(e_mm)) (_a.(e_rcu)) (_a.(e_users)).
Notation "_a '.[e__ops]' ':<' _b" := (update_s_mmu_notifier_e__ops _a _b) (at level 1).

Definition update_s_mmu_notifier_e_mm (_a: s_mmu_notifier) _b :=
  mks_mmu_notifier (_a.(e_hlist)) (_a.(e__ops)) _b (_a.(e_rcu)) (_a.(e_users)).
Notation "_a '.[e_mm]' ':<' _b" := (update_s_mmu_notifier_e_mm _a _b) (at level 1).

Definition update_s_mmu_notifier_e_rcu (_a: s_mmu_notifier) _b :=
  mks_mmu_notifier (_a.(e_hlist)) (_a.(e__ops)) (_a.(e_mm)) _b (_a.(e_users)).
Notation "_a '.[e_rcu]' ':<' _b" := (update_s_mmu_notifier_e_rcu _a _b) (at level 1).

Definition update_s_mmu_notifier_e_users (_a: s_mmu_notifier) _b :=
  mks_mmu_notifier (_a.(e_hlist)) (_a.(e__ops)) (_a.(e_mm)) (_a.(e_rcu)) _b.
Notation "_a '.[e_users]' ':<' _b" := (update_s_mmu_notifier_e_users _a _b) (at level 1).

Definition update_s_srcu_node_e___lock (_a: s_srcu_node) _b :=
  mks_srcu_node _b (_a.(e_srcu_have_cbs)) (_a.(e_srcu_data_have_cbs)) (_a.(e_srcu_gp_seq_needed_exp)) (_a.(e_srcu_parent)) (_a.(e_grplo)) (_a.(e_grphi)).
Notation "_a '.[e___lock]' ':<' _b" := (update_s_srcu_node_e___lock _a _b) (at level 1).

Definition update_s_srcu_node_e_srcu_have_cbs (_a: s_srcu_node) _b :=
  mks_srcu_node (_a.(e___lock)) _b (_a.(e_srcu_data_have_cbs)) (_a.(e_srcu_gp_seq_needed_exp)) (_a.(e_srcu_parent)) (_a.(e_grplo)) (_a.(e_grphi)).
Notation "_a '.[e_srcu_have_cbs]' ':<' _b" := (update_s_srcu_node_e_srcu_have_cbs _a _b) (at level 1).

Definition update_s_srcu_node_e_srcu_data_have_cbs (_a: s_srcu_node) _b :=
  mks_srcu_node (_a.(e___lock)) (_a.(e_srcu_have_cbs)) _b (_a.(e_srcu_gp_seq_needed_exp)) (_a.(e_srcu_parent)) (_a.(e_grplo)) (_a.(e_grphi)).
Notation "_a '.[e_srcu_data_have_cbs]' ':<' _b" := (update_s_srcu_node_e_srcu_data_have_cbs _a _b) (at level 1).

Definition update_s_srcu_node_e_srcu_gp_seq_needed_exp (_a: s_srcu_node) _b :=
  mks_srcu_node (_a.(e___lock)) (_a.(e_srcu_have_cbs)) (_a.(e_srcu_data_have_cbs)) _b (_a.(e_srcu_parent)) (_a.(e_grplo)) (_a.(e_grphi)).
Notation "_a '.[e_srcu_gp_seq_needed_exp]' ':<' _b" := (update_s_srcu_node_e_srcu_gp_seq_needed_exp _a _b) (at level 1).

Definition update_s_srcu_node_e_srcu_parent (_a: s_srcu_node) _b :=
  mks_srcu_node (_a.(e___lock)) (_a.(e_srcu_have_cbs)) (_a.(e_srcu_data_have_cbs)) (_a.(e_srcu_gp_seq_needed_exp)) _b (_a.(e_grplo)) (_a.(e_grphi)).
Notation "_a '.[e_srcu_parent]' ':<' _b" := (update_s_srcu_node_e_srcu_parent _a _b) (at level 1).

Definition update_s_srcu_node_e_grplo (_a: s_srcu_node) _b :=
  mks_srcu_node (_a.(e___lock)) (_a.(e_srcu_have_cbs)) (_a.(e_srcu_data_have_cbs)) (_a.(e_srcu_gp_seq_needed_exp)) (_a.(e_srcu_parent)) _b (_a.(e_grphi)).
Notation "_a '.[e_grplo]' ':<' _b" := (update_s_srcu_node_e_grplo _a _b) (at level 1).

Definition update_s_srcu_node_e_grphi (_a: s_srcu_node) _b :=
  mks_srcu_node (_a.(e___lock)) (_a.(e_srcu_have_cbs)) (_a.(e_srcu_data_have_cbs)) (_a.(e_srcu_gp_seq_needed_exp)) (_a.(e_srcu_parent)) (_a.(e_grplo)) _b.
Notation "_a '.[e_grphi]' ':<' _b" := (update_s_srcu_node_e_grphi _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock (_a: s_wait_queue_head) _b :=
  mks_wait_queue_head _b (_a.(e_head)).
Notation "_a '.[e____lock]' ':<' _b" := (update_s_wait_queue_head_e____lock _a _b) (at level 1).

Definition update_s_wait_queue_head_e_head (_a: s_wait_queue_head) _b :=
  mks_wait_queue_head (_a.(e____lock)) _b.
Notation "_a '.[e_head]' ':<' _b" := (update_s_wait_queue_head_e_head _a _b) (at level 1).

Definition update_s_completion_e_done (_a: s_completion) _b :=
  mks_completion _b (_a.(e_wait)).
Notation "_a '.[e_done]' ':<' _b" := (update_s_completion_e_done _a _b) (at level 1).

Definition update_s_completion_e_wait (_a: s_completion) _b :=
  mks_completion (_a.(e_done)) _b.
Notation "_a '.[e_wait]' ':<' _b" := (update_s_completion_e_wait _a _b) (at level 1).

Definition update_s_work_struct_e_data (_a: s_work_struct) _b :=
  mks_work_struct _b (_a.(e_entry)) (_a.(e__func)).
Notation "_a '.[e_data]' ':<' _b" := (update_s_work_struct_e_data _a _b) (at level 1).

Definition update_s_work_struct_e_entry (_a: s_work_struct) _b :=
  mks_work_struct (_a.(e_data)) _b (_a.(e__func)).
Notation "_a '.[e_entry]' ':<' _b" := (update_s_work_struct_e_entry _a _b) (at level 1).

Definition update_s_work_struct_e__func (_a: s_work_struct) _b :=
  mks_work_struct (_a.(e_data)) (_a.(e_entry)) _b.
Notation "_a '.[e__func]' ':<' _b" := (update_s_work_struct_e__func _a _b) (at level 1).

Definition update_s_timer_list_e__entry (_a: s_timer_list) _b :=
  mks_timer_list _b (_a.(e_expires)) (_a.(e_function)) (_a.(e___flags)).
Notation "_a '.[e__entry]' ':<' _b" := (update_s_timer_list_e__entry _a _b) (at level 1).

Definition update_s_timer_list_e_expires (_a: s_timer_list) _b :=
  mks_timer_list (_a.(e__entry)) _b (_a.(e_function)) (_a.(e___flags)).
Notation "_a '.[e_expires]' ':<' _b" := (update_s_timer_list_e_expires _a _b) (at level 1).

Definition update_s_timer_list_e_function (_a: s_timer_list) _b :=
  mks_timer_list (_a.(e__entry)) (_a.(e_expires)) _b (_a.(e___flags)).
Notation "_a '.[e_function]' ':<' _b" := (update_s_timer_list_e_function _a _b) (at level 1).

Definition update_s_timer_list_e___flags (_a: s_timer_list) _b :=
  mks_timer_list (_a.(e__entry)) (_a.(e_expires)) (_a.(e_function)) _b.
Notation "_a '.[e___flags]' ':<' _b" := (update_s_timer_list_e___flags _a _b) (at level 1).

Definition update_s_delayed_work_e_work (_a: s_delayed_work) _b :=
  mks_delayed_work _b (_a.(e_timer)) (_a.(e_wq)) (_a.(e_cpu)).
Notation "_a '.[e_work]' ':<' _b" := (update_s_delayed_work_e_work _a _b) (at level 1).

Definition update_s_delayed_work_e_timer (_a: s_delayed_work) _b :=
  mks_delayed_work (_a.(e_work)) _b (_a.(e_wq)) (_a.(e_cpu)).
Notation "_a '.[e_timer]' ':<' _b" := (update_s_delayed_work_e_timer _a _b) (at level 1).

Definition update_s_delayed_work_e_wq (_a: s_delayed_work) _b :=
  mks_delayed_work (_a.(e_work)) (_a.(e_timer)) _b (_a.(e_cpu)).
Notation "_a '.[e_wq]' ':<' _b" := (update_s_delayed_work_e_wq _a _b) (at level 1).

Definition update_s_delayed_work_e_cpu (_a: s_delayed_work) _b :=
  mks_delayed_work (_a.(e_work)) (_a.(e_timer)) (_a.(e_wq)) _b.
Notation "_a '.[e_cpu]' ':<' _b" := (update_s_delayed_work_e_cpu _a _b) (at level 1).

Definition update_s_srcu_struct_e_node (_a: s_srcu_struct) _b :=
  mks_srcu_struct _b (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_node]' ':<' _b" := (update_s_srcu_struct_e_node _a _b) (at level 1).

Definition update_s_srcu_struct_e_level (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) _b (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_level]' ':<' _b" := (update_s_srcu_struct_e_level _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) _b (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_cb_mutex]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) _b (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_____lock]' ':<' _b" := (update_s_srcu_struct_e_____lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) _b (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_gp_mutex]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_idx (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) _b (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_idx]' ':<' _b" := (update_s_srcu_struct_e_srcu_idx _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_seq (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) _b (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_gp_seq]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_seq _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_seq_needed (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) _b
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_gp_seq_needed]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_seq_needed _a _b) (at level 1).

Definition update_s_srcu_struct_e__srcu_gp_seq_needed_exp (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          _b (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e__srcu_gp_seq_needed_exp]' ':<' _b" := (update_s_srcu_struct_e__srcu_gp_seq_needed_exp _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_last_gp_end (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) _b (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_last_gp_end]' ':<' _b" := (update_s_srcu_struct_e_srcu_last_gp_end _a _b) (at level 1).

Definition update_s_srcu_struct_e_sda (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) _b (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_sda]' ':<' _b" := (update_s_srcu_struct_e_sda _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_seq (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) _b (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_barrier_seq]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_seq _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) _b (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_barrier_mutex]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) _b (_a.(e_srcu_barrier_cpu_cnt)) (_a.(e__work)).
Notation "_a '.[e_srcu_barrier_completion]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_cpu_cnt (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) _b (_a.(e__work)).
Notation "_a '.[e_srcu_barrier_cpu_cnt]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_cpu_cnt _a _b) (at level 1).

Definition update_s_srcu_struct_e__work (_a: s_srcu_struct) _b :=
  mks_srcu_struct (_a.(e_node)) (_a.(e_level)) (_a.(e_srcu_cb_mutex)) (_a.(e_____lock)) (_a.(e_srcu_gp_mutex)) (_a.(e_srcu_idx)) (_a.(e_srcu_gp_seq)) (_a.(e_srcu_gp_seq_needed))
          (_a.(e__srcu_gp_seq_needed_exp)) (_a.(e_srcu_last_gp_end)) (_a.(e_sda)) (_a.(e_srcu_barrier_seq)) (_a.(e_srcu_barrier_mutex)) (_a.(e_srcu_barrier_completion)) (_a.(e_srcu_barrier_cpu_cnt)) _b.
Notation "_a '.[e__work]' ':<' _b" := (update_s_srcu_struct_e__work _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock (_a: s_kvm) _b :=
  mks_kvm _b (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_mmu_lock]' ':<' _b" := (update_s_kvm_e_mmu_lock _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) _b (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_slots_lock]' ':<' _b" := (update_s_kvm_e_slots_lock _a _b) (at level 1).

Definition update_s_kvm_e__mm (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) _b (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e__mm]' ':<' _b" := (update_s_kvm_e__mm _a _b) (at level 1).

Definition update_s_kvm_e_memslots (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) _b (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_memslots]' ':<' _b" := (update_s_kvm_e_memslots _a _b) (at level 1).

Definition update_s_kvm_e_vcpus (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) _b (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_vcpus]' ':<' _b" := (update_s_kvm_e_vcpus _a _b) (at level 1).

Definition update_s_kvm_e_online_vcpus (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) _b (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_online_vcpus]' ':<' _b" := (update_s_kvm_e_online_vcpus _a _b) (at level 1).

Definition update_s_kvm_e_created_vcpus (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) _b (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_created_vcpus]' ':<' _b" := (update_s_kvm_e_created_vcpus _a _b) (at level 1).

Definition update_s_kvm_e_last_boosted_vcpu (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) _b
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_last_boosted_vcpu]' ':<' _b" := (update_s_kvm_e_last_boosted_vcpu _a _b) (at level 1).

Definition update_s_kvm_e_vm_list (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          _b (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_vm_list]' ':<' _b" := (update_s_kvm_e_vm_list _a _b) (at level 1).

Definition update_s_kvm_e______lock (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) _b (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e______lock]' ':<' _b" := (update_s_kvm_e______lock _a _b) (at level 1).

Definition update_s_kvm_e_buses (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) _b (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_buses]' ':<' _b" := (update_s_kvm_e_buses _a _b) (at level 1).

Definition update_s_kvm_e_irqfds (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) _b (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_irqfds]' ':<' _b" := (update_s_kvm_e_irqfds _a _b) (at level 1).

Definition update_s_kvm_e_ioeventfds (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) _b (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_ioeventfds]' ':<' _b" := (update_s_kvm_e_ioeventfds _a _b) (at level 1).

Definition update_s_kvm_e_stat (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) _b (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_stat]' ':<' _b" := (update_s_kvm_e_stat _a _b) (at level 1).

Definition update_s_kvm_e__arch (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) _b (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e__arch]' ':<' _b" := (update_s_kvm_e__arch _a _b) (at level 1).

Definition update_s_kvm_e_users_count (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) _b
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_users_count]' ':<' _b" := (update_s_kvm_e_users_count _a _b) (at level 1).

Definition update_s_kvm_e_coalesced_mmio_ring (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          _b (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_coalesced_mmio_ring]' ':<' _b" := (update_s_kvm_e_coalesced_mmio_ring _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) _b (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_ring_lock]' ':<' _b" := (update_s_kvm_e_ring_lock _a _b) (at level 1).

Definition update_s_kvm_e_coalesced_zones (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) _b (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_coalesced_zones]' ':<' _b" := (update_s_kvm_e_coalesced_zones _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) _b (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_irq_lock]' ':<' _b" := (update_s_kvm_e_irq_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_routing (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) _b (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_irq_routing]' ':<' _b" := (update_s_kvm_e_irq_routing _a _b) (at level 1).

Definition update_s_kvm_e_irq_ack_notifier_list (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) _b (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_irq_ack_notifier_list]' ':<' _b" := (update_s_kvm_e_irq_ack_notifier_list _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) _b (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_mmu_notifier]' ':<' _b" := (update_s_kvm_e_mmu_notifier _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_seq (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) _b
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_mmu_notifier_seq]' ':<' _b" := (update_s_kvm_e_mmu_notifier_seq _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_count (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          _b (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_mmu_notifier_count]' ':<' _b" := (update_s_kvm_e_mmu_notifier_count _a _b) (at level 1).

Definition update_s_kvm_e_tlbs_dirty (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) _b (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_tlbs_dirty]' ':<' _b" := (update_s_kvm_e_tlbs_dirty _a _b) (at level 1).

Definition update_s_kvm_e_devices (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) _b (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_devices]' ':<' _b" := (update_s_kvm_e_devices _a _b) (at level 1).

Definition update_s_kvm_e_manual_dirty_log_protect (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) _b (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_manual_dirty_log_protect]' ':<' _b" := (update_s_kvm_e_manual_dirty_log_protect _a _b) (at level 1).

Definition update_s_kvm_e_debugfs_dentry (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) _b (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_debugfs_dentry]' ':<' _b" := (update_s_kvm_e_debugfs_dentry _a _b) (at level 1).

Definition update_s_kvm_e_debugfs_stat_data (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) _b (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_debugfs_stat_data]' ':<' _b" := (update_s_kvm_e_debugfs_stat_data _a _b) (at level 1).

Definition update_s_kvm_e_srcu (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) _b (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_srcu]' ':<' _b" := (update_s_kvm_e_srcu _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) _b
          (_a.(e_userspace_pid)) (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_irq_srcu]' ':<' _b" := (update_s_kvm_e_irq_srcu _a _b) (at level 1).

Definition update_s_kvm_e_userspace_pid (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          _b (_a.(e_verified)) (_a.(e_hypsec_lock)).
Notation "_a '.[e_userspace_pid]' ':<' _b" := (update_s_kvm_e_userspace_pid _a _b) (at level 1).

Definition update_s_kvm_e_verified (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) _b (_a.(e_hypsec_lock)).
Notation "_a '.[e_verified]' ':<' _b" := (update_s_kvm_e_verified _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock (_a: s_kvm) _b :=
  mks_kvm (_a.(e_mmu_lock)) (_a.(e_slots_lock)) (_a.(e__mm)) (_a.(e_memslots)) (_a.(e_vcpus)) (_a.(e_online_vcpus)) (_a.(e_created_vcpus)) (_a.(e_last_boosted_vcpu))
          (_a.(e_vm_list)) (_a.(e______lock)) (_a.(e_buses)) (_a.(e_irqfds)) (_a.(e_ioeventfds)) (_a.(e_stat)) (_a.(e__arch)) (_a.(e_users_count))
          (_a.(e_coalesced_mmio_ring)) (_a.(e_ring_lock)) (_a.(e_coalesced_zones)) (_a.(e_irq_lock)) (_a.(e_irq_routing)) (_a.(e_irq_ack_notifier_list)) (_a.(e_mmu_notifier)) (_a.(e_mmu_notifier_seq))
          (_a.(e_mmu_notifier_count)) (_a.(e_tlbs_dirty)) (_a.(e_devices)) (_a.(e_manual_dirty_log_protect)) (_a.(e_debugfs_dentry)) (_a.(e_debugfs_stat_data)) (_a.(e_srcu)) (_a.(e_irq_srcu))
          (_a.(e_userspace_pid)) (_a.(e_verified)) _b.
Notation "_a '.[e_hypsec_lock]' ':<' _b" := (update_s_kvm_e_hypsec_lock _a _b) (at level 1).

Definition update_s_preempt_notifier_e_link (_a: s_preempt_notifier) _b :=
  mks_preempt_notifier _b (_a.(e___ops)).
Notation "_a '.[e_link]' ':<' _b" := (update_s_preempt_notifier_e_link _a _b) (at level 1).

Definition update_s_preempt_notifier_e___ops (_a: s_preempt_notifier) _b :=
  mks_preempt_notifier (_a.(e_link)) _b.
Notation "_a '.[e___ops]' ':<' _b" := (update_s_preempt_notifier_e___ops _a _b) (at level 1).

Definition update_s_swait_queue_head_e_______lock (_a: s_swait_queue_head) _b :=
  mks_swait_queue_head _b (_a.(e_task_list)).
Notation "_a '.[e_______lock]' ':<' _b" := (update_s_swait_queue_head_e_______lock _a _b) (at level 1).

Definition update_s_swait_queue_head_e_task_list (_a: s_swait_queue_head) _b :=
  mks_swait_queue_head (_a.(e_______lock)) _b.
Notation "_a '.[e_task_list]' ':<' _b" := (update_s_swait_queue_head_e_task_list _a _b) (at level 1).

Definition update_s_sigset_t_e_sig (_a: s_sigset_t) _b :=
  mks_sigset_t _b.
Notation "_a '.[e_sig]' ':<' _b" := (update_s_sigset_t_e_sig _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_halt_successful_poll (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat _b (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_halt_successful_poll]' ':<' _b" := (update_s_kvm_vcpu_stat_e_halt_successful_poll _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_halt_attempted_poll (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) _b (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_halt_attempted_poll]' ':<' _b" := (update_s_kvm_vcpu_stat_e_halt_attempted_poll _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_halt_poll_invalid (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) _b (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_halt_poll_invalid]' ':<' _b" := (update_s_kvm_vcpu_stat_e_halt_poll_invalid _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_halt_wakeup (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) _b (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_halt_wakeup]' ':<' _b" := (update_s_kvm_vcpu_stat_e_halt_wakeup _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_hvc_exit_stat (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) _b (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_hvc_exit_stat]' ':<' _b" := (update_s_kvm_vcpu_stat_e_hvc_exit_stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_wfe_exit_stat (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) _b (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_wfe_exit_stat]' ':<' _b" := (update_s_kvm_vcpu_stat_e_wfe_exit_stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_wfi_exit_stat (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) _b (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_wfi_exit_stat]' ':<' _b" := (update_s_kvm_vcpu_stat_e_wfi_exit_stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_mmio_exit_user (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) _b
          (_a.(e_mmio_exit_kernel)) (_a.(e_exits)).
Notation "_a '.[e_mmio_exit_user]' ':<' _b" := (update_s_kvm_vcpu_stat_e_mmio_exit_user _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_mmio_exit_kernel (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          _b (_a.(e_exits)).
Notation "_a '.[e_mmio_exit_kernel]' ':<' _b" := (update_s_kvm_vcpu_stat_e_mmio_exit_kernel _a _b) (at level 1).

Definition update_s_kvm_vcpu_stat_e_exits (_a: s_kvm_vcpu_stat) _b :=
  mks_kvm_vcpu_stat (_a.(e_halt_successful_poll)) (_a.(e_halt_attempted_poll)) (_a.(e_halt_poll_invalid)) (_a.(e_halt_wakeup)) (_a.(e_hvc_exit_stat)) (_a.(e_wfe_exit_stat)) (_a.(e_wfi_exit_stat)) (_a.(e_mmio_exit_user))
          (_a.(e_mmio_exit_kernel)) _b.
Notation "_a '.[e_exits]' ':<' _b" := (update_s_kvm_vcpu_stat_e_exits _a _b) (at level 1).

Definition update_s_kvm_mmio_fragment_e_gpa (_a: s_kvm_mmio_fragment) _b :=
  mks_kvm_mmio_fragment _b (_a.(e__data)) (_a.(e_len)).
Notation "_a '.[e_gpa]' ':<' _b" := (update_s_kvm_mmio_fragment_e_gpa _a _b) (at level 1).

Definition update_s_kvm_mmio_fragment_e__data (_a: s_kvm_mmio_fragment) _b :=
  mks_kvm_mmio_fragment (_a.(e_gpa)) _b (_a.(e_len)).
Notation "_a '.[e__data]' ':<' _b" := (update_s_kvm_mmio_fragment_e__data _a _b) (at level 1).

Definition update_s_kvm_mmio_fragment_e_len (_a: s_kvm_mmio_fragment) _b :=
  mks_kvm_mmio_fragment (_a.(e_gpa)) (_a.(e__data)) _b.
Notation "_a '.[e_len]' ':<' _b" := (update_s_kvm_mmio_fragment_e_len _a _b) (at level 1).

Definition update_s_anon_116_e_in_spin_loop (_a: s_anon_116) _b :=
  mks_anon_116 _b (_a.(e_dy_eligible)).
Notation "_a '.[e_in_spin_loop]' ':<' _b" := (update_s_anon_116_e_in_spin_loop _a _b) (at level 1).

Definition update_s_anon_116_e_dy_eligible (_a: s_anon_116) _b :=
  mks_anon_116 (_a.(e_in_spin_loop)) _b.
Notation "_a '.[e_dy_eligible]' ':<' _b" := (update_s_anon_116_e_dy_eligible _a _b) (at level 1).

Definition update_s_s2_trans_e_pfn (_a: s_s2_trans) _b :=
  mks_s2_trans _b (_a.(e_output)) (_a.(e_writable)) (_a.(e_readable)) (_a.(e__level)) (_a.(e_desc)).
Notation "_a '.[e_pfn]' ':<' _b" := (update_s_s2_trans_e_pfn _a _b) (at level 1).

Definition update_s_s2_trans_e_output (_a: s_s2_trans) _b :=
  mks_s2_trans (_a.(e_pfn)) _b (_a.(e_writable)) (_a.(e_readable)) (_a.(e__level)) (_a.(e_desc)).
Notation "_a '.[e_output]' ':<' _b" := (update_s_s2_trans_e_output _a _b) (at level 1).

Definition update_s_s2_trans_e_writable (_a: s_s2_trans) _b :=
  mks_s2_trans (_a.(e_pfn)) (_a.(e_output)) _b (_a.(e_readable)) (_a.(e__level)) (_a.(e_desc)).
Notation "_a '.[e_writable]' ':<' _b" := (update_s_s2_trans_e_writable _a _b) (at level 1).

Definition update_s_s2_trans_e_readable (_a: s_s2_trans) _b :=
  mks_s2_trans (_a.(e_pfn)) (_a.(e_output)) (_a.(e_writable)) _b (_a.(e__level)) (_a.(e_desc)).
Notation "_a '.[e_readable]' ':<' _b" := (update_s_s2_trans_e_readable _a _b) (at level 1).

Definition update_s_s2_trans_e__level (_a: s_s2_trans) _b :=
  mks_s2_trans (_a.(e_pfn)) (_a.(e_output)) (_a.(e_writable)) (_a.(e_readable)) _b (_a.(e_desc)).
Notation "_a '.[e__level]' ':<' _b" := (update_s_s2_trans_e__level _a _b) (at level 1).

Definition update_s_s2_trans_e_desc (_a: s_s2_trans) _b :=
  mks_s2_trans (_a.(e_pfn)) (_a.(e_output)) (_a.(e_writable)) (_a.(e_readable)) (_a.(e__level)) _b.
Notation "_a '.[e_desc]' ':<' _b" := (update_s_s2_trans_e_desc _a _b) (at level 1).

Definition update_s_kvm_vcpu_fault_info_e_esr_el2 (_a: s_kvm_vcpu_fault_info) _b :=
  mks_kvm_vcpu_fault_info _b (_a.(e__far_el2)) (_a.(e_hpfar_el2)) (_a.(e_disr_el1)).
Notation "_a '.[e_esr_el2]' ':<' _b" := (update_s_kvm_vcpu_fault_info_e_esr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_fault_info_e__far_el2 (_a: s_kvm_vcpu_fault_info) _b :=
  mks_kvm_vcpu_fault_info (_a.(e_esr_el2)) _b (_a.(e_hpfar_el2)) (_a.(e_disr_el1)).
Notation "_a '.[e__far_el2]' ':<' _b" := (update_s_kvm_vcpu_fault_info_e__far_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_fault_info_e_hpfar_el2 (_a: s_kvm_vcpu_fault_info) _b :=
  mks_kvm_vcpu_fault_info (_a.(e_esr_el2)) (_a.(e__far_el2)) _b (_a.(e_disr_el1)).
Notation "_a '.[e_hpfar_el2]' ':<' _b" := (update_s_kvm_vcpu_fault_info_e_hpfar_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_fault_info_e_disr_el1 (_a: s_kvm_vcpu_fault_info) _b :=
  mks_kvm_vcpu_fault_info (_a.(e_esr_el2)) (_a.(e__far_el2)) (_a.(e_hpfar_el2)) _b.
Notation "_a '.[e_disr_el1]' ':<' _b" := (update_s_kvm_vcpu_fault_info_e_disr_el1 _a _b) (at level 1).

Definition update_s_kvm_guest_debug_arch_e_dbg_bcr (_a: s_kvm_guest_debug_arch) _b :=
  mks_kvm_guest_debug_arch _b (_a.(e_dbg_bvr)) (_a.(e_dbg_wcr)) (_a.(e_dbg_wvr)).
Notation "_a '.[e_dbg_bcr]' ':<' _b" := (update_s_kvm_guest_debug_arch_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_guest_debug_arch_e_dbg_bvr (_a: s_kvm_guest_debug_arch) _b :=
  mks_kvm_guest_debug_arch (_a.(e_dbg_bcr)) _b (_a.(e_dbg_wcr)) (_a.(e_dbg_wvr)).
Notation "_a '.[e_dbg_bvr]' ':<' _b" := (update_s_kvm_guest_debug_arch_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_guest_debug_arch_e_dbg_wcr (_a: s_kvm_guest_debug_arch) _b :=
  mks_kvm_guest_debug_arch (_a.(e_dbg_bcr)) (_a.(e_dbg_bvr)) _b (_a.(e_dbg_wvr)).
Notation "_a '.[e_dbg_wcr]' ':<' _b" := (update_s_kvm_guest_debug_arch_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_guest_debug_arch_e_dbg_wvr (_a: s_kvm_guest_debug_arch) _b :=
  mks_kvm_guest_debug_arch (_a.(e_dbg_bcr)) (_a.(e_dbg_bvr)) (_a.(e_dbg_wcr)) _b.
Notation "_a '.[e_dbg_wvr]' ':<' _b" := (update_s_kvm_guest_debug_arch_e_dbg_wvr _a _b) (at level 1).

Definition update_s_anon_118_e____regs (_a: s_anon_118) _b :=
  mks_anon_118 _b (_a.(e_pmscr_el1)).
Notation "_a '.[e____regs]' ':<' _b" := (update_s_anon_118_e____regs _a _b) (at level 1).

Definition update_s_anon_118_e_pmscr_el1 (_a: s_anon_118) _b :=
  mks_anon_118 (_a.(e____regs)) _b.
Notation "_a '.[e_pmscr_el1]' ':<' _b" := (update_s_anon_118_e_pmscr_el1 _a _b) (at level 1).

Definition update_s_its_vpe_e_vpt_page (_a: s_its_vpe) _b :=
  mks_its_vpe _b (_a.(e__its_vm)) (_a.(e_irq)) (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) (_a.(e_vpe_id)) (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e_vpt_page]' ':<' _b" := (update_s_its_vpe_e_vpt_page _a _b) (at level 1).

Definition update_s_its_vpe_e__its_vm (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) _b (_a.(e_irq)) (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) (_a.(e_vpe_id)) (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e__its_vm]' ':<' _b" := (update_s_its_vpe_e__its_vm _a _b) (at level 1).

Definition update_s_its_vpe_e_irq (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) _b (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) (_a.(e_vpe_id)) (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e_irq]' ':<' _b" := (update_s_its_vpe_e_irq _a _b) (at level 1).

Definition update_s_its_vpe_e_vpe_db_lpi (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) (_a.(e_irq)) _b (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) (_a.(e_vpe_id)) (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e_vpe_db_lpi]' ':<' _b" := (update_s_its_vpe_e_vpe_db_lpi _a _b) (at level 1).

Definition update_s_its_vpe_e_vpe_proxy_event (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) (_a.(e_irq)) (_a.(e_vpe_db_lpi)) _b (_a.(e_col_idx)) (_a.(e_vpe_id)) (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e_vpe_proxy_event]' ':<' _b" := (update_s_its_vpe_e_vpe_proxy_event _a _b) (at level 1).

Definition update_s_its_vpe_e_col_idx (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) (_a.(e_irq)) (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) _b (_a.(e_vpe_id)) (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e_col_idx]' ':<' _b" := (update_s_its_vpe_e_col_idx _a _b) (at level 1).

Definition update_s_its_vpe_e_vpe_id (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) (_a.(e_irq)) (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) _b (_a.(e_idai))
          (_a.(e_pending_last)).
Notation "_a '.[e_vpe_id]' ':<' _b" := (update_s_its_vpe_e_vpe_id _a _b) (at level 1).

Definition update_s_its_vpe_e_idai (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) (_a.(e_irq)) (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) (_a.(e_vpe_id)) _b
          (_a.(e_pending_last)).
Notation "_a '.[e_idai]' ':<' _b" := (update_s_its_vpe_e_idai _a _b) (at level 1).

Definition update_s_its_vpe_e_pending_last (_a: s_its_vpe) _b :=
  mks_its_vpe (_a.(e_vpt_page)) (_a.(e__its_vm)) (_a.(e_irq)) (_a.(e_vpe_db_lpi)) (_a.(e_vpe_proxy_event)) (_a.(e_col_idx)) (_a.(e_vpe_id)) (_a.(e_idai))
          _b.
Notation "_a '.[e_pending_last]' ':<' _b" := (update_s_its_vpe_e_pending_last _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_vgic_hcr (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if _b (_a.(e_vgic_vmcr)) (_a.(e_vgic_sre)) (_a.(e_vgic_ap0r)) (_a.(e_vgic_ap1r)) (_a.(e_vgic_lr)) (_a.(e_its_vpe)).
Notation "_a '.[e_vgic_hcr]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_vgic_hcr _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_vgic_vmcr (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if (_a.(e_vgic_hcr)) _b (_a.(e_vgic_sre)) (_a.(e_vgic_ap0r)) (_a.(e_vgic_ap1r)) (_a.(e_vgic_lr)) (_a.(e_its_vpe)).
Notation "_a '.[e_vgic_vmcr]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_vgic_vmcr _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_vgic_sre (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if (_a.(e_vgic_hcr)) (_a.(e_vgic_vmcr)) _b (_a.(e_vgic_ap0r)) (_a.(e_vgic_ap1r)) (_a.(e_vgic_lr)) (_a.(e_its_vpe)).
Notation "_a '.[e_vgic_sre]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_vgic_sre _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_vgic_ap0r (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if (_a.(e_vgic_hcr)) (_a.(e_vgic_vmcr)) (_a.(e_vgic_sre)) _b (_a.(e_vgic_ap1r)) (_a.(e_vgic_lr)) (_a.(e_its_vpe)).
Notation "_a '.[e_vgic_ap0r]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_vgic_ap0r _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_vgic_ap1r (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if (_a.(e_vgic_hcr)) (_a.(e_vgic_vmcr)) (_a.(e_vgic_sre)) (_a.(e_vgic_ap0r)) _b (_a.(e_vgic_lr)) (_a.(e_its_vpe)).
Notation "_a '.[e_vgic_ap1r]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_vgic_ap1r _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_vgic_lr (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if (_a.(e_vgic_hcr)) (_a.(e_vgic_vmcr)) (_a.(e_vgic_sre)) (_a.(e_vgic_ap0r)) (_a.(e_vgic_ap1r)) _b (_a.(e_its_vpe)).
Notation "_a '.[e_vgic_lr]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_vgic_lr _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe (_a: s_vgic_v3_cpu_if) _b :=
  mks_vgic_v3_cpu_if (_a.(e_vgic_hcr)) (_a.(e_vgic_vmcr)) (_a.(e_vgic_sre)) (_a.(e_vgic_ap0r)) (_a.(e_vgic_ap1r)) (_a.(e_vgic_lr)) _b.
Notation "_a '.[e_its_vpe]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe _a _b) (at level 1).

Definition update_u_anon_119_e_ (_a: u_anon_119) _b :=
  mku_anon_119 _b (_a.(e__)).
Notation "_a '.[e_]' ':<' _b" := (update_u_anon_119_e_ _a _b) (at level 1).

Definition update_u_anon_119_e__ (_a: u_anon_119) _b :=
  mku_anon_119 (_a.(e_)) _b.
Notation "_a '.[e__]' ':<' _b" := (update_u_anon_119_e__ _a _b) (at level 1).

Definition update_s_kref_e_refcount (_a: s_kref) _b :=
  mks_kref _b.
Notation "_a '.[e_refcount]' ':<' _b" := (update_s_kref_e_refcount _a _b) (at level 1).

Definition update_u_anon_120_e_targets (_a: u_anon_120) _b :=
  mku_anon_120 _b.
Notation "_a '.[e_targets]' ':<' _b" := (update_u_anon_120_e_targets _a _b) (at level 1).

Definition update_s_vgic_irq_e__irq_lock (_a: s_vgic_irq) _b :=
  mks_vgic_irq _b (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e__irq_lock]' ':<' _b" := (update_s_vgic_irq_e__irq_lock _a _b) (at level 1).

Definition update_s_vgic_irq_e_lpi_list (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) _b (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_lpi_list]' ':<' _b" := (update_s_vgic_irq_e_lpi_list _a _b) (at level 1).

Definition update_s_vgic_irq_e_ap_list (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) _b (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_ap_list]' ':<' _b" := (update_s_vgic_irq_e_ap_list _a _b) (at level 1).

Definition update_s_vgic_irq_e__vcpu (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) _b (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e__vcpu]' ':<' _b" := (update_s_vgic_irq_e__vcpu _a _b) (at level 1).

Definition update_s_vgic_irq_e_target_vcpu (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) _b (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_target_vcpu]' ':<' _b" := (update_s_vgic_irq_e_target_vcpu _a _b) (at level 1).

Definition update_s_vgic_irq_e_intid (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) _b (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_intid]' ':<' _b" := (update_s_vgic_irq_e_intid _a _b) (at level 1).

Definition update_s_vgic_irq_e_line_level (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) _b (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_line_level]' ':<' _b" := (update_s_vgic_irq_e_line_level _a _b) (at level 1).

Definition update_s_vgic_irq_e_pending_latch (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) _b
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_pending_latch]' ':<' _b" := (update_s_vgic_irq_e_pending_latch _a _b) (at level 1).

Definition update_s_vgic_irq_e_active (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          _b (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_active]' ':<' _b" := (update_s_vgic_irq_e_active _a _b) (at level 1).

Definition update_s_vgic_irq_e__enabled (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) _b (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e__enabled]' ':<' _b" := (update_s_vgic_irq_e__enabled _a _b) (at level 1).

Definition update_s_vgic_irq_e_hw (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) _b (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_hw]' ':<' _b" := (update_s_vgic_irq_e_hw _a _b) (at level 1).

Definition update_s_vgic_irq_e__refcount (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) _b (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e__refcount]' ':<' _b" := (update_s_vgic_irq_e__refcount _a _b) (at level 1).

Definition update_s_vgic_irq_e_hwintid (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) _b (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_hwintid]' ':<' _b" := (update_s_vgic_irq_e_hwintid _a _b) (at level 1).

Definition update_s_vgic_irq_e_host_irq (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) _b (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_host_irq]' ':<' _b" := (update_s_vgic_irq_e_host_irq _a _b) (at level 1).

Definition update_s_vgic_irq_e_vgic_irq_14 (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) _b (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_vgic_irq_14]' ':<' _b" := (update_s_vgic_irq_e_vgic_irq_14 _a _b) (at level 1).

Definition update_s_vgic_irq_e_source (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) _b
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_source]' ':<' _b" := (update_s_vgic_irq_e_source _a _b) (at level 1).

Definition update_s_vgic_irq_e_active_source (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          _b (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_active_source]' ':<' _b" := (update_s_vgic_irq_e_active_source _a _b) (at level 1).

Definition update_s_vgic_irq_e_priority (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) _b (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_priority]' ':<' _b" := (update_s_vgic_irq_e_priority _a _b) (at level 1).

Definition update_s_vgic_irq_e_group (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) _b (_a.(e_config)) (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_group]' ':<' _b" := (update_s_vgic_irq_e_group _a _b) (at level 1).

Definition update_s_vgic_irq_e_config (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) _b (_a.(e_get_input_level)) (_a.(e__owner)).
Notation "_a '.[e_config]' ':<' _b" := (update_s_vgic_irq_e_config _a _b) (at level 1).

Definition update_s_vgic_irq_e_get_input_level (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) _b (_a.(e__owner)).
Notation "_a '.[e_get_input_level]' ':<' _b" := (update_s_vgic_irq_e_get_input_level _a _b) (at level 1).

Definition update_s_vgic_irq_e__owner (_a: s_vgic_irq) _b :=
  mks_vgic_irq (_a.(e__irq_lock)) (_a.(e_lpi_list)) (_a.(e_ap_list)) (_a.(e__vcpu)) (_a.(e_target_vcpu)) (_a.(e_intid)) (_a.(e_line_level)) (_a.(e_pending_latch))
          (_a.(e_active)) (_a.(e__enabled)) (_a.(e_hw)) (_a.(e__refcount)) (_a.(e_hwintid)) (_a.(e_host_irq)) (_a.(e_vgic_irq_14)) (_a.(e_source))
          (_a.(e_active_source)) (_a.(e_priority)) (_a.(e_group)) (_a.(e_config)) (_a.(e_get_input_level)) _b.
Notation "_a '.[e__owner]' ':<' _b" := (update_s_vgic_irq_e__owner _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0 (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu _b (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_vgic_cpu_0]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0 _a _b) (at level 1).

Definition update_s_vgic_cpu_e_used_lrs (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) _b (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_used_lrs]' ':<' _b" := (update_s_vgic_cpu_e_used_lrs _a _b) (at level 1).

Definition update_s_vgic_cpu_e_private_irqs (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) _b (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_private_irqs]' ':<' _b" := (update_s_vgic_cpu_e_private_irqs _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_lock (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) _b (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_ap_list_lock]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_lock _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_head (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) _b (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_ap_list_head]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_head _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) _b (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_rd_iodev]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rdreg (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) _b (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_rdreg]' ':<' _b" := (update_s_vgic_cpu_e_rdreg _a _b) (at level 1).

Definition update_s_vgic_cpu_e_pendbaser (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) _b
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_pendbaser]' ':<' _b" := (update_s_vgic_cpu_e_pendbaser _a _b) (at level 1).

Definition update_s_vgic_cpu_e_lpis_enabled (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          _b (_a.(e_num_pri_bits)) (_a.(e_num_id_bits)).
Notation "_a '.[e_lpis_enabled]' ':<' _b" := (update_s_vgic_cpu_e_lpis_enabled _a _b) (at level 1).

Definition update_s_vgic_cpu_e_num_pri_bits (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) _b (_a.(e_num_id_bits)).
Notation "_a '.[e_num_pri_bits]' ':<' _b" := (update_s_vgic_cpu_e_num_pri_bits _a _b) (at level 1).

Definition update_s_vgic_cpu_e_num_id_bits (_a: s_vgic_cpu) _b :=
  mks_vgic_cpu (_a.(e_vgic_cpu_0)) (_a.(e_used_lrs)) (_a.(e_private_irqs)) (_a.(e_ap_list_lock)) (_a.(e_ap_list_head)) (_a.(e_rd_iodev)) (_a.(e_rdreg)) (_a.(e_pendbaser))
          (_a.(e_lpis_enabled)) (_a.(e_num_pri_bits)) _b.
Notation "_a '.[e_num_id_bits]' ':<' _b" := (update_s_vgic_cpu_e_num_id_bits _a _b) (at level 1).

Definition update_u_anon_122_e__irq (_a: u_anon_122) _b :=
  mku_anon_122 _b.
Notation "_a '.[e__irq]' ':<' _b" := (update_u_anon_122_e__irq _a _b) (at level 1).

Definition update_s_kvm_irq_level_e_kvm_irq_level_0 (_a: s_kvm_irq_level) _b :=
  mks_kvm_irq_level _b (_a.(e___level)).
Notation "_a '.[e_kvm_irq_level_0]' ':<' _b" := (update_s_kvm_irq_level_e_kvm_irq_level_0 _a _b) (at level 1).

Definition update_s_kvm_irq_level_e___level (_a: s_kvm_irq_level) _b :=
  mks_kvm_irq_level (_a.(e_kvm_irq_level_0)) _b.
Notation "_a '.[e___level]' ':<' _b" := (update_s_kvm_irq_level_e___level _a _b) (at level 1).

Definition update_s_rb_node_e___rb_parent_color (_a: s_rb_node) _b :=
  mks_rb_node _b (_a.(e_rb_right)) (_a.(e_rb_left)).
Notation "_a '.[e___rb_parent_color]' ':<' _b" := (update_s_rb_node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_rb_node_e_rb_right (_a: s_rb_node) _b :=
  mks_rb_node (_a.(e___rb_parent_color)) _b (_a.(e_rb_left)).
Notation "_a '.[e_rb_right]' ':<' _b" := (update_s_rb_node_e_rb_right _a _b) (at level 1).

Definition update_s_rb_node_e_rb_left (_a: s_rb_node) _b :=
  mks_rb_node (_a.(e___rb_parent_color)) (_a.(e_rb_right)) _b.
Notation "_a '.[e_rb_left]' ':<' _b" := (update_s_rb_node_e_rb_left _a _b) (at level 1).

Definition update_s_timerqueue_node_e__node (_a: s_timerqueue_node) _b :=
  mks_timerqueue_node _b (_a.(e__expires)).
Notation "_a '.[e__node]' ':<' _b" := (update_s_timerqueue_node_e__node _a _b) (at level 1).

Definition update_s_timerqueue_node_e__expires (_a: s_timerqueue_node) _b :=
  mks_timerqueue_node (_a.(e__node)) _b.
Notation "_a '.[e__expires]' ':<' _b" := (update_s_timerqueue_node_e__expires _a _b) (at level 1).

Definition update_s_hrtimer_e___node (_a: s_hrtimer) _b :=
  mks_hrtimer _b (_a.(e__softexpires)) (_a.(e__function)) (_a.(e__base)) (_a.(e___state)) (_a.(e_is_rel)) (_a.(e_is_soft)) (_a.(e_is_hard)).
Notation "_a '.[e___node]' ':<' _b" := (update_s_hrtimer_e___node _a _b) (at level 1).

Definition update_s_hrtimer_e__softexpires (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) _b (_a.(e__function)) (_a.(e__base)) (_a.(e___state)) (_a.(e_is_rel)) (_a.(e_is_soft)) (_a.(e_is_hard)).
Notation "_a '.[e__softexpires]' ':<' _b" := (update_s_hrtimer_e__softexpires _a _b) (at level 1).

Definition update_s_hrtimer_e__function (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) (_a.(e__softexpires)) _b (_a.(e__base)) (_a.(e___state)) (_a.(e_is_rel)) (_a.(e_is_soft)) (_a.(e_is_hard)).
Notation "_a '.[e__function]' ':<' _b" := (update_s_hrtimer_e__function _a _b) (at level 1).

Definition update_s_hrtimer_e__base (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) (_a.(e__softexpires)) (_a.(e__function)) _b (_a.(e___state)) (_a.(e_is_rel)) (_a.(e_is_soft)) (_a.(e_is_hard)).
Notation "_a '.[e__base]' ':<' _b" := (update_s_hrtimer_e__base _a _b) (at level 1).

Definition update_s_hrtimer_e___state (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) (_a.(e__softexpires)) (_a.(e__function)) (_a.(e__base)) _b (_a.(e_is_rel)) (_a.(e_is_soft)) (_a.(e_is_hard)).
Notation "_a '.[e___state]' ':<' _b" := (update_s_hrtimer_e___state _a _b) (at level 1).

Definition update_s_hrtimer_e_is_rel (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) (_a.(e__softexpires)) (_a.(e__function)) (_a.(e__base)) (_a.(e___state)) _b (_a.(e_is_soft)) (_a.(e_is_hard)).
Notation "_a '.[e_is_rel]' ':<' _b" := (update_s_hrtimer_e_is_rel _a _b) (at level 1).

Definition update_s_hrtimer_e_is_soft (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) (_a.(e__softexpires)) (_a.(e__function)) (_a.(e__base)) (_a.(e___state)) (_a.(e_is_rel)) _b (_a.(e_is_hard)).
Notation "_a '.[e_is_soft]' ':<' _b" := (update_s_hrtimer_e_is_soft _a _b) (at level 1).

Definition update_s_hrtimer_e_is_hard (_a: s_hrtimer) _b :=
  mks_hrtimer (_a.(e___node)) (_a.(e__softexpires)) (_a.(e__function)) (_a.(e__base)) (_a.(e___state)) (_a.(e_is_rel)) (_a.(e_is_soft)) _b.
Notation "_a '.[e_is_hard]' ':<' _b" := (update_s_hrtimer_e_is_hard _a _b) (at level 1).

Definition update_s_arch_timer_context_e___vcpu (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context _b (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) (_a.(e___irq)) (_a.(e_cntvoff)) (_a.(e_hrtimer)) (_a.(e_loaded)) (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e___vcpu]' ':<' _b" := (update_s_arch_timer_context_e___vcpu _a _b) (at level 1).

Definition update_s_arch_timer_context_e_cnt_ctl (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) _b (_a.(e_cnt_cval)) (_a.(e___irq)) (_a.(e_cntvoff)) (_a.(e_hrtimer)) (_a.(e_loaded)) (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e_cnt_ctl]' ':<' _b" := (update_s_arch_timer_context_e_cnt_ctl _a _b) (at level 1).

Definition update_s_arch_timer_context_e_cnt_cval (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) _b (_a.(e___irq)) (_a.(e_cntvoff)) (_a.(e_hrtimer)) (_a.(e_loaded)) (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e_cnt_cval]' ':<' _b" := (update_s_arch_timer_context_e_cnt_cval _a _b) (at level 1).

Definition update_s_arch_timer_context_e___irq (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) _b (_a.(e_cntvoff)) (_a.(e_hrtimer)) (_a.(e_loaded)) (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e___irq]' ':<' _b" := (update_s_arch_timer_context_e___irq _a _b) (at level 1).

Definition update_s_arch_timer_context_e_cntvoff (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) (_a.(e___irq)) _b (_a.(e_hrtimer)) (_a.(e_loaded)) (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e_cntvoff]' ':<' _b" := (update_s_arch_timer_context_e_cntvoff _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) (_a.(e___irq)) (_a.(e_cntvoff)) _b (_a.(e_loaded)) (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e_hrtimer]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer _a _b) (at level 1).

Definition update_s_arch_timer_context_e_loaded (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) (_a.(e___irq)) (_a.(e_cntvoff)) (_a.(e_hrtimer)) _b (_a.(e_host_timer_irq))
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e_loaded]' ':<' _b" := (update_s_arch_timer_context_e_loaded _a _b) (at level 1).

Definition update_s_arch_timer_context_e_host_timer_irq (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) (_a.(e___irq)) (_a.(e_cntvoff)) (_a.(e_hrtimer)) (_a.(e_loaded)) _b
          (_a.(e_host_timer_irq_flags)).
Notation "_a '.[e_host_timer_irq]' ':<' _b" := (update_s_arch_timer_context_e_host_timer_irq _a _b) (at level 1).

Definition update_s_arch_timer_context_e_host_timer_irq_flags (_a: s_arch_timer_context) _b :=
  mks_arch_timer_context (_a.(e___vcpu)) (_a.(e_cnt_ctl)) (_a.(e_cnt_cval)) (_a.(e___irq)) (_a.(e_cntvoff)) (_a.(e_hrtimer)) (_a.(e_loaded)) (_a.(e_host_timer_irq))
          _b.
Notation "_a '.[e_host_timer_irq_flags]' ':<' _b" := (update_s_arch_timer_context_e_host_timer_irq_flags _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_timers (_a: s_arch_timer_cpu) _b :=
  mks_arch_timer_cpu _b (_a.(e_bg_timer)) (_a.(e___enabled)).
Notation "_a '.[e_timers]' ':<' _b" := (update_s_arch_timer_cpu_e_timers _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer (_a: s_arch_timer_cpu) _b :=
  mks_arch_timer_cpu (_a.(e_timers)) _b (_a.(e___enabled)).
Notation "_a '.[e_bg_timer]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e___enabled (_a: s_arch_timer_cpu) _b :=
  mks_arch_timer_cpu (_a.(e_timers)) (_a.(e_bg_timer)) _b.
Notation "_a '.[e___enabled]' ':<' _b" := (update_s_arch_timer_cpu_e___enabled _a _b) (at level 1).

Definition update_s_kvm_pmc_e_idx (_a: s_kvm_pmc) _b :=
  mks_kvm_pmc _b (_a.(e_perf_event)).
Notation "_a '.[e_idx]' ':<' _b" := (update_s_kvm_pmc_e_idx _a _b) (at level 1).

Definition update_s_kvm_pmc_e_perf_event (_a: s_kvm_pmc) _b :=
  mks_kvm_pmc (_a.(e_idx)) _b.
Notation "_a '.[e_perf_event]' ':<' _b" := (update_s_kvm_pmc_e_perf_event _a _b) (at level 1).

Definition update_s_kvm_pmu_e_irq_num (_a: s_kvm_pmu) _b :=
  mks_kvm_pmu _b (_a.(e_pmc)) (_a.(e_chained)) (_a.(e__ready)) (_a.(e_created)) (_a.(e_irq_level)).
Notation "_a '.[e_irq_num]' ':<' _b" := (update_s_kvm_pmu_e_irq_num _a _b) (at level 1).

Definition update_s_kvm_pmu_e_pmc (_a: s_kvm_pmu) _b :=
  mks_kvm_pmu (_a.(e_irq_num)) _b (_a.(e_chained)) (_a.(e__ready)) (_a.(e_created)) (_a.(e_irq_level)).
Notation "_a '.[e_pmc]' ':<' _b" := (update_s_kvm_pmu_e_pmc _a _b) (at level 1).

Definition update_s_kvm_pmu_e_chained (_a: s_kvm_pmu) _b :=
  mks_kvm_pmu (_a.(e_irq_num)) (_a.(e_pmc)) _b (_a.(e__ready)) (_a.(e_created)) (_a.(e_irq_level)).
Notation "_a '.[e_chained]' ':<' _b" := (update_s_kvm_pmu_e_chained _a _b) (at level 1).

Definition update_s_kvm_pmu_e__ready (_a: s_kvm_pmu) _b :=
  mks_kvm_pmu (_a.(e_irq_num)) (_a.(e_pmc)) (_a.(e_chained)) _b (_a.(e_created)) (_a.(e_irq_level)).
Notation "_a '.[e__ready]' ':<' _b" := (update_s_kvm_pmu_e__ready _a _b) (at level 1).

Definition update_s_kvm_pmu_e_created (_a: s_kvm_pmu) _b :=
  mks_kvm_pmu (_a.(e_irq_num)) (_a.(e_pmc)) (_a.(e_chained)) (_a.(e__ready)) _b (_a.(e_irq_level)).
Notation "_a '.[e_created]' ':<' _b" := (update_s_kvm_pmu_e_created _a _b) (at level 1).

Definition update_s_kvm_pmu_e_irq_level (_a: s_kvm_pmu) _b :=
  mks_kvm_pmu (_a.(e_irq_num)) (_a.(e_pmc)) (_a.(e_chained)) (_a.(e__ready)) (_a.(e_created)) _b.
Notation "_a '.[e_irq_level]' ':<' _b" := (update_s_kvm_pmu_e_irq_level _a _b) (at level 1).

Definition update_s_anon_123_e_mdscr_el1 (_a: s_anon_123) _b :=
  mks_anon_123 _b.
Notation "_a '.[e_mdscr_el1]' ':<' _b" := (update_s_anon_123_e_mdscr_el1 _a _b) (at level 1).

Definition update_s_kvm_decode_e_rt (_a: s_kvm_decode) _b :=
  mks_kvm_decode _b (_a.(e_sign_extend)) (_a.(e_sixty_four)).
Notation "_a '.[e_rt]' ':<' _b" := (update_s_kvm_decode_e_rt _a _b) (at level 1).

Definition update_s_kvm_decode_e_sign_extend (_a: s_kvm_decode) _b :=
  mks_kvm_decode (_a.(e_rt)) _b (_a.(e_sixty_four)).
Notation "_a '.[e_sign_extend]' ':<' _b" := (update_s_kvm_decode_e_sign_extend _a _b) (at level 1).

Definition update_s_kvm_decode_e_sixty_four (_a: s_kvm_decode) _b :=
  mks_kvm_decode (_a.(e_rt)) (_a.(e_sign_extend)) _b.
Notation "_a '.[e_sixty_four]' ':<' _b" := (update_s_kvm_decode_e_sixty_four _a _b) (at level 1).

Definition update_s_kvm_mmu_memory_cache_e_nobjs (_a: s_kvm_mmu_memory_cache) _b :=
  mks_kvm_mmu_memory_cache _b (_a.(e_objects)).
Notation "_a '.[e_nobjs]' ':<' _b" := (update_s_kvm_mmu_memory_cache_e_nobjs _a _b) (at level 1).

Definition update_s_kvm_mmu_memory_cache_e_objects (_a: s_kvm_mmu_memory_cache) _b :=
  mks_kvm_mmu_memory_cache (_a.(e_nobjs)) _b.
Notation "_a '.[e_objects]' ':<' _b" := (update_s_kvm_mmu_memory_cache_e_objects _a _b) (at level 1).

Definition update_s_vcpu_reset_state_e__pc (_a: s_vcpu_reset_state) _b :=
  mks_vcpu_reset_state _b (_a.(e_r0)) (_a.(e_be)) (_a.(e_reset)).
Notation "_a '.[e__pc]' ':<' _b" := (update_s_vcpu_reset_state_e__pc _a _b) (at level 1).

Definition update_s_vcpu_reset_state_e_r0 (_a: s_vcpu_reset_state) _b :=
  mks_vcpu_reset_state (_a.(e__pc)) _b (_a.(e_be)) (_a.(e_reset)).
Notation "_a '.[e_r0]' ':<' _b" := (update_s_vcpu_reset_state_e_r0 _a _b) (at level 1).

Definition update_s_vcpu_reset_state_e_be (_a: s_vcpu_reset_state) _b :=
  mks_vcpu_reset_state (_a.(e__pc)) (_a.(e_r0)) _b (_a.(e_reset)).
Notation "_a '.[e_be]' ':<' _b" := (update_s_vcpu_reset_state_e_be _a _b) (at level 1).

Definition update_s_vcpu_reset_state_e_reset (_a: s_vcpu_reset_state) _b :=
  mks_vcpu_reset_state (_a.(e__pc)) (_a.(e_r0)) (_a.(e_be)) _b.
Notation "_a '.[e_reset]' ':<' _b" := (update_s_vcpu_reset_state_e_reset _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e________vmid (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch _b (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e________vmid]' ':<' _b" := (update_s_kvm_vcpu_arch_e________vmid _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_was_preempted (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) _b (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_was_preempted]' ':<' _b" := (update_s_kvm_vcpu_arch_e_was_preempted _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) _b (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_walk_result]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) _b (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_ctxt]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_sve_state (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) _b (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_sve_state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_sve_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_sve_max_vl (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) _b (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_sve_max_vl]' ':<' _b" := (update_s_kvm_vcpu_arch_e_sve_max_vl _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e__hcr_el2 (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) _b (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e__hcr_el2]' ':<' _b" := (update_s_kvm_vcpu_arch_e__hcr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mdcr_el2 (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) _b
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_mdcr_el2]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mdcr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_fault (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          _b (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_fault]' ':<' _b" := (update_s_kvm_vcpu_arch_e_fault _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_workaround_flags (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) _b (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_workaround_flags]' ':<' _b" := (update_s_kvm_vcpu_arch_e_workaround_flags _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e____flags (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) _b (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e____flags]' ':<' _b" := (update_s_kvm_vcpu_arch_e____flags _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_debug_ptr (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) _b (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_debug_ptr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_debug_ptr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vcpu_debug_state (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) _b (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_vcpu_debug_state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vcpu_debug_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_external_debug_state (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) _b (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_external_debug_state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_external_debug_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_cpu_context (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) _b (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_host_cpu_context]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_cpu_context _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_thread_info (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) _b
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_host_thread_info]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_thread_info _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_fpsimd_state (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          _b (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_host_fpsimd_state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_fpsimd_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) _b (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_host_debug_state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) _b (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_vgic_cpu]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) _b (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_timer_cpu]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) _b (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_pmu]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_guest_debug_preserved (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) _b (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_guest_debug_preserved]' ':<' _b" := (update_s_kvm_vcpu_arch_e_guest_debug_preserved _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_power_off (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) _b (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_power_off]' ':<' _b" := (update_s_kvm_vcpu_arch_e_power_off _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pause (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) _b
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_pause]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pause _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmio_decode (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          _b (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_mmio_decode]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmio_decode _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmu_page_cache (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) _b (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_mmu_page_cache]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmu_page_cache _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_target (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) _b (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_target]' ':<' _b" := (update_s_kvm_vcpu_arch_e_target _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e__features (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) _b (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e__features]' ':<' _b" := (update_s_kvm_vcpu_arch_e__features _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_has_run_once (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) _b (_a.(e_vsesr_el2)) (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_has_run_once]' ':<' _b" := (update_s_kvm_vcpu_arch_e_has_run_once _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vsesr_el2 (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) _b (_a.(e_reset_state)) (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_vsesr_el2]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vsesr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_reset_state (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) _b (_a.(e_sysregs_loaded_on_cpu)).
Notation "_a '.[e_reset_state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_reset_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_sysregs_loaded_on_cpu (_a: s_kvm_vcpu_arch) _b :=
  mks_kvm_vcpu_arch (_a.(e________vmid)) (_a.(e_was_preempted)) (_a.(e_walk_result)) (_a.(e_ctxt)) (_a.(e_sve_state)) (_a.(e_sve_max_vl)) (_a.(e__hcr_el2)) (_a.(e_mdcr_el2))
          (_a.(e_fault)) (_a.(e_workaround_flags)) (_a.(e____flags)) (_a.(e_debug_ptr)) (_a.(e_vcpu_debug_state)) (_a.(e_external_debug_state)) (_a.(e_host_cpu_context)) (_a.(e_host_thread_info))
          (_a.(e_host_fpsimd_state)) (_a.(e_host_debug_state)) (_a.(e_vgic_cpu)) (_a.(e_timer_cpu)) (_a.(e_pmu)) (_a.(e_guest_debug_preserved)) (_a.(e_power_off)) (_a.(e_pause))
          (_a.(e_mmio_decode)) (_a.(e_mmu_page_cache)) (_a.(e_target)) (_a.(e__features)) (_a.(e_has_run_once)) (_a.(e_vsesr_el2)) (_a.(e_reset_state)) _b.
Notation "_a '.[e_sysregs_loaded_on_cpu]' ':<' _b" := (update_s_kvm_vcpu_arch_e_sysregs_loaded_on_cpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__kvm (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu _b (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e__kvm]' ':<' _b" := (update_s_kvm_vcpu_e__kvm _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_preempt_notifier (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) _b (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_preempt_notifier]' ':<' _b" := (update_s_kvm_vcpu_e_preempt_notifier _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__cpu (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) _b (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e__cpu]' ':<' _b" := (update_s_kvm_vcpu_e__cpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__vcpu_id (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) _b (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e__vcpu_id]' ':<' _b" := (update_s_kvm_vcpu_e__vcpu_id _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__srcu_idx (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) _b (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e__srcu_idx]' ':<' _b" := (update_s_kvm_vcpu_e__srcu_idx _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mode (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) _b (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mode]' ':<' _b" := (update_s_kvm_vcpu_e_mode _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_requests (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) _b (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_requests]' ':<' _b" := (update_s_kvm_vcpu_e_requests _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_guest_debug (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) _b
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_guest_debug]' ':<' _b" := (update_s_kvm_vcpu_e_guest_debug _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_pre_pcpu (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          _b (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_pre_pcpu]' ':<' _b" := (update_s_kvm_vcpu_e_pre_pcpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_blocked_vcpu_list (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) _b (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_blocked_vcpu_list]' ':<' _b" := (update_s_kvm_vcpu_e_blocked_vcpu_list _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) _b (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mutex]' ':<' _b" := (update_s_kvm_vcpu_e_mutex _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_run (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) _b (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_run]' ':<' _b" := (update_s_kvm_vcpu_e_run _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_guest_xcr0_loaded (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) _b (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_guest_xcr0_loaded]' ':<' _b" := (update_s_kvm_vcpu_e_guest_xcr0_loaded _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) _b (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e__wq]' ':<' _b" := (update_s_kvm_vcpu_e__wq _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_pid (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) _b (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_pid]' ':<' _b" := (update_s_kvm_vcpu_e_pid _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_sigset_active (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) _b
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_sigset_active]' ':<' _b" := (update_s_kvm_vcpu_e_sigset_active _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_sigset (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          _b (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_sigset]' ':<' _b" := (update_s_kvm_vcpu_e_sigset _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) _b (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e__stat]' ':<' _b" := (update_s_kvm_vcpu_e__stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_halt_poll_ns (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) _b (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_halt_poll_ns]' ':<' _b" := (update_s_kvm_vcpu_e_halt_poll_ns _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_valid_wakeup (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) _b (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_valid_wakeup]' ':<' _b" := (update_s_kvm_vcpu_e_valid_wakeup _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mmio_needed (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) _b (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mmio_needed]' ':<' _b" := (update_s_kvm_vcpu_e_mmio_needed _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mmio_read_completed (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) _b (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mmio_read_completed]' ':<' _b" := (update_s_kvm_vcpu_e_mmio_read_completed _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mmio_is_write (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) _b (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mmio_is_write]' ':<' _b" := (update_s_kvm_vcpu_e_mmio_is_write _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mmio_cur_fragment (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) _b
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mmio_cur_fragment]' ':<' _b" := (update_s_kvm_vcpu_e_mmio_cur_fragment _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mmio_nr_fragments (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          _b (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mmio_nr_fragments]' ':<' _b" := (update_s_kvm_vcpu_e_mmio_nr_fragments _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mmio_fragments (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) _b (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_mmio_fragments]' ':<' _b" := (update_s_kvm_vcpu_e_mmio_fragments _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_spin_loop (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) _b (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_spin_loop]' ':<' _b" := (update_s_kvm_vcpu_e_spin_loop _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_preempted (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) _b (_a.(e___ready)) (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e_preempted]' ':<' _b" := (update_s_kvm_vcpu_e_preempted _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___ready (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) _b (_a.(e___arch)) (_a.(e__debugfs_dentry)).
Notation "_a '.[e___ready]' ':<' _b" := (update_s_kvm_vcpu_e___ready _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) _b (_a.(e__debugfs_dentry)).
Notation "_a '.[e___arch]' ':<' _b" := (update_s_kvm_vcpu_e___arch _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__debugfs_dentry (_a: s_kvm_vcpu) _b :=
  mks_kvm_vcpu (_a.(e__kvm)) (_a.(e_preempt_notifier)) (_a.(e__cpu)) (_a.(e__vcpu_id)) (_a.(e__srcu_idx)) (_a.(e_mode)) (_a.(e_requests)) (_a.(e_guest_debug))
          (_a.(e_pre_pcpu)) (_a.(e_blocked_vcpu_list)) (_a.(e_mutex)) (_a.(e_run)) (_a.(e_guest_xcr0_loaded)) (_a.(e__wq)) (_a.(e_pid)) (_a.(e_sigset_active))
          (_a.(e_sigset)) (_a.(e__stat)) (_a.(e_halt_poll_ns)) (_a.(e_valid_wakeup)) (_a.(e_mmio_needed)) (_a.(e_mmio_read_completed)) (_a.(e_mmio_is_write)) (_a.(e_mmio_cur_fragment))
          (_a.(e_mmio_nr_fragments)) (_a.(e_mmio_fragments)) (_a.(e_spin_loop)) (_a.(e_preempted)) (_a.(e___ready)) (_a.(e___arch)) _b.
Notation "_a '.[e__debugfs_dentry]' ':<' _b" := (update_s_kvm_vcpu_e__debugfs_dentry _a _b) (at level 1).

Definition update_CoreData_e_next_vmid (_a: CoreData) _b :=
  mkCoreData _b (_a.(e_last_remap_ptr)).
Notation "_a '.[e_next_vmid]' ':<' _b" := (update_CoreData_e_next_vmid _a _b) (at level 1).

Definition update_CoreData_e_last_remap_ptr (_a: CoreData) _b :=
  mkCoreData (_a.(e_next_vmid)) _b.
Notation "_a '.[e_last_remap_ptr]' ':<' _b" := (update_CoreData_e_last_remap_ptr _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_page_pool_start (_a: SMMU_PT) _b :=
  mkSMMU_PT _b (_a.(e_smmu_pgd_used_pages)) (_a.(e_smmu_pmd_used_pages)) (_a.(e_smmu_pgd_pool)) (_a.(e_smmu_pmd_pool)) (_a.(e_smmu_pte_pool)) (_a.(e_smmu_pt)).
Notation "_a '.[e_smmu_page_pool_start]' ':<' _b" := (update_SMMU_PT_e_smmu_page_pool_start _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_pgd_used_pages (_a: SMMU_PT) _b :=
  mkSMMU_PT (_a.(e_smmu_page_pool_start)) _b (_a.(e_smmu_pmd_used_pages)) (_a.(e_smmu_pgd_pool)) (_a.(e_smmu_pmd_pool)) (_a.(e_smmu_pte_pool)) (_a.(e_smmu_pt)).
Notation "_a '.[e_smmu_pgd_used_pages]' ':<' _b" := (update_SMMU_PT_e_smmu_pgd_used_pages _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_pmd_used_pages (_a: SMMU_PT) _b :=
  mkSMMU_PT (_a.(e_smmu_page_pool_start)) (_a.(e_smmu_pgd_used_pages)) _b (_a.(e_smmu_pgd_pool)) (_a.(e_smmu_pmd_pool)) (_a.(e_smmu_pte_pool)) (_a.(e_smmu_pt)).
Notation "_a '.[e_smmu_pmd_used_pages]' ':<' _b" := (update_SMMU_PT_e_smmu_pmd_used_pages _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_pgd_pool (_a: SMMU_PT) _b :=
  mkSMMU_PT (_a.(e_smmu_page_pool_start)) (_a.(e_smmu_pgd_used_pages)) (_a.(e_smmu_pmd_used_pages)) _b (_a.(e_smmu_pmd_pool)) (_a.(e_smmu_pte_pool)) (_a.(e_smmu_pt)).
Notation "_a '.[e_smmu_pgd_pool]' ':<' _b" := (update_SMMU_PT_e_smmu_pgd_pool _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_pmd_pool (_a: SMMU_PT) _b :=
  mkSMMU_PT (_a.(e_smmu_page_pool_start)) (_a.(e_smmu_pgd_used_pages)) (_a.(e_smmu_pmd_used_pages)) (_a.(e_smmu_pgd_pool)) _b (_a.(e_smmu_pte_pool)) (_a.(e_smmu_pt)).
Notation "_a '.[e_smmu_pmd_pool]' ':<' _b" := (update_SMMU_PT_e_smmu_pmd_pool _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_pte_pool (_a: SMMU_PT) _b :=
  mkSMMU_PT (_a.(e_smmu_page_pool_start)) (_a.(e_smmu_pgd_used_pages)) (_a.(e_smmu_pmd_used_pages)) (_a.(e_smmu_pgd_pool)) (_a.(e_smmu_pmd_pool)) _b (_a.(e_smmu_pt)).
Notation "_a '.[e_smmu_pte_pool]' ':<' _b" := (update_SMMU_PT_e_smmu_pte_pool _a _b) (at level 1).

Definition update_SMMU_PT_e_smmu_pt (_a: SMMU_PT) _b :=
  mkSMMU_PT (_a.(e_smmu_page_pool_start)) (_a.(e_smmu_pgd_used_pages)) (_a.(e_smmu_pmd_used_pages)) (_a.(e_smmu_pgd_pool)) (_a.(e_smmu_pmd_pool)) (_a.(e_smmu_pte_pool)) _b.
Notation "_a '.[e_smmu_pt]' ':<' _b" := (update_SMMU_PT_e_smmu_pt _a _b) (at level 1).

Definition update_Stage2PT_e_vttbr (_a: Stage2PT) _b :=
  mkStage2PT _b (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_vttbr]' ':<' _b" := (update_Stage2PT_e_vttbr _a _b) (at level 1).

Definition update_Stage2PT_e_page_pool_start (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) _b (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_page_pool_start]' ':<' _b" := (update_Stage2PT_e_page_pool_start _a _b) (at level 1).

Definition update_Stage2PT_e_pmd_used_pages (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) _b (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pmd_used_pages]' ':<' _b" := (update_Stage2PT_e_pmd_used_pages _a _b) (at level 1).

Definition update_Stage2PT_e_pud_used_pages (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) _b (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pud_used_pages]' ':<' _b" := (update_Stage2PT_e_pud_used_pages _a _b) (at level 1).

Definition update_Stage2PT_e_pte_used_pages (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) _b (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pte_used_pages]' ':<' _b" := (update_Stage2PT_e_pte_used_pages _a _b) (at level 1).

Definition update_Stage2PT_e_pgd_pool (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) _b (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pgd_pool]' ':<' _b" := (update_Stage2PT_e_pgd_pool _a _b) (at level 1).

Definition update_Stage2PT_e_pud_pool (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) _b (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pud_pool]' ':<' _b" := (update_Stage2PT_e_pud_pool _a _b) (at level 1).

Definition update_Stage2PT_e_pmd_pool (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) _b
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pmd_pool]' ':<' _b" := (update_Stage2PT_e_pmd_pool _a _b) (at level 1).

Definition update_Stage2PT_e_pte_pool (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          _b (_a.(e_lv2pt)) (_a.(e_lv3pt)).
Notation "_a '.[e_pte_pool]' ':<' _b" := (update_Stage2PT_e_pte_pool _a _b) (at level 1).

Definition update_Stage2PT_e_lv2pt (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) _b (_a.(e_lv3pt)).
Notation "_a '.[e_lv2pt]' ':<' _b" := (update_Stage2PT_e_lv2pt _a _b) (at level 1).

Definition update_Stage2PT_e_lv3pt (_a: Stage2PT) _b :=
  mkStage2PT (_a.(e_vttbr)) (_a.(e_page_pool_start)) (_a.(e_pmd_used_pages)) (_a.(e_pud_used_pages)) (_a.(e_pte_used_pages)) (_a.(e_pgd_pool)) (_a.(e_pud_pool)) (_a.(e_pmd_pool))
          (_a.(e_pte_pool)) (_a.(e_lv2pt)) _b.
Notation "_a '.[e_lv3pt]' ':<' _b" := (update_Stage2PT_e_lv3pt _a _b) (at level 1).

Definition update_VMInfo_e___vmid (_a: VMInfo) _b :=
  mkVMInfo _b (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e___vmid]' ':<' _b" := (update_VMInfo_e___vmid _a _b) (at level 1).

Definition update_VMInfo_e_load_info_cnt (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) _b (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_load_info_cnt]' ':<' _b" := (update_VMInfo_e_load_info_cnt _a _b) (at level 1).

Definition update_VMInfo_e_kvm_pg_cnt (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) _b (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_kvm_pg_cnt]' ':<' _b" := (update_VMInfo_e_kvm_pg_cnt _a _b) (at level 1).

Definition update_VMInfo_e_inc_exe (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) _b (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_inc_exe]' ':<' _b" := (update_VMInfo_e_inc_exe _a _b) (at level 1).

Definition update_VMInfo_e__state (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) _b (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e__state]' ':<' _b" := (update_VMInfo_e__state _a _b) (at level 1).

Definition update_VMInfo_e_load_info (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) _b (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_load_info]' ':<' _b" := (update_VMInfo_e_load_info _a _b) (at level 1).

Definition update_VMInfo_e_kvm (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) _b (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_kvm]' ':<' _b" := (update_VMInfo_e_kvm _a _b) (at level 1).

Definition update_VMInfo_e_int_vcpus (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) _b
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_int_vcpus]' ':<' _b" := (update_VMInfo_e_int_vcpus _a _b) (at level 1).

Definition update_VMInfo_e_key (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          _b (_a.(e_iv)) (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_key]' ':<' _b" := (update_VMInfo_e_key _a _b) (at level 1).

Definition update_VMInfo_e_iv (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) _b (_a.(e_public_key)) (_a.(e_powered_on)).
Notation "_a '.[e_iv]' ':<' _b" := (update_VMInfo_e_iv _a _b) (at level 1).

Definition update_VMInfo_e_public_key (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) _b (_a.(e_powered_on)).
Notation "_a '.[e_public_key]' ':<' _b" := (update_VMInfo_e_public_key _a _b) (at level 1).

Definition update_VMInfo_e_powered_on (_a: VMInfo) _b :=
  mkVMInfo (_a.(e___vmid)) (_a.(e_load_info_cnt)) (_a.(e_kvm_pg_cnt)) (_a.(e_inc_exe)) (_a.(e__state)) (_a.(e_load_info)) (_a.(e_kvm)) (_a.(e_int_vcpus))
          (_a.(e_key)) (_a.(e_iv)) (_a.(e_public_key)) _b.
Notation "_a '.[e_powered_on]' ':<' _b" := (update_VMInfo_e_powered_on _a _b) (at level 1).

Definition update_Shared_e_locks (_a: Shared) _b :=
  mkShared _b (_a.(e_s2pages)) (_a.(e_core_data)) (_a.(e_s2pts)) (_a.(e_smmupts)) (_a.(e_smmu_vmid)) (_a.(e_vminfos)).
Notation "_a '.[e_locks]' ':<' _b" := (update_Shared_e_locks _a _b) (at level 1).

Definition update_Shared_e_s2pages (_a: Shared) _b :=
  mkShared (_a.(e_locks)) _b (_a.(e_core_data)) (_a.(e_s2pts)) (_a.(e_smmupts)) (_a.(e_smmu_vmid)) (_a.(e_vminfos)).
Notation "_a '.[e_s2pages]' ':<' _b" := (update_Shared_e_s2pages _a _b) (at level 1).

Definition update_Shared_e_core_data (_a: Shared) _b :=
  mkShared (_a.(e_locks)) (_a.(e_s2pages)) _b (_a.(e_s2pts)) (_a.(e_smmupts)) (_a.(e_smmu_vmid)) (_a.(e_vminfos)).
Notation "_a '.[e_core_data]' ':<' _b" := (update_Shared_e_core_data _a _b) (at level 1).

Definition update_Shared_e_s2pts (_a: Shared) _b :=
  mkShared (_a.(e_locks)) (_a.(e_s2pages)) (_a.(e_core_data)) _b (_a.(e_smmupts)) (_a.(e_smmu_vmid)) (_a.(e_vminfos)).
Notation "_a '.[e_s2pts]' ':<' _b" := (update_Shared_e_s2pts _a _b) (at level 1).

Definition update_Shared_e_smmupts (_a: Shared) _b :=
  mkShared (_a.(e_locks)) (_a.(e_s2pages)) (_a.(e_core_data)) (_a.(e_s2pts)) _b (_a.(e_smmu_vmid)) (_a.(e_vminfos)).
Notation "_a '.[e_smmupts]' ':<' _b" := (update_Shared_e_smmupts _a _b) (at level 1).

Definition update_Shared_e_smmu_vmid (_a: Shared) _b :=
  mkShared (_a.(e_locks)) (_a.(e_s2pages)) (_a.(e_core_data)) (_a.(e_s2pts)) (_a.(e_smmupts)) _b (_a.(e_vminfos)).
Notation "_a '.[e_smmu_vmid]' ':<' _b" := (update_Shared_e_smmu_vmid _a _b) (at level 1).

Definition update_Shared_e_vminfos (_a: Shared) _b :=
  mkShared (_a.(e_locks)) (_a.(e_s2pages)) (_a.(e_core_data)) (_a.(e_s2pts)) (_a.(e_smmupts)) (_a.(e_smmu_vmid)) _b.
Notation "_a '.[e_vminfos]' ':<' _b" := (update_Shared_e_vminfos _a _b) (at level 1).

Definition update_PrivData_e_regions (_a: PrivData) _b :=
  mkPrivData _b (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_regions]' ':<' _b" := (update_PrivData_e_regions _a _b) (at level 1).

Definition update_PrivData_e_s2_memblock_info (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) _b (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_s2_memblock_info]' ':<' _b" := (update_PrivData_e_s2_memblock_info _a _b) (at level 1).

Definition update_PrivData_e_arch (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) _b (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_arch]' ':<' _b" := (update_PrivData_e_arch _a _b) (at level 1).

Definition update_PrivData_e_regions_cnt (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) _b (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_regions_cnt]' ':<' _b" := (update_PrivData_e_regions_cnt _a _b) (at level 1).

Definition update_PrivData_e_host_vttbr (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) _b (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_host_vttbr]' ':<' _b" := (update_PrivData_e_host_vttbr _a _b) (at level 1).

Definition update_PrivData_e_pl011_base (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) _b (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_pl011_base]' ':<' _b" := (update_PrivData_e_pl011_base _a _b) (at level 1).

Definition update_PrivData_e_uart_8250_base (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) _b (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_uart_8250_base]' ':<' _b" := (update_PrivData_e_uart_8250_base _a _b) (at level 1).

Definition update_PrivData_e_ram_start_pfn (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) _b
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_ram_start_pfn]' ':<' _b" := (update_PrivData_e_ram_start_pfn _a _b) (at level 1).

Definition update_PrivData_e_shadow_ctxts (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          _b (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_shadow_ctxts]' ':<' _b" := (update_PrivData_e_shadow_ctxts _a _b) (at level 1).

Definition update_PrivData_e_s2_sys_reg_descs (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) _b (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_s2_sys_reg_descs]' ':<' _b" := (update_PrivData_e_s2_sys_reg_descs _a _b) (at level 1).

Definition update_PrivData_e_smmu_cfg (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) _b (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_smmu_cfg]' ':<' _b" := (update_PrivData_e_smmu_cfg _a _b) (at level 1).

Definition update_PrivData_e_smmus (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) _b (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_smmus]' ':<' _b" := (update_PrivData_e_smmus _a _b) (at level 1).

Definition update_PrivData_e_el2_smmu_num (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) _b (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_el2_smmu_num]' ':<' _b" := (update_PrivData_e_el2_smmu_num _a _b) (at level 1).

Definition update_PrivData_e_vgic_cpu_base (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) _b (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_vgic_cpu_base]' ':<' _b" := (update_PrivData_e_vgic_cpu_base _a _b) (at level 1).

Definition update_PrivData_e_installed (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) _b (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_installed]' ':<' _b" := (update_PrivData_e_installed _a _b) (at level 1).

Definition update_PrivData_e_per_cpu_data (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) _b
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_per_cpu_data]' ':<' _b" := (update_PrivData_e_per_cpu_data _a _b) (at level 1).

Definition update_PrivData_e_core_start (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          _b (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_core_start]' ':<' _b" := (update_PrivData_e_core_start _a _b) (at level 1).

Definition update_PrivData_e_core_end (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) _b (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_core_end]' ':<' _b" := (update_PrivData_e_core_end _a _b) (at level 1).

Definition update_PrivData_e_hacl_hash (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) _b (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_hacl_hash]' ':<' _b" := (update_PrivData_e_hacl_hash _a _b) (at level 1).

Definition update_PrivData_e_hacl_hash0 (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) _b (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_hacl_hash0]' ':<' _b" := (update_PrivData_e_hacl_hash0 _a _b) (at level 1).

Definition update_PrivData_e__key (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) _b (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e__key]' ':<' _b" := (update_PrivData_e__key _a _b) (at level 1).

Definition update_PrivData_e_phys_mem_start (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) _b (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_phys_mem_start]' ':<' _b" := (update_PrivData_e_phys_mem_start _a _b) (at level 1).

Definition update_PrivData_e_phys_mem_size (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) _b (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_phys_mem_size]' ':<' _b" := (update_PrivData_e_phys_mem_size _a _b) (at level 1).

Definition update_PrivData_e_kvm_pool (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) _b
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_kvm_pool]' ':<' _b" := (update_PrivData_e_kvm_pool _a _b) (at level 1).

Definition update_PrivData_e_vcpu_pool (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          _b (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_vcpu_pool]' ':<' _b" := (update_PrivData_e_vcpu_pool _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) _b (_a.(e_host_cpus)) (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_cpu_regs]' ':<' _b" := (update_PrivData_e_cpu_regs _a _b) (at level 1).

Definition update_PrivData_e_host_cpus (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) _b (_a.(e_host_ctxt)) (_a.(e_umem)).
Notation "_a '.[e_host_cpus]' ':<' _b" := (update_PrivData_e_host_cpus _a _b) (at level 1).

Definition update_PrivData_e_host_ctxt (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) _b (_a.(e_umem)).
Notation "_a '.[e_host_ctxt]' ':<' _b" := (update_PrivData_e_host_ctxt _a _b) (at level 1).

Definition update_PrivData_e_umem (_a: PrivData) _b :=
  mkPrivData (_a.(e_regions)) (_a.(e_s2_memblock_info)) (_a.(e_arch)) (_a.(e_regions_cnt)) (_a.(e_host_vttbr)) (_a.(e_pl011_base)) (_a.(e_uart_8250_base)) (_a.(e_ram_start_pfn))
          (_a.(e_shadow_ctxts)) (_a.(e_s2_sys_reg_descs)) (_a.(e_smmu_cfg)) (_a.(e_smmus)) (_a.(e_el2_smmu_num)) (_a.(e_vgic_cpu_base)) (_a.(e_installed)) (_a.(e_per_cpu_data))
          (_a.(e_core_start)) (_a.(e_core_end)) (_a.(e_hacl_hash)) (_a.(e_hacl_hash0)) (_a.(e__key)) (_a.(e_phys_mem_start)) (_a.(e_phys_mem_size)) (_a.(e_kvm_pool))
          (_a.(e_vcpu_pool)) (_a.(e_cpu_regs)) (_a.(e_host_cpus)) (_a.(e_host_ctxt)) _b.
Notation "_a '.[e_umem]' ':<' _b" := (update_PrivData_e_umem _a _b) (at level 1).

Definition update_RData_shared (_a: RData) _b :=
  mkRData _b (_a.(priv)) (_a.(log)) (_a.(oracle)) (_a.(repl)).
Notation "_a '.[shared]' ':<' _b" := (update_RData_shared _a _b) (at level 1).

Definition update_RData_priv (_a: RData) _b :=
  mkRData (_a.(shared)) _b (_a.(log)) (_a.(oracle)) (_a.(repl)).
Notation "_a '.[priv]' ':<' _b" := (update_RData_priv _a _b) (at level 1).

Definition update_RData_log (_a: RData) _b :=
  mkRData (_a.(shared)) (_a.(priv)) _b (_a.(oracle)) (_a.(repl)).
Notation "_a '.[log]' ':<' _b" := (update_RData_log _a _b) (at level 1).

Definition update_RData_oracle (_a: RData) _b :=
  mkRData (_a.(shared)) (_a.(priv)) (_a.(log)) _b (_a.(repl)).
Notation "_a '.[oracle]' ':<' _b" := (update_RData_oracle _a _b) (at level 1).

Definition update_RData_repl (_a: RData) _b :=
  mkRData (_a.(shared)) (_a.(priv)) (_a.(log)) (_a.(oracle)) _b.
Notation "_a '.[repl]' ':<' _b" := (update_RData_repl _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_fp_regs_e_vregs (_a: s_shadow_vcpu_context) _b :=
  update_s_shadow_vcpu_context_e_fp_regs _a ((_a.(e_fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e_fp_regs].[e_vregs]' ':<' _b" := (update_s_shadow_vcpu_context_e_fp_regs_e_vregs _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_fp_regs_e_fpsr (_a: s_shadow_vcpu_context) _b :=
  update_s_shadow_vcpu_context_e_fp_regs _a ((_a.(e_fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e_fp_regs].[e_fpsr]' ':<' _b" := (update_s_shadow_vcpu_context_e_fp_regs_e_fpsr _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_fp_regs_e_fpcr (_a: s_shadow_vcpu_context) _b :=
  update_s_shadow_vcpu_context_e_fp_regs _a ((_a.(e_fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e_fp_regs].[e_fpcr]' ':<' _b" := (update_s_shadow_vcpu_context_e_fp_regs_e_fpcr _a _b) (at level 1).

Definition update_s_shadow_vcpu_context_e_fp_regs_e___reserved (_a: s_shadow_vcpu_context) _b :=
  update_s_shadow_vcpu_context_e_fp_regs _a ((_a.(e_fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e_fp_regs].[e___reserved]' ':<' _b" := (update_s_shadow_vcpu_context_e_fp_regs_e___reserved _a _b) (at level 1).

Definition update_s_kvm_regs_e___regs_e__regs (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e___regs _a ((_a.(e___regs)).[e__regs] :< _b).
Notation "_a '.[e___regs].[e__regs]' ':<' _b" := (update_s_kvm_regs_e___regs_e__regs _a _b) (at level 1).

Definition update_s_kvm_regs_e___regs_e_sp (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e___regs _a ((_a.(e___regs)).[e_sp] :< _b).
Notation "_a '.[e___regs].[e_sp]' ':<' _b" := (update_s_kvm_regs_e___regs_e_sp _a _b) (at level 1).

Definition update_s_kvm_regs_e___regs_e_pc (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e___regs _a ((_a.(e___regs)).[e_pc] :< _b).
Notation "_a '.[e___regs].[e_pc]' ':<' _b" := (update_s_kvm_regs_e___regs_e_pc _a _b) (at level 1).

Definition update_s_kvm_regs_e___regs_e_pstate (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e___regs _a ((_a.(e___regs)).[e_pstate] :< _b).
Notation "_a '.[e___regs].[e_pstate]' ':<' _b" := (update_s_kvm_regs_e___regs_e_pstate _a _b) (at level 1).

Definition update_s_kvm_regs_e__fp_regs_e_vregs (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e__fp_regs _a ((_a.(e__fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e__fp_regs].[e_vregs]' ':<' _b" := (update_s_kvm_regs_e__fp_regs_e_vregs _a _b) (at level 1).

Definition update_s_kvm_regs_e__fp_regs_e_fpsr (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e__fp_regs _a ((_a.(e__fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e__fp_regs].[e_fpsr]' ':<' _b" := (update_s_kvm_regs_e__fp_regs_e_fpsr _a _b) (at level 1).

Definition update_s_kvm_regs_e__fp_regs_e_fpcr (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e__fp_regs _a ((_a.(e__fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e__fp_regs].[e_fpcr]' ':<' _b" := (update_s_kvm_regs_e__fp_regs_e_fpcr _a _b) (at level 1).

Definition update_s_kvm_regs_e__fp_regs_e___reserved (_a: s_kvm_regs) _b :=
  update_s_kvm_regs_e__fp_regs _a ((_a.(e__fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e__fp_regs].[e___reserved]' ':<' _b" := (update_s_kvm_regs_e__fp_regs_e___reserved _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e___regs (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs _a ((_a.(e_gp_regs)).[e___regs] :< _b).
Notation "_a '.[e_gp_regs].[e___regs]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e___regs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e___regs_e__regs (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e___regs _a ((_a.(e_gp_regs).(e___regs)).[e__regs] :< _b).
Notation "_a '.[e_gp_regs].[e___regs].[e__regs]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e___regs_e__regs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e___regs_e_sp (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e___regs _a ((_a.(e_gp_regs).(e___regs)).[e_sp] :< _b).
Notation "_a '.[e_gp_regs].[e___regs].[e_sp]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e___regs_e_sp _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e___regs_e_pc (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e___regs _a ((_a.(e_gp_regs).(e___regs)).[e_pc] :< _b).
Notation "_a '.[e_gp_regs].[e___regs].[e_pc]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e___regs_e_pc _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e___regs_e_pstate (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e___regs _a ((_a.(e_gp_regs).(e___regs)).[e_pstate] :< _b).
Notation "_a '.[e_gp_regs].[e___regs].[e_pstate]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e___regs_e_pstate _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e_sp_el1 (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs _a ((_a.(e_gp_regs)).[e_sp_el1] :< _b).
Notation "_a '.[e_gp_regs].[e_sp_el1]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e_sp_el1 _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e_elr_el1 (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs _a ((_a.(e_gp_regs)).[e_elr_el1] :< _b).
Notation "_a '.[e_gp_regs].[e_elr_el1]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e_elr_el1 _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e_spsr (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs _a ((_a.(e_gp_regs)).[e_spsr] :< _b).
Notation "_a '.[e_gp_regs].[e_spsr]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e_spsr _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e__fp_regs (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs _a ((_a.(e_gp_regs)).[e__fp_regs] :< _b).
Notation "_a '.[e_gp_regs].[e__fp_regs]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e__fp_regs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e_vregs (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e__fp_regs _a ((_a.(e_gp_regs).(e__fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e_gp_regs].[e__fp_regs].[e_vregs]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e_vregs _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e_fpsr (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e__fp_regs _a ((_a.(e_gp_regs).(e__fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e_gp_regs].[e__fp_regs].[e_fpsr]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e_fpsr _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e_fpcr (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e__fp_regs _a ((_a.(e_gp_regs).(e__fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e_gp_regs].[e__fp_regs].[e_fpcr]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e_fpcr _a _b) (at level 1).

Definition update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e___reserved (_a: s_kvm_cpu_context) _b :=
  update_s_kvm_cpu_context_e_gp_regs_e__fp_regs _a ((_a.(e_gp_regs).(e__fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e_gp_regs].[e__fp_regs].[e___reserved]' ':<' _b" := (update_s_kvm_cpu_context_e_gp_regs_e__fp_regs_e___reserved _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt _a ((_a.(e_core_ctxt)).[e_gp_regs] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs _a ((_a.(e_core_ctxt).(e_gp_regs)).[e___regs] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e___regs]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e__regs (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e___regs)).[e__regs] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e___regs].[e__regs]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e__regs _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e_sp (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e___regs)).[e_sp] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e___regs].[e_sp]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e_sp _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e_pc (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e___regs)).[e_pc] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e___regs].[e_pc]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e_pc _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e_pstate (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e___regs)).[e_pstate] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e___regs].[e_pstate]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e___regs_e_pstate _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e_sp_el1 (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs _a ((_a.(e_core_ctxt).(e_gp_regs)).[e_sp_el1] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e_sp_el1]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e_sp_el1 _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e_elr_el1 (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs _a ((_a.(e_core_ctxt).(e_gp_regs)).[e_elr_el1] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e_elr_el1]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e_elr_el1 _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e_spsr (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs _a ((_a.(e_core_ctxt).(e_gp_regs)).[e_spsr] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e_spsr]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e_spsr _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs _a ((_a.(e_core_ctxt).(e_gp_regs)).[e__fp_regs] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e__fp_regs]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e_vregs (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e__fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e__fp_regs].[e_vregs]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e_vregs _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e_fpsr (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e__fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e__fp_regs].[e_fpsr]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e_fpsr _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e_fpcr (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e__fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e__fp_regs].[e_fpcr]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e_fpcr _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e___reserved (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_core_ctxt).(e_gp_regs).(e__fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e_core_ctxt].[e_gp_regs].[e__fp_regs].[e___reserved]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e_gp_regs_e__fp_regs_e___reserved _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e__sys_regs (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt _a ((_a.(e_core_ctxt)).[e__sys_regs] :< _b).
Notation "_a '.[e_core_ctxt].[e__sys_regs]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e__sys_regs _a _b) (at level 1).

Definition update_s_el2_per_cpu_data_e_core_ctxt_e___hyp_running_vcpu (_a: s_el2_per_cpu_data) _b :=
  update_s_el2_per_cpu_data_e_core_ctxt _a ((_a.(e_core_ctxt)).[e___hyp_running_vcpu] :< _b).
Notation "_a '.[e_core_ctxt].[e___hyp_running_vcpu]' ':<' _b" := (update_s_el2_per_cpu_data_e_core_ctxt_e___hyp_running_vcpu _a _b) (at level 1).

Definition update_u_anon_1_e__val_e_counter (_a: u_anon_1) _b :=
  update_u_anon_1_e__val _a ((_a.(e__val)).[e_counter] :< _b).
Notation "_a '.[e__val].[e_counter]' ':<' _b" := (update_u_anon_1_e__val_e_counter _a _b) (at level 1).

Definition update_s_qspinlock_e_qspinlock_0_e__val (_a: s_qspinlock) _b :=
  update_s_qspinlock_e_qspinlock_0 _a ((_a.(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_qspinlock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_qspinlock_e_qspinlock_0_e__val_e_counter (_a: s_qspinlock) _b :=
  update_s_qspinlock_e_qspinlock_0_e__val _a ((_a.(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_qspinlock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_raw_spinlock_e_raw_lock_e_qspinlock_0 (_a: s_raw_spinlock) _b :=
  update_s_raw_spinlock_e_raw_lock _a ((_a.(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_raw_spinlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_raw_spinlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_raw_spinlock) _b :=
  update_s_raw_spinlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_raw_spinlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_raw_spinlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_raw_spinlock) _b :=
  update_s_raw_spinlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_raw_spinlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_u_anon_0_e_rlock_e_raw_lock (_a: u_anon_0) _b :=
  update_u_anon_0_e_rlock _a ((_a.(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_rlock].[e_raw_lock]' ':<' _b" := (update_u_anon_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: u_anon_0) _b :=
  update_u_anon_0_e_rlock_e_raw_lock _a ((_a.(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: u_anon_0) _b :=
  update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: u_anon_0) _b :=
  update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_u_anon_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_spinlock_e_spinlock_0_e_rlock (_a: s_spinlock) _b :=
  update_s_spinlock_e_spinlock_0 _a ((_a.(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_spinlock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_spinlock) _b :=
  update_s_spinlock_e_spinlock_0_e_rlock _a ((_a.(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_spinlock) _b :=
  update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_spinlock) _b :=
  update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_spinlock) _b :=
  update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_spinlock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_optimistic_spin_queue_e_tail_e_counter (_a: s_optimistic_spin_queue) _b :=
  update_s_optimistic_spin_queue_e_tail _a ((_a.(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_tail].[e_counter]' ':<' _b" := (update_s_optimistic_spin_queue_e_tail_e_counter _a _b) (at level 1).

Definition update_s_mutex_e_owner_e__counter (_a: s_mutex) _b :=
  update_s_mutex_e_owner _a ((_a.(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_owner].[e__counter]' ':<' _b" := (update_s_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock_e_spinlock_0 (_a: s_mutex) _b :=
  update_s_mutex_e_wait_lock _a ((_a.(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_mutex) _b :=
  update_s_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_mutex) _b :=
  update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_mutex) _b :=
  update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_mutex) _b :=
  update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_mutex) _b :=
  update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_mutex_e_osq_e_tail (_a: s_mutex) _b :=
  update_s_mutex_e_osq _a ((_a.(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_osq].[e_tail]' ':<' _b" := (update_s_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_mutex_e_osq_e_tail_e_counter (_a: s_mutex) _b :=
  update_s_mutex_e_osq_e_tail _a ((_a.(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_mutex_e_wait_list_e_next (_a: s_mutex) _b :=
  update_s_mutex_e_wait_list _a ((_a.(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_wait_list].[e_next]' ':<' _b" := (update_s_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_mutex_e_wait_list_e_prev (_a: s_mutex) _b :=
  update_s_mutex_e_wait_list _a ((_a.(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_wait_list].[e_prev]' ':<' _b" := (update_s_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_anon_124_e__lock_e_spinlock_0 (_a: s_anon_124) _b :=
  update_s_anon_124_e__lock _a ((_a.(e__lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e__lock].[e_spinlock_0]' ':<' _b" := (update_s_anon_124_e__lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_anon_124_e__lock_e_spinlock_0_e_rlock (_a: s_anon_124) _b :=
  update_s_anon_124_e__lock_e_spinlock_0 _a ((_a.(e__lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e__lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_anon_124_e__lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_anon_124) _b :=
  update_s_anon_124_e__lock_e_spinlock_0_e_rlock _a ((_a.(e__lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_anon_124) _b :=
  update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e__lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_anon_124) _b :=
  update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e__lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_anon_124) _b :=
  update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e__lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_anon_124_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_anon_124_e_items_e_next (_a: s_anon_124) _b :=
  update_s_anon_124_e_items _a ((_a.(e_items)).[e_next] :< _b).
Notation "_a '.[e_items].[e_next]' ':<' _b" := (update_s_anon_124_e_items_e_next _a _b) (at level 1).

Definition update_s_anon_124_e_items_e_prev (_a: s_anon_124) _b :=
  update_s_anon_124_e_items _a ((_a.(e_items)).[e_prev] :< _b).
Notation "_a '.[e_items].[e_prev]' ':<' _b" := (update_s_anon_124_e_items_e_prev _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_list_e_next (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_list _a ((_a.(e_resampler_list)).[e_next] :< _b).
Notation "_a '.[e_resampler_list].[e_next]' ':<' _b" := (update_s_anon_124_e_resampler_list_e_next _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_list_e_prev (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_list _a ((_a.(e_resampler_list)).[e_prev] :< _b).
Notation "_a '.[e_resampler_list].[e_prev]' ':<' _b" := (update_s_anon_124_e_resampler_list_e_prev _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_owner (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock _a ((_a.(e_resampler_lock)).[e_owner] :< _b).
Notation "_a '.[e_resampler_lock].[e_owner]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_owner _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_owner_e__counter (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_owner _a ((_a.(e_resampler_lock).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_resampler_lock].[e_owner].[e__counter]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_owner_e__counter _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock _a ((_a.(e_resampler_lock)).[e_wait_lock] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0 (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_lock _a ((_a.(e_resampler_lock).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0 _a ((_a.(e_resampler_lock).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_osq (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock _a ((_a.(e_resampler_lock)).[e_osq] :< _b).
Notation "_a '.[e_resampler_lock].[e_osq]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_osq _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_osq_e_tail (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_osq _a ((_a.(e_resampler_lock).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_resampler_lock].[e_osq].[e_tail]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_osq_e_tail _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_osq_e_tail_e_counter (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_osq_e_tail _a ((_a.(e_resampler_lock).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_resampler_lock].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_list (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock _a ((_a.(e_resampler_lock)).[e_wait_list] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_list]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_list _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_list_e_next (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_list _a ((_a.(e_resampler_lock).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_list].[e_next]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_anon_124_e_resampler_lock_e_wait_list_e_prev (_a: s_anon_124) _b :=
  update_s_anon_124_e_resampler_lock_e_wait_list _a ((_a.(e_resampler_lock).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_resampler_lock].[e_wait_list].[e_prev]' ':<' _b" := (update_s_anon_124_e_resampler_lock_e_wait_list_e_prev _a _b) (at level 1).

Definition update_u_anon_125_e__vgic_cpu_base_e_next (_a: u_anon_125) _b :=
  update_u_anon_125_e__vgic_cpu_base _a ((_a.(e__vgic_cpu_base)).[e_next] :< _b).
Notation "_a '.[e__vgic_cpu_base].[e_next]' ':<' _b" := (update_u_anon_125_e__vgic_cpu_base_e_next _a _b) (at level 1).

Definition update_u_anon_125_e__vgic_cpu_base_e_prev (_a: u_anon_125) _b :=
  update_u_anon_125_e__vgic_cpu_base _a ((_a.(e__vgic_cpu_base)).[e_prev] :< _b).
Notation "_a '.[e__vgic_cpu_base].[e_prev]' ':<' _b" := (update_u_anon_125_e__vgic_cpu_base_e_prev _a _b) (at level 1).

Definition update_s_vgic_io_device_e_vgic_io_device_1_e_redist_vcpu (_a: s_vgic_io_device) _b :=
  update_s_vgic_io_device_e_vgic_io_device_1 _a ((_a.(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_vgic_io_device_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_vgic_io_device_e_dev_e_ops (_a: s_vgic_io_device) _b :=
  update_s_vgic_io_device_e_dev _a ((_a.(e_dev)).[e_ops] :< _b).
Notation "_a '.[e_dev].[e_ops]' ':<' _b" := (update_s_vgic_io_device_e_dev_e_ops _a _b) (at level 1).

Definition update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_vgic_dist_9 _a ((_a.(e_vgic_dist_9)).[e__vgic_cpu_base] :< _b).
Notation "_a '.[e_vgic_dist_9].[e__vgic_cpu_base]' ':<' _b" := (update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base _a _b) (at level 1).

Definition update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base_e_next (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base _a ((_a.(e_vgic_dist_9).(e__vgic_cpu_base)).[e_next] :< _b).
Notation "_a '.[e_vgic_dist_9].[e__vgic_cpu_base].[e_next]' ':<' _b" := (update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base_e_next _a _b) (at level 1).

Definition update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base_e_prev (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base _a ((_a.(e_vgic_dist_9).(e__vgic_cpu_base)).[e_prev] :< _b).
Notation "_a '.[e_vgic_dist_9].[e__vgic_cpu_base].[e_prev]' ':<' _b" := (update_s_vgic_dist_e_vgic_dist_9_e__vgic_cpu_base_e_prev _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_base_addr (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev _a ((_a.(e_dist_iodev)).[e_base_addr] :< _b).
Notation "_a '.[e_dist_iodev].[e_base_addr]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_base_addr _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_vgic_io_device_1 (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev _a ((_a.(e_dist_iodev)).[e_vgic_io_device_1] :< _b).
Notation "_a '.[e_dist_iodev].[e_vgic_io_device_1]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_vgic_io_device_1_e_redist_vcpu (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev_e_vgic_io_device_1 _a ((_a.(e_dist_iodev).(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e_dist_iodev].[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e__regions (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev _a ((_a.(e_dist_iodev)).[e__regions] :< _b).
Notation "_a '.[e_dist_iodev].[e__regions]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e__regions _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_iodev_type (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev _a ((_a.(e_dist_iodev)).[e_iodev_type] :< _b).
Notation "_a '.[e_dist_iodev].[e_iodev_type]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_iodev_type _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_nr_regions (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev _a ((_a.(e_dist_iodev)).[e_nr_regions] :< _b).
Notation "_a '.[e_dist_iodev].[e_nr_regions]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_nr_regions _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_dev (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev _a ((_a.(e_dist_iodev)).[e_dev] :< _b).
Notation "_a '.[e_dist_iodev].[e_dev]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_dev _a _b) (at level 1).

Definition update_s_vgic_dist_e_dist_iodev_e_dev_e_ops (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_dist_iodev_e_dev _a ((_a.(e_dist_iodev).(e_dev)).[e_ops] :< _b).
Notation "_a '.[e_dist_iodev].[e_dev].[e_ops]' ':<' _b" := (update_s_vgic_dist_e_dist_iodev_e_dev_e_ops _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_lock_e_raw_lock (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_list_lock _a ((_a.(e_lpi_list_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e_lpi_list_lock].[e_raw_lock]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_list_lock_e_raw_lock _a ((_a.(e_lpi_list_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_lpi_list_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_lpi_list_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_head_e_next (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_list_head _a ((_a.(e_lpi_list_head)).[e_next] :< _b).
Notation "_a '.[e_lpi_list_head].[e_next]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_head_e_next _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_list_head_e_prev (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_list_head _a ((_a.(e_lpi_list_head)).[e_prev] :< _b).
Notation "_a '.[e_lpi_list_head].[e_prev]' ':<' _b" := (update_s_vgic_dist_e_lpi_list_head_e_prev _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_translation_cache_e_next (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_translation_cache _a ((_a.(e_lpi_translation_cache)).[e_next] :< _b).
Notation "_a '.[e_lpi_translation_cache].[e_next]' ':<' _b" := (update_s_vgic_dist_e_lpi_translation_cache_e_next _a _b) (at level 1).

Definition update_s_vgic_dist_e_lpi_translation_cache_e_prev (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_lpi_translation_cache _a ((_a.(e_lpi_translation_cache)).[e_prev] :< _b).
Notation "_a '.[e_lpi_translation_cache].[e_prev]' ':<' _b" := (update_s_vgic_dist_e_lpi_translation_cache_e_prev _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_fwnode (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_fwnode] :< _b).
Notation "_a '.[e_its_vm].[e_fwnode]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_fwnode _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_domain (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_domain] :< _b).
Notation "_a '.[e_its_vm].[e_domain]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_domain _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_vprop_page (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_vprop_page] :< _b).
Notation "_a '.[e_its_vm].[e_vprop_page]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_vprop_page _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_vpes (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_vpes] :< _b).
Notation "_a '.[e_its_vm].[e_vpes]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_vpes _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_nr_vpes (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_nr_vpes] :< _b).
Notation "_a '.[e_its_vm].[e_nr_vpes]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_nr_vpes _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_db_lpi_base (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_db_lpi_base] :< _b).
Notation "_a '.[e_its_vm].[e_db_lpi_base]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_db_lpi_base _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_db_bitmap (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_db_bitmap] :< _b).
Notation "_a '.[e_its_vm].[e_db_bitmap]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_db_bitmap _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_nr_db_lpis (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_nr_db_lpis] :< _b).
Notation "_a '.[e_its_vm].[e_nr_db_lpis]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_nr_db_lpis _a _b) (at level 1).

Definition update_s_vgic_dist_e_its_vm_e_vlpi_count (_a: s_vgic_dist) _b :=
  update_s_vgic_dist_e_its_vm _a ((_a.(e_its_vm)).[e_vlpi_count] :< _b).
Notation "_a '.[e_its_vm].[e_vlpi_count]' ':<' _b" := (update_s_vgic_dist_e_its_vm_e_vlpi_count _a _b) (at level 1).

Definition update_s_kvm_arch_e_______vmid_e_vmid_gen (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_______vmid _a ((_a.(e_______vmid)).[e_vmid_gen] :< _b).
Notation "_a '.[e_______vmid].[e_vmid_gen]' ':<' _b" := (update_s_kvm_arch_e_______vmid_e_vmid_gen _a _b) (at level 1).

Definition update_s_kvm_arch_e_______vmid_e______vmid (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_______vmid _a ((_a.(e_______vmid)).[e______vmid] :< _b).
Notation "_a '.[e_______vmid].[e______vmid]' ':<' _b" := (update_s_kvm_arch_e_______vmid_e______vmid _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_in_kernel (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_in_kernel] :< _b).
Notation "_a '.[e_vgic].[e_in_kernel]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_in_kernel _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_ready (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_ready] :< _b).
Notation "_a '.[e_vgic].[e_ready]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_ready _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_initialized (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_initialized] :< _b).
Notation "_a '.[e_vgic].[e_initialized]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_initialized _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_vgic_model (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_vgic_model] :< _b).
Notation "_a '.[e_vgic].[e_vgic_model]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_vgic_model _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_implementation_rev (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_implementation_rev] :< _b).
Notation "_a '.[e_vgic].[e_implementation_rev]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_implementation_rev _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_v2_groups_user_writable (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_v2_groups_user_writable] :< _b).
Notation "_a '.[e_vgic].[e_v2_groups_user_writable]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_v2_groups_user_writable _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_msis_require_devid (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_msis_require_devid] :< _b).
Notation "_a '.[e_vgic].[e_msis_require_devid]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_msis_require_devid _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_nr_spis (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_nr_spis] :< _b).
Notation "_a '.[e_vgic].[e_nr_spis]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_nr_spis _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_vgic_dist_base (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_vgic_dist_base] :< _b).
Notation "_a '.[e_vgic].[e_vgic_dist_base]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_vgic_dist_base _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_vgic_dist_9 (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_vgic_dist_9] :< _b).
Notation "_a '.[e_vgic].[e_vgic_dist_9]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_vgic_dist_9 _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_vgic_dist_9 _a ((_a.(e_vgic).(e_vgic_dist_9)).[e__vgic_cpu_base] :< _b).
Notation "_a '.[e_vgic].[e_vgic_dist_9].[e__vgic_cpu_base]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_next (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base _a ((_a.(e_vgic).(e_vgic_dist_9).(e__vgic_cpu_base)).[e_next] :< _b).
Notation "_a '.[e_vgic].[e_vgic_dist_9].[e__vgic_cpu_base].[e_next]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_next _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_prev (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base _a ((_a.(e_vgic).(e_vgic_dist_9).(e__vgic_cpu_base)).[e_prev] :< _b).
Notation "_a '.[e_vgic].[e_vgic_dist_9].[e__vgic_cpu_base].[e_prev]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_prev _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_enabled (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_enabled] :< _b).
Notation "_a '.[e_vgic].[e_enabled]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_enabled _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_spis (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_spis] :< _b).
Notation "_a '.[e_vgic].[e_spis]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_spis _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_dist_iodev] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_base_addr (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev _a ((_a.(e_vgic).(e_dist_iodev)).[e_base_addr] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_base_addr]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_base_addr _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_vgic_io_device_1 (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev _a ((_a.(e_vgic).(e_dist_iodev)).[e_vgic_io_device_1] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_vgic_io_device_1]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_vgic_io_device_1_e_redist_vcpu (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev_e_vgic_io_device_1 _a ((_a.(e_vgic).(e_dist_iodev).(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e__regions (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev _a ((_a.(e_vgic).(e_dist_iodev)).[e__regions] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e__regions]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e__regions _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_iodev_type (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev _a ((_a.(e_vgic).(e_dist_iodev)).[e_iodev_type] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_iodev_type]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_iodev_type _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_nr_regions (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev _a ((_a.(e_vgic).(e_dist_iodev)).[e_nr_regions] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_nr_regions]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_nr_regions _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_dev (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev _a ((_a.(e_vgic).(e_dist_iodev)).[e_dev] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_dev]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_dev _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_dist_iodev_e_dev_e_ops (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_dist_iodev_e_dev _a ((_a.(e_vgic).(e_dist_iodev).(e_dev)).[e_ops] :< _b).
Notation "_a '.[e_vgic].[e_dist_iodev].[e_dev].[e_ops]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_dist_iodev_e_dev_e_ops _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_has_its (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_has_its] :< _b).
Notation "_a '.[e_vgic].[e_has_its]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_has_its _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_propbaser (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_propbaser] :< _b).
Notation "_a '.[e_vgic].[e_propbaser]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_propbaser _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_lock (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_lpi_list_lock] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_lock]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_lock _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_list_lock _a ((_a.(e_vgic).(e_lpi_list_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_lock].[e_raw_lock]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock _a ((_a.(e_vgic).(e_lpi_list_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_vgic).(e_lpi_list_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_vgic).(e_lpi_list_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_head (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_lpi_list_head] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_head]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_head _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_head_e_next (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_list_head _a ((_a.(e_vgic).(e_lpi_list_head)).[e_next] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_head].[e_next]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_head_e_next _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_head_e_prev (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_list_head _a ((_a.(e_vgic).(e_lpi_list_head)).[e_prev] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_head].[e_prev]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_head_e_prev _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_list_count (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_lpi_list_count] :< _b).
Notation "_a '.[e_vgic].[e_lpi_list_count]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_list_count _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_translation_cache (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_lpi_translation_cache] :< _b).
Notation "_a '.[e_vgic].[e_lpi_translation_cache]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_translation_cache _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_translation_cache_e_next (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_translation_cache _a ((_a.(e_vgic).(e_lpi_translation_cache)).[e_next] :< _b).
Notation "_a '.[e_vgic].[e_lpi_translation_cache].[e_next]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_translation_cache_e_next _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_lpi_translation_cache_e_prev (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_lpi_translation_cache _a ((_a.(e_vgic).(e_lpi_translation_cache)).[e_prev] :< _b).
Notation "_a '.[e_vgic].[e_lpi_translation_cache].[e_prev]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_lpi_translation_cache_e_prev _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_iter (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_iter] :< _b).
Notation "_a '.[e_vgic].[e_iter]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_iter _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic _a ((_a.(e_vgic)).[e_its_vm] :< _b).
Notation "_a '.[e_vgic].[e_its_vm]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_fwnode (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_fwnode] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_fwnode]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_fwnode _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_domain (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_domain] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_domain]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_domain _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_vprop_page (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_vprop_page] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_vprop_page]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_vprop_page _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_vpes (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_vpes] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_vpes]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_vpes _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_nr_vpes (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_nr_vpes] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_nr_vpes]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_nr_vpes _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_db_lpi_base (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_db_lpi_base] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_db_lpi_base]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_db_lpi_base _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_db_bitmap (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_db_bitmap] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_db_bitmap]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_db_bitmap _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_nr_db_lpis (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_nr_db_lpis] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_nr_db_lpis]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_nr_db_lpis _a _b) (at level 1).

Definition update_s_kvm_arch_e_vgic_e_its_vm_e_vlpi_count (_a: s_kvm_arch) _b :=
  update_s_kvm_arch_e_vgic_e_its_vm _a ((_a.(e_vgic).(e_its_vm)).[e_vlpi_count] :< _b).
Notation "_a '.[e_vgic].[e_its_vm].[e_vlpi_count]' ':<' _b" := (update_s_kvm_arch_e_vgic_e_its_vm_e_vlpi_count _a _b) (at level 1).

Definition update_s_refcount_struct_e_refs_e_counter (_a: s_refcount_struct) _b :=
  update_s_refcount_struct_e_refs _a ((_a.(e_refs)).[e_counter] :< _b).
Notation "_a '.[e_refs].[e_counter]' ':<' _b" := (update_s_refcount_struct_e_refs_e_counter _a _b) (at level 1).

Definition update_s_mmu_notifier_e_hlist_e__next (_a: s_mmu_notifier) _b :=
  update_s_mmu_notifier_e_hlist _a ((_a.(e_hlist)).[e__next] :< _b).
Notation "_a '.[e_hlist].[e__next]' ':<' _b" := (update_s_mmu_notifier_e_hlist_e__next _a _b) (at level 1).

Definition update_s_mmu_notifier_e_hlist_e_pprev (_a: s_mmu_notifier) _b :=
  update_s_mmu_notifier_e_hlist _a ((_a.(e_hlist)).[e_pprev] :< _b).
Notation "_a '.[e_hlist].[e_pprev]' ':<' _b" := (update_s_mmu_notifier_e_hlist_e_pprev _a _b) (at level 1).

Definition update_s_mmu_notifier_e_rcu_e___next (_a: s_mmu_notifier) _b :=
  update_s_mmu_notifier_e_rcu _a ((_a.(e_rcu)).[e___next] :< _b).
Notation "_a '.[e_rcu].[e___next]' ':<' _b" := (update_s_mmu_notifier_e_rcu_e___next _a _b) (at level 1).

Definition update_s_mmu_notifier_e_rcu_e_func (_a: s_mmu_notifier) _b :=
  update_s_mmu_notifier_e_rcu _a ((_a.(e_rcu)).[e_func] :< _b).
Notation "_a '.[e_rcu].[e_func]' ':<' _b" := (update_s_mmu_notifier_e_rcu_e_func _a _b) (at level 1).

Definition update_s_srcu_node_e___lock_e_spinlock_0 (_a: s_srcu_node) _b :=
  update_s_srcu_node_e___lock _a ((_a.(e___lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e___lock].[e_spinlock_0]' ':<' _b" := (update_s_srcu_node_e___lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_srcu_node_e___lock_e_spinlock_0_e_rlock (_a: s_srcu_node) _b :=
  update_s_srcu_node_e___lock_e_spinlock_0 _a ((_a.(e___lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e___lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_srcu_node_e___lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_srcu_node) _b :=
  update_s_srcu_node_e___lock_e_spinlock_0_e_rlock _a ((_a.(e___lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e___lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_srcu_node) _b :=
  update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e___lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e___lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_srcu_node) _b :=
  update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e___lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e___lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_srcu_node) _b :=
  update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e___lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e___lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_srcu_node_e___lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock_e_spinlock_0 (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e____lock _a ((_a.(e____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e____lock].[e_spinlock_0]' ':<' _b" := (update_s_wait_queue_head_e____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e____lock_e_spinlock_0 _a ((_a.(e____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock _a ((_a.(e____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_wait_queue_head_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_wait_queue_head_e_head_e_next (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e_head _a ((_a.(e_head)).[e_next] :< _b).
Notation "_a '.[e_head].[e_next]' ':<' _b" := (update_s_wait_queue_head_e_head_e_next _a _b) (at level 1).

Definition update_s_wait_queue_head_e_head_e_prev (_a: s_wait_queue_head) _b :=
  update_s_wait_queue_head_e_head _a ((_a.(e_head)).[e_prev] :< _b).
Notation "_a '.[e_head].[e_prev]' ':<' _b" := (update_s_wait_queue_head_e_head_e_prev _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock (_a: s_completion) _b :=
  update_s_completion_e_wait _a ((_a.(e_wait)).[e____lock] :< _b).
Notation "_a '.[e_wait].[e____lock]' ':<' _b" := (update_s_completion_e_wait_e____lock _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock_e_spinlock_0 (_a: s_completion) _b :=
  update_s_completion_e_wait_e____lock _a ((_a.(e_wait).(e____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_wait].[e____lock].[e_spinlock_0]' ':<' _b" := (update_s_completion_e_wait_e____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock (_a: s_completion) _b :=
  update_s_completion_e_wait_e____lock_e_spinlock_0 _a ((_a.(e_wait).(e____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_wait].[e____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_completion) _b :=
  update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a ((_a.(e_wait).(e____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_completion) _b :=
  update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_completion) _b :=
  update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_completion) _b :=
  update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_completion_e_wait_e_head (_a: s_completion) _b :=
  update_s_completion_e_wait _a ((_a.(e_wait)).[e_head] :< _b).
Notation "_a '.[e_wait].[e_head]' ':<' _b" := (update_s_completion_e_wait_e_head _a _b) (at level 1).

Definition update_s_completion_e_wait_e_head_e_next (_a: s_completion) _b :=
  update_s_completion_e_wait_e_head _a ((_a.(e_wait).(e_head)).[e_next] :< _b).
Notation "_a '.[e_wait].[e_head].[e_next]' ':<' _b" := (update_s_completion_e_wait_e_head_e_next _a _b) (at level 1).

Definition update_s_completion_e_wait_e_head_e_prev (_a: s_completion) _b :=
  update_s_completion_e_wait_e_head _a ((_a.(e_wait).(e_head)).[e_prev] :< _b).
Notation "_a '.[e_wait].[e_head].[e_prev]' ':<' _b" := (update_s_completion_e_wait_e_head_e_prev _a _b) (at level 1).

Definition update_s_work_struct_e_data_e__counter (_a: s_work_struct) _b :=
  update_s_work_struct_e_data _a ((_a.(e_data)).[e__counter] :< _b).
Notation "_a '.[e_data].[e__counter]' ':<' _b" := (update_s_work_struct_e_data_e__counter _a _b) (at level 1).

Definition update_s_work_struct_e_entry_e_next (_a: s_work_struct) _b :=
  update_s_work_struct_e_entry _a ((_a.(e_entry)).[e_next] :< _b).
Notation "_a '.[e_entry].[e_next]' ':<' _b" := (update_s_work_struct_e_entry_e_next _a _b) (at level 1).

Definition update_s_work_struct_e_entry_e_prev (_a: s_work_struct) _b :=
  update_s_work_struct_e_entry _a ((_a.(e_entry)).[e_prev] :< _b).
Notation "_a '.[e_entry].[e_prev]' ':<' _b" := (update_s_work_struct_e_entry_e_prev _a _b) (at level 1).

Definition update_s_timer_list_e__entry_e__next (_a: s_timer_list) _b :=
  update_s_timer_list_e__entry _a ((_a.(e__entry)).[e__next] :< _b).
Notation "_a '.[e__entry].[e__next]' ':<' _b" := (update_s_timer_list_e__entry_e__next _a _b) (at level 1).

Definition update_s_timer_list_e__entry_e_pprev (_a: s_timer_list) _b :=
  update_s_timer_list_e__entry _a ((_a.(e__entry)).[e_pprev] :< _b).
Notation "_a '.[e__entry].[e_pprev]' ':<' _b" := (update_s_timer_list_e__entry_e_pprev _a _b) (at level 1).

Definition update_s_delayed_work_e_work_e_data (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_work _a ((_a.(e_work)).[e_data] :< _b).
Notation "_a '.[e_work].[e_data]' ':<' _b" := (update_s_delayed_work_e_work_e_data _a _b) (at level 1).

Definition update_s_delayed_work_e_work_e_data_e__counter (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_work_e_data _a ((_a.(e_work).(e_data)).[e__counter] :< _b).
Notation "_a '.[e_work].[e_data].[e__counter]' ':<' _b" := (update_s_delayed_work_e_work_e_data_e__counter _a _b) (at level 1).

Definition update_s_delayed_work_e_work_e_entry (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_work _a ((_a.(e_work)).[e_entry] :< _b).
Notation "_a '.[e_work].[e_entry]' ':<' _b" := (update_s_delayed_work_e_work_e_entry _a _b) (at level 1).

Definition update_s_delayed_work_e_work_e_entry_e_next (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_work_e_entry _a ((_a.(e_work).(e_entry)).[e_next] :< _b).
Notation "_a '.[e_work].[e_entry].[e_next]' ':<' _b" := (update_s_delayed_work_e_work_e_entry_e_next _a _b) (at level 1).

Definition update_s_delayed_work_e_work_e_entry_e_prev (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_work_e_entry _a ((_a.(e_work).(e_entry)).[e_prev] :< _b).
Notation "_a '.[e_work].[e_entry].[e_prev]' ':<' _b" := (update_s_delayed_work_e_work_e_entry_e_prev _a _b) (at level 1).

Definition update_s_delayed_work_e_work_e__func (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_work _a ((_a.(e_work)).[e__func] :< _b).
Notation "_a '.[e_work].[e__func]' ':<' _b" := (update_s_delayed_work_e_work_e__func _a _b) (at level 1).

Definition update_s_delayed_work_e_timer_e__entry (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_timer _a ((_a.(e_timer)).[e__entry] :< _b).
Notation "_a '.[e_timer].[e__entry]' ':<' _b" := (update_s_delayed_work_e_timer_e__entry _a _b) (at level 1).

Definition update_s_delayed_work_e_timer_e__entry_e__next (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_timer_e__entry _a ((_a.(e_timer).(e__entry)).[e__next] :< _b).
Notation "_a '.[e_timer].[e__entry].[e__next]' ':<' _b" := (update_s_delayed_work_e_timer_e__entry_e__next _a _b) (at level 1).

Definition update_s_delayed_work_e_timer_e__entry_e_pprev (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_timer_e__entry _a ((_a.(e_timer).(e__entry)).[e_pprev] :< _b).
Notation "_a '.[e_timer].[e__entry].[e_pprev]' ':<' _b" := (update_s_delayed_work_e_timer_e__entry_e_pprev _a _b) (at level 1).

Definition update_s_delayed_work_e_timer_e_expires (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_timer _a ((_a.(e_timer)).[e_expires] :< _b).
Notation "_a '.[e_timer].[e_expires]' ':<' _b" := (update_s_delayed_work_e_timer_e_expires _a _b) (at level 1).

Definition update_s_delayed_work_e_timer_e_function (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_timer _a ((_a.(e_timer)).[e_function] :< _b).
Notation "_a '.[e_timer].[e_function]' ':<' _b" := (update_s_delayed_work_e_timer_e_function _a _b) (at level 1).

Definition update_s_delayed_work_e_timer_e___flags (_a: s_delayed_work) _b :=
  update_s_delayed_work_e_timer _a ((_a.(e_timer)).[e___flags] :< _b).
Notation "_a '.[e_timer].[e___flags]' ':<' _b" := (update_s_delayed_work_e_timer_e___flags _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_owner (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex _a ((_a.(e_srcu_cb_mutex)).[e_owner] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_owner]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_owner _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_owner_e__counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_owner _a ((_a.(e_srcu_cb_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex _a ((_a.(e_srcu_cb_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock _a ((_a.(e_srcu_cb_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_osq (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex _a ((_a.(e_srcu_cb_mutex)).[e_osq] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_osq]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_osq _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_osq_e_tail (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_osq _a ((_a.(e_srcu_cb_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_osq_e_tail_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_osq_e_tail _a ((_a.(e_srcu_cb_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex _a ((_a.(e_srcu_cb_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_list]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list_e_next (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list _a ((_a.(e_srcu_cb_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list_e_prev (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list _a ((_a.(e_srcu_cb_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_srcu_cb_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_srcu_struct_e_srcu_cb_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock_e_spinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_____lock _a ((_a.(e_____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_____lock].[e_spinlock_0]' ':<' _b" := (update_s_srcu_struct_e_____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_____lock_e_spinlock_0 _a ((_a.(e_____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock _a ((_a.(e_____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_owner (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex _a ((_a.(e_srcu_gp_mutex)).[e_owner] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_owner]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_owner _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_owner_e__counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_owner _a ((_a.(e_srcu_gp_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex _a ((_a.(e_srcu_gp_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock _a ((_a.(e_srcu_gp_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_osq (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex _a ((_a.(e_srcu_gp_mutex)).[e_osq] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_osq]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_osq _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_osq_e_tail (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_osq _a ((_a.(e_srcu_gp_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_osq_e_tail_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_osq_e_tail _a ((_a.(e_srcu_gp_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex _a ((_a.(e_srcu_gp_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_list]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list_e_next (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list _a ((_a.(e_srcu_gp_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list_e_prev (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list _a ((_a.(e_srcu_gp_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_srcu_gp_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_srcu_struct_e_srcu_gp_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_owner (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex _a ((_a.(e_srcu_barrier_mutex)).[e_owner] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_owner]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_owner _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_owner_e__counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_owner _a ((_a.(e_srcu_barrier_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex _a ((_a.(e_srcu_barrier_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock _a ((_a.(e_srcu_barrier_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_osq (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex _a ((_a.(e_srcu_barrier_mutex)).[e_osq] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_osq]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_osq _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_osq_e_tail (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_osq _a ((_a.(e_srcu_barrier_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_osq_e_tail_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_osq_e_tail _a ((_a.(e_srcu_barrier_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex _a ((_a.(e_srcu_barrier_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_list]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list_e_next (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list _a ((_a.(e_srcu_barrier_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list_e_prev (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list _a ((_a.(e_srcu_barrier_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_srcu_barrier_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_done (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion _a ((_a.(e_srcu_barrier_completion)).[e_done] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_done]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_done _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion _a ((_a.(e_srcu_barrier_completion)).[e_wait] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait _a ((_a.(e_srcu_barrier_completion).(e_wait)).[e____lock] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock _a ((_a.(e_srcu_barrier_completion).(e_wait).(e____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 _a ((_a.(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait _a ((_a.(e_srcu_barrier_completion).(e_wait)).[e_head] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e_head]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head_e_next (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head _a ((_a.(e_srcu_barrier_completion).(e_wait).(e_head)).[e_next] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e_head].[e_next]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head_e_next _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head_e_prev (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head _a ((_a.(e_srcu_barrier_completion).(e_wait).(e_head)).[e_prev] :< _b).
Notation "_a '.[e_srcu_barrier_completion].[e_wait].[e_head].[e_prev]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_completion_e_wait_e_head_e_prev _a _b) (at level 1).

Definition update_s_srcu_struct_e_srcu_barrier_cpu_cnt_e_counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e_srcu_barrier_cpu_cnt _a ((_a.(e_srcu_barrier_cpu_cnt)).[e_counter] :< _b).
Notation "_a '.[e_srcu_barrier_cpu_cnt].[e_counter]' ':<' _b" := (update_s_srcu_struct_e_srcu_barrier_cpu_cnt_e_counter _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work _a ((_a.(e__work)).[e_work] :< _b).
Notation "_a '.[e__work].[e_work]' ':<' _b" := (update_s_srcu_struct_e__work_e_work _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work_e_data (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_work _a ((_a.(e__work).(e_work)).[e_data] :< _b).
Notation "_a '.[e__work].[e_work].[e_data]' ':<' _b" := (update_s_srcu_struct_e__work_e_work_e_data _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work_e_data_e__counter (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_work_e_data _a ((_a.(e__work).(e_work).(e_data)).[e__counter] :< _b).
Notation "_a '.[e__work].[e_work].[e_data].[e__counter]' ':<' _b" := (update_s_srcu_struct_e__work_e_work_e_data_e__counter _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work_e_entry (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_work _a ((_a.(e__work).(e_work)).[e_entry] :< _b).
Notation "_a '.[e__work].[e_work].[e_entry]' ':<' _b" := (update_s_srcu_struct_e__work_e_work_e_entry _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work_e_entry_e_next (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_work_e_entry _a ((_a.(e__work).(e_work).(e_entry)).[e_next] :< _b).
Notation "_a '.[e__work].[e_work].[e_entry].[e_next]' ':<' _b" := (update_s_srcu_struct_e__work_e_work_e_entry_e_next _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work_e_entry_e_prev (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_work_e_entry _a ((_a.(e__work).(e_work).(e_entry)).[e_prev] :< _b).
Notation "_a '.[e__work].[e_work].[e_entry].[e_prev]' ':<' _b" := (update_s_srcu_struct_e__work_e_work_e_entry_e_prev _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_work_e__func (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_work _a ((_a.(e__work).(e_work)).[e__func] :< _b).
Notation "_a '.[e__work].[e_work].[e__func]' ':<' _b" := (update_s_srcu_struct_e__work_e_work_e__func _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work _a ((_a.(e__work)).[e_timer] :< _b).
Notation "_a '.[e__work].[e_timer]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer_e__entry (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_timer _a ((_a.(e__work).(e_timer)).[e__entry] :< _b).
Notation "_a '.[e__work].[e_timer].[e__entry]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer_e__entry _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer_e__entry_e__next (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_timer_e__entry _a ((_a.(e__work).(e_timer).(e__entry)).[e__next] :< _b).
Notation "_a '.[e__work].[e_timer].[e__entry].[e__next]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer_e__entry_e__next _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer_e__entry_e_pprev (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_timer_e__entry _a ((_a.(e__work).(e_timer).(e__entry)).[e_pprev] :< _b).
Notation "_a '.[e__work].[e_timer].[e__entry].[e_pprev]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer_e__entry_e_pprev _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer_e_expires (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_timer _a ((_a.(e__work).(e_timer)).[e_expires] :< _b).
Notation "_a '.[e__work].[e_timer].[e_expires]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer_e_expires _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer_e_function (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_timer _a ((_a.(e__work).(e_timer)).[e_function] :< _b).
Notation "_a '.[e__work].[e_timer].[e_function]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer_e_function _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_timer_e___flags (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work_e_timer _a ((_a.(e__work).(e_timer)).[e___flags] :< _b).
Notation "_a '.[e__work].[e_timer].[e___flags]' ':<' _b" := (update_s_srcu_struct_e__work_e_timer_e___flags _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_wq (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work _a ((_a.(e__work)).[e_wq] :< _b).
Notation "_a '.[e__work].[e_wq]' ':<' _b" := (update_s_srcu_struct_e__work_e_wq _a _b) (at level 1).

Definition update_s_srcu_struct_e__work_e_cpu (_a: s_srcu_struct) _b :=
  update_s_srcu_struct_e__work _a ((_a.(e__work)).[e_cpu] :< _b).
Notation "_a '.[e__work].[e_cpu]' ':<' _b" := (update_s_srcu_struct_e__work_e_cpu _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_lock _a ((_a.(e_mmu_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_mmu_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_mmu_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_lock_e_spinlock_0 _a ((_a.(e_mmu_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_mmu_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock _a ((_a.(e_mmu_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_mmu_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_mmu_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_mmu_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_mmu_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_mmu_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_mmu_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_mmu_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_mmu_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock _a ((_a.(e_slots_lock)).[e_owner] :< _b).
Notation "_a '.[e_slots_lock].[e_owner]' ':<' _b" := (update_s_kvm_e_slots_lock_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_owner _a ((_a.(e_slots_lock).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_slots_lock].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_slots_lock_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock _a ((_a.(e_slots_lock)).[e_wait_lock] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_lock _a ((_a.(e_slots_lock).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0 _a ((_a.(e_slots_lock).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_slots_lock).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_slots_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_slots_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_slots_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock _a ((_a.(e_slots_lock)).[e_osq] :< _b).
Notation "_a '.[e_slots_lock].[e_osq]' ':<' _b" := (update_s_kvm_e_slots_lock_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_osq _a ((_a.(e_slots_lock).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_slots_lock].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_slots_lock_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_osq_e_tail _a ((_a.(e_slots_lock).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_slots_lock].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_slots_lock_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock _a ((_a.(e_slots_lock)).[e_wait_list] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_list]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_list _a ((_a.(e_slots_lock).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_slots_lock_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_slots_lock_e_wait_list _a ((_a.(e_slots_lock).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_slots_lock].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_slots_lock_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_online_vcpus_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_online_vcpus _a ((_a.(e_online_vcpus)).[e_counter] :< _b).
Notation "_a '.[e_online_vcpus].[e_counter]' ':<' _b" := (update_s_kvm_e_online_vcpus_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_vm_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_vm_list _a ((_a.(e_vm_list)).[e_next] :< _b).
Notation "_a '.[e_vm_list].[e_next]' ':<' _b" := (update_s_kvm_e_vm_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_vm_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_vm_list _a ((_a.(e_vm_list)).[e_prev] :< _b).
Notation "_a '.[e_vm_list].[e_prev]' ':<' _b" := (update_s_kvm_e_vm_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e______lock _a ((_a.(e______lock)).[e_owner] :< _b).
Notation "_a '.[e______lock].[e_owner]' ':<' _b" := (update_s_kvm_e______lock_e_owner _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_owner _a ((_a.(e______lock).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e______lock].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e______lock_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e______lock _a ((_a.(e______lock)).[e_wait_lock] :< _b).
Notation "_a '.[e______lock].[e_wait_lock]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_lock _a ((_a.(e______lock).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e______lock].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_lock_e_spinlock_0 _a ((_a.(e______lock).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e______lock].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e______lock).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e______lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e______lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e______lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e______lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e______lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e______lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e______lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e______lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e______lock _a ((_a.(e______lock)).[e_osq] :< _b).
Notation "_a '.[e______lock].[e_osq]' ':<' _b" := (update_s_kvm_e______lock_e_osq _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_osq _a ((_a.(e______lock).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e______lock].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e______lock_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_osq_e_tail _a ((_a.(e______lock).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e______lock].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e______lock_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e______lock _a ((_a.(e______lock)).[e_wait_list] :< _b).
Notation "_a '.[e______lock].[e_wait_list]' ':<' _b" := (update_s_kvm_e______lock_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_list _a ((_a.(e______lock).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e______lock].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e______lock_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e______lock_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e______lock_e_wait_list _a ((_a.(e______lock).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e______lock].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e______lock_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds _a ((_a.(e_irqfds)).[e__lock] :< _b).
Notation "_a '.[e_irqfds].[e__lock]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e__lock _a ((_a.(e_irqfds).(e__lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irqfds].[e__lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e__lock_e_spinlock_0 _a ((_a.(e_irqfds).(e__lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irqfds].[e__lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock _a ((_a.(e_irqfds).(e__lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irqfds].[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irqfds).(e__lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irqfds].[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irqfds).(e__lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irqfds].[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irqfds).(e__lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irqfds].[e__lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irqfds_e__lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_items (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds _a ((_a.(e_irqfds)).[e_items] :< _b).
Notation "_a '.[e_irqfds].[e_items]' ':<' _b" := (update_s_kvm_e_irqfds_e_items _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_items_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_items _a ((_a.(e_irqfds).(e_items)).[e_next] :< _b).
Notation "_a '.[e_irqfds].[e_items].[e_next]' ':<' _b" := (update_s_kvm_e_irqfds_e_items_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_items_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_items _a ((_a.(e_irqfds).(e_items)).[e_prev] :< _b).
Notation "_a '.[e_irqfds].[e_items].[e_prev]' ':<' _b" := (update_s_kvm_e_irqfds_e_items_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_list (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds _a ((_a.(e_irqfds)).[e_resampler_list] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_list]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_list _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_list _a ((_a.(e_irqfds).(e_resampler_list)).[e_next] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_list].[e_next]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_list _a ((_a.(e_irqfds).(e_resampler_list)).[e_prev] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_list].[e_prev]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds _a ((_a.(e_irqfds)).[e_resampler_lock] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock _a ((_a.(e_irqfds).(e_resampler_lock)).[e_owner] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_owner]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_owner _a ((_a.(e_irqfds).(e_resampler_lock).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock _a ((_a.(e_irqfds).(e_resampler_lock)).[e_wait_lock] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0 _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock _a ((_a.(e_irqfds).(e_resampler_lock)).[e_osq] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_osq]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_osq _a ((_a.(e_irqfds).(e_resampler_lock).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_osq_e_tail _a ((_a.(e_irqfds).(e_resampler_lock).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock _a ((_a.(e_irqfds).(e_resampler_lock)).[e_wait_list] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_list]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list _a ((_a.(e_irqfds).(e_resampler_lock).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_irqfds].[e_resampler_lock].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_irqfds_e_resampler_lock_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_ioeventfds_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_ioeventfds _a ((_a.(e_ioeventfds)).[e_next] :< _b).
Notation "_a '.[e_ioeventfds].[e_next]' ':<' _b" := (update_s_kvm_e_ioeventfds_e_next _a _b) (at level 1).

Definition update_s_kvm_e_ioeventfds_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_ioeventfds _a ((_a.(e_ioeventfds)).[e_prev] :< _b).
Notation "_a '.[e_ioeventfds].[e_prev]' ':<' _b" := (update_s_kvm_e_ioeventfds_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_stat_e_remote_tlb_flush (_a: s_kvm) _b :=
  update_s_kvm_e_stat _a ((_a.(e_stat)).[e_remote_tlb_flush] :< _b).
Notation "_a '.[e_stat].[e_remote_tlb_flush]' ':<' _b" := (update_s_kvm_e_stat_e_remote_tlb_flush _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_______vmid (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_______vmid] :< _b).
Notation "_a '.[e__arch].[e_______vmid]' ':<' _b" := (update_s_kvm_e__arch_e_______vmid _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_______vmid_e_vmid_gen (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_______vmid _a ((_a.(e__arch).(e_______vmid)).[e_vmid_gen] :< _b).
Notation "_a '.[e__arch].[e_______vmid].[e_vmid_gen]' ':<' _b" := (update_s_kvm_e__arch_e_______vmid_e_vmid_gen _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_______vmid_e______vmid (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_______vmid _a ((_a.(e__arch).(e_______vmid)).[e______vmid] :< _b).
Notation "_a '.[e__arch].[e_______vmid].[e______vmid]' ':<' _b" := (update_s_kvm_e__arch_e_______vmid_e______vmid _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_pgd (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_pgd] :< _b).
Notation "_a '.[e__arch].[e_pgd]' ':<' _b" := (update_s_kvm_e__arch_e_pgd _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_pgd_phys (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_pgd_phys] :< _b).
Notation "_a '.[e__arch].[e_pgd_phys]' ':<' _b" := (update_s_kvm_e__arch_e_pgd_phys _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vtcr (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_vtcr] :< _b).
Notation "_a '.[e__arch].[e_vtcr]' ':<' _b" := (update_s_kvm_e__arch_e_vtcr _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_last_vcpu_ran (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_last_vcpu_ran] :< _b).
Notation "_a '.[e__arch].[e_last_vcpu_ran]' ':<' _b" := (update_s_kvm_e__arch_e_last_vcpu_ran _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_max_vcpus (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_max_vcpus] :< _b).
Notation "_a '.[e__arch].[e_max_vcpus]' ':<' _b" := (update_s_kvm_e__arch_e_max_vcpus _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_vgic] :< _b).
Notation "_a '.[e__arch].[e_vgic]' ':<' _b" := (update_s_kvm_e__arch_e_vgic _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_in_kernel (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_in_kernel] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_in_kernel]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_in_kernel _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_ready (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_ready] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_ready]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_ready _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_initialized (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_initialized] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_initialized]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_initialized _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_vgic_model (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_vgic_model] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_vgic_model]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_vgic_model _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_implementation_rev (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_implementation_rev] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_implementation_rev]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_implementation_rev _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_v2_groups_user_writable (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_v2_groups_user_writable] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_v2_groups_user_writable]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_v2_groups_user_writable _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_msis_require_devid (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_msis_require_devid] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_msis_require_devid]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_msis_require_devid _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_nr_spis (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_nr_spis] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_nr_spis]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_nr_spis _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_vgic_dist_base (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_vgic_dist_base] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_vgic_dist_base]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_vgic_dist_base _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_vgic_dist_9 (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_vgic_dist_9] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_vgic_dist_9]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_vgic_dist_9 _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_vgic_dist_9 _a ((_a.(e__arch).(e_vgic).(e_vgic_dist_9)).[e__vgic_cpu_base] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_vgic_dist_9].[e__vgic_cpu_base]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_next (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base _a ((_a.(e__arch).(e_vgic).(e_vgic_dist_9).(e__vgic_cpu_base)).[e_next] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_vgic_dist_9].[e__vgic_cpu_base].[e_next]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_next _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base _a ((_a.(e__arch).(e_vgic).(e_vgic_dist_9).(e__vgic_cpu_base)).[e_prev] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_vgic_dist_9].[e__vgic_cpu_base].[e_prev]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_vgic_dist_9_e__vgic_cpu_base_e_prev _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_enabled (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_enabled] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_enabled]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_enabled _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_spis (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_spis] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_spis]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_spis _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_dist_iodev] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_base_addr (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev)).[e_base_addr] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_base_addr]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_base_addr _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_vgic_io_device_1 (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev)).[e_vgic_io_device_1] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_vgic_io_device_1]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_vgic_io_device_1_e_redist_vcpu (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_vgic_io_device_1 _a ((_a.(e__arch).(e_vgic).(e_dist_iodev).(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e__regions (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev)).[e__regions] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e__regions]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e__regions _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_iodev_type (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev)).[e_iodev_type] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_iodev_type]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_iodev_type _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_nr_regions (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev)).[e_nr_regions] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_nr_regions]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_nr_regions _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_dev (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev)).[e_dev] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_dev]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_dev _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_dev_e_ops (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_dev _a ((_a.(e__arch).(e_vgic).(e_dist_iodev).(e_dev)).[e_ops] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_dist_iodev].[e_dev].[e_ops]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_dist_iodev_e_dev_e_ops _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_has_its (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_has_its] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_has_its]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_has_its _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_propbaser (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_propbaser] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_propbaser]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_propbaser _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_lock (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_lpi_list_lock] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_lock]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_lock _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_list_lock _a ((_a.(e__arch).(e_vgic).(e_lpi_list_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_lock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock _a ((_a.(e__arch).(e_vgic).(e_lpi_list_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e__arch).(e_vgic).(e_lpi_list_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e__arch).(e_vgic).(e_lpi_list_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_head (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_lpi_list_head] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_head]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_head _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_head_e_next (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_list_head _a ((_a.(e__arch).(e_vgic).(e_lpi_list_head)).[e_next] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_head].[e_next]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_head_e_next _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_head_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_list_head _a ((_a.(e__arch).(e_vgic).(e_lpi_list_head)).[e_prev] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_head].[e_prev]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_head_e_prev _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_list_count (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_lpi_list_count] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_list_count]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_list_count _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_lpi_translation_cache] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_translation_cache]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache_e_next (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache _a ((_a.(e__arch).(e_vgic).(e_lpi_translation_cache)).[e_next] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_translation_cache].[e_next]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache_e_next _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache _a ((_a.(e__arch).(e_vgic).(e_lpi_translation_cache)).[e_prev] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_lpi_translation_cache].[e_prev]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_lpi_translation_cache_e_prev _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_iter (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_iter] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_iter]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_iter _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic _a ((_a.(e__arch).(e_vgic)).[e_its_vm] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_fwnode (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_fwnode] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_fwnode]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_fwnode _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_domain (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_domain] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_domain]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_domain _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_vprop_page (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_vprop_page] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_vprop_page]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_vprop_page _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_vpes (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_vpes] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_vpes]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_vpes _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_nr_vpes (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_nr_vpes] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_nr_vpes]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_nr_vpes _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_db_lpi_base (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_db_lpi_base] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_db_lpi_base]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_db_lpi_base _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_db_bitmap (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_db_bitmap] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_db_bitmap]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_db_bitmap _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_nr_db_lpis (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_nr_db_lpis] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_nr_db_lpis]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_nr_db_lpis _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_vgic_e_its_vm_e_vlpi_count (_a: s_kvm) _b :=
  update_s_kvm_e__arch_e_vgic_e_its_vm _a ((_a.(e__arch).(e_vgic).(e_its_vm)).[e_vlpi_count] :< _b).
Notation "_a '.[e__arch].[e_vgic].[e_its_vm].[e_vlpi_count]' ':<' _b" := (update_s_kvm_e__arch_e_vgic_e_its_vm_e_vlpi_count _a _b) (at level 1).

Definition update_s_kvm_e__arch_e_psci_version (_a: s_kvm) _b :=
  update_s_kvm_e__arch _a ((_a.(e__arch)).[e_psci_version] :< _b).
Notation "_a '.[e__arch].[e_psci_version]' ':<' _b" := (update_s_kvm_e__arch_e_psci_version _a _b) (at level 1).

Definition update_s_kvm_e_users_count_e_refs (_a: s_kvm) _b :=
  update_s_kvm_e_users_count _a ((_a.(e_users_count)).[e_refs] :< _b).
Notation "_a '.[e_users_count].[e_refs]' ':<' _b" := (update_s_kvm_e_users_count_e_refs _a _b) (at level 1).

Definition update_s_kvm_e_users_count_e_refs_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_users_count_e_refs _a ((_a.(e_users_count).(e_refs)).[e_counter] :< _b).
Notation "_a '.[e_users_count].[e_refs].[e_counter]' ':<' _b" := (update_s_kvm_e_users_count_e_refs_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_ring_lock _a ((_a.(e_ring_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_ring_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_ring_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_ring_lock_e_spinlock_0 _a ((_a.(e_ring_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_ring_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock _a ((_a.(e_ring_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_ring_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_ring_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_ring_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_ring_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_ring_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_ring_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_ring_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_ring_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_coalesced_zones_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_coalesced_zones _a ((_a.(e_coalesced_zones)).[e_next] :< _b).
Notation "_a '.[e_coalesced_zones].[e_next]' ':<' _b" := (update_s_kvm_e_coalesced_zones_e_next _a _b) (at level 1).

Definition update_s_kvm_e_coalesced_zones_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_coalesced_zones _a ((_a.(e_coalesced_zones)).[e_prev] :< _b).
Notation "_a '.[e_coalesced_zones].[e_prev]' ':<' _b" := (update_s_kvm_e_coalesced_zones_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock _a ((_a.(e_irq_lock)).[e_owner] :< _b).
Notation "_a '.[e_irq_lock].[e_owner]' ':<' _b" := (update_s_kvm_e_irq_lock_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_owner _a ((_a.(e_irq_lock).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_irq_lock].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_irq_lock_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock _a ((_a.(e_irq_lock)).[e_wait_lock] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_lock _a ((_a.(e_irq_lock).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0 _a ((_a.(e_irq_lock).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_irq_lock).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irq_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irq_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irq_lock).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock _a ((_a.(e_irq_lock)).[e_osq] :< _b).
Notation "_a '.[e_irq_lock].[e_osq]' ':<' _b" := (update_s_kvm_e_irq_lock_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_osq _a ((_a.(e_irq_lock).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_irq_lock].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_irq_lock_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_osq_e_tail _a ((_a.(e_irq_lock).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_irq_lock].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_lock_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock _a ((_a.(e_irq_lock)).[e_wait_list] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_list]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_list _a ((_a.(e_irq_lock).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irq_lock_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_lock_e_wait_list _a ((_a.(e_irq_lock).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_irq_lock].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_irq_lock_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_ack_notifier_list_e_first (_a: s_kvm) _b :=
  update_s_kvm_e_irq_ack_notifier_list _a ((_a.(e_irq_ack_notifier_list)).[e_first] :< _b).
Notation "_a '.[e_irq_ack_notifier_list].[e_first]' ':<' _b" := (update_s_kvm_e_irq_ack_notifier_list_e_first _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_hlist (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier _a ((_a.(e_mmu_notifier)).[e_hlist] :< _b).
Notation "_a '.[e_mmu_notifier].[e_hlist]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_hlist _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_hlist_e__next (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier_e_hlist _a ((_a.(e_mmu_notifier).(e_hlist)).[e__next] :< _b).
Notation "_a '.[e_mmu_notifier].[e_hlist].[e__next]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_hlist_e__next _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_hlist_e_pprev (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier_e_hlist _a ((_a.(e_mmu_notifier).(e_hlist)).[e_pprev] :< _b).
Notation "_a '.[e_mmu_notifier].[e_hlist].[e_pprev]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_hlist_e_pprev _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e__ops (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier _a ((_a.(e_mmu_notifier)).[e__ops] :< _b).
Notation "_a '.[e_mmu_notifier].[e__ops]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e__ops _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_mm (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier _a ((_a.(e_mmu_notifier)).[e_mm] :< _b).
Notation "_a '.[e_mmu_notifier].[e_mm]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_mm _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_rcu (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier _a ((_a.(e_mmu_notifier)).[e_rcu] :< _b).
Notation "_a '.[e_mmu_notifier].[e_rcu]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_rcu _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_rcu_e___next (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier_e_rcu _a ((_a.(e_mmu_notifier).(e_rcu)).[e___next] :< _b).
Notation "_a '.[e_mmu_notifier].[e_rcu].[e___next]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_rcu_e___next _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_rcu_e_func (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier_e_rcu _a ((_a.(e_mmu_notifier).(e_rcu)).[e_func] :< _b).
Notation "_a '.[e_mmu_notifier].[e_rcu].[e_func]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_rcu_e_func _a _b) (at level 1).

Definition update_s_kvm_e_mmu_notifier_e_users (_a: s_kvm) _b :=
  update_s_kvm_e_mmu_notifier _a ((_a.(e_mmu_notifier)).[e_users] :< _b).
Notation "_a '.[e_mmu_notifier].[e_users]' ':<' _b" := (update_s_kvm_e_mmu_notifier_e_users _a _b) (at level 1).

Definition update_s_kvm_e_devices_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_devices _a ((_a.(e_devices)).[e_next] :< _b).
Notation "_a '.[e_devices].[e_next]' ':<' _b" := (update_s_kvm_e_devices_e_next _a _b) (at level 1).

Definition update_s_kvm_e_devices_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_devices _a ((_a.(e_devices)).[e_prev] :< _b).
Notation "_a '.[e_devices].[e_prev]' ':<' _b" := (update_s_kvm_e_devices_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_node (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_node] :< _b).
Notation "_a '.[e_srcu].[e_node]' ':<' _b" := (update_s_kvm_e_srcu_e_node _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_level (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_level] :< _b).
Notation "_a '.[e_srcu].[e_level]' ':<' _b" := (update_s_kvm_e_srcu_e_level _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_cb_mutex] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex _a ((_a.(e_srcu).(e_srcu_cb_mutex)).[e_owner] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_owner]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_owner _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex _a ((_a.(e_srcu).(e_srcu_cb_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex _a ((_a.(e_srcu).(e_srcu_cb_mutex)).[e_osq] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_osq]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq_e_tail _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex _a ((_a.(e_srcu).(e_srcu_cb_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list _a ((_a.(e_srcu).(e_srcu_cb_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_srcu].[e_srcu_cb_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_cb_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_____lock] :< _b).
Notation "_a '.[e_srcu].[e_____lock]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_____lock _a ((_a.(e_srcu).(e_____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_____lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_____lock_e_spinlock_0 _a ((_a.(e_srcu).(e_____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu].[e_____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu).(e_____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu).(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu).(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu).(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_gp_mutex] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex _a ((_a.(e_srcu).(e_srcu_gp_mutex)).[e_owner] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_owner]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_owner _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex _a ((_a.(e_srcu).(e_srcu_gp_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex _a ((_a.(e_srcu).(e_srcu_gp_mutex)).[e_osq] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_osq]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq_e_tail _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex _a ((_a.(e_srcu).(e_srcu_gp_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list _a ((_a.(e_srcu).(e_srcu_gp_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_idx (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_idx] :< _b).
Notation "_a '.[e_srcu].[e_srcu_idx]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_idx _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_seq (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_gp_seq] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_seq]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_seq _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_gp_seq_needed (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_gp_seq_needed] :< _b).
Notation "_a '.[e_srcu].[e_srcu_gp_seq_needed]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_gp_seq_needed _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__srcu_gp_seq_needed_exp (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e__srcu_gp_seq_needed_exp] :< _b).
Notation "_a '.[e_srcu].[e__srcu_gp_seq_needed_exp]' ':<' _b" := (update_s_kvm_e_srcu_e__srcu_gp_seq_needed_exp _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_last_gp_end (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_last_gp_end] :< _b).
Notation "_a '.[e_srcu].[e_srcu_last_gp_end]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_last_gp_end _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_sda (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_sda] :< _b).
Notation "_a '.[e_srcu].[e_sda]' ':<' _b" := (update_s_kvm_e_srcu_e_sda _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_seq (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_barrier_seq] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_seq]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_seq _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_barrier_mutex] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex _a ((_a.(e_srcu).(e_srcu_barrier_mutex)).[e_owner] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_owner]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_owner _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex _a ((_a.(e_srcu).(e_srcu_barrier_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex _a ((_a.(e_srcu).(e_srcu_barrier_mutex)).[e_osq] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_osq]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq_e_tail _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex _a ((_a.(e_srcu).(e_srcu_barrier_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list _a ((_a.(e_srcu).(e_srcu_barrier_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_barrier_completion] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_done (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion _a ((_a.(e_srcu).(e_srcu_barrier_completion)).[e_done] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_done]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_done _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion _a ((_a.(e_srcu).(e_srcu_barrier_completion)).[e_wait] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait)).[e____lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait)).[e_head] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e_head]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e_head)).[e_next] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e_head].[e_next]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head_e_next _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head _a ((_a.(e_srcu).(e_srcu_barrier_completion).(e_wait).(e_head)).[e_prev] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_completion].[e_wait].[e_head].[e_prev]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_completion_e_wait_e_head_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_cpu_cnt (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e_srcu_barrier_cpu_cnt] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_cpu_cnt]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_cpu_cnt _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e_srcu_barrier_cpu_cnt_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e_srcu_barrier_cpu_cnt _a ((_a.(e_srcu).(e_srcu_barrier_cpu_cnt)).[e_counter] :< _b).
Notation "_a '.[e_srcu].[e_srcu_barrier_cpu_cnt].[e_counter]' ':<' _b" := (update_s_kvm_e_srcu_e_srcu_barrier_cpu_cnt_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work (_a: s_kvm) _b :=
  update_s_kvm_e_srcu _a ((_a.(e_srcu)).[e__work] :< _b).
Notation "_a '.[e_srcu].[e__work]' ':<' _b" := (update_s_kvm_e_srcu_e__work _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work _a ((_a.(e_srcu).(e__work)).[e_work] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work_e_data (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_work _a ((_a.(e_srcu).(e__work).(e_work)).[e_data] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work].[e_data]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work_e_data _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work_e_data_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_work_e_data _a ((_a.(e_srcu).(e__work).(e_work).(e_data)).[e__counter] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work].[e_data].[e__counter]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work_e_data_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work_e_entry (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_work _a ((_a.(e_srcu).(e__work).(e_work)).[e_entry] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work].[e_entry]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work_e_entry _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work_e_entry_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_work_e_entry _a ((_a.(e_srcu).(e__work).(e_work).(e_entry)).[e_next] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work].[e_entry].[e_next]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work_e_entry_e_next _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work_e_entry_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_work_e_entry _a ((_a.(e_srcu).(e__work).(e_work).(e_entry)).[e_prev] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work].[e_entry].[e_prev]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work_e_entry_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_work_e__func (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_work _a ((_a.(e_srcu).(e__work).(e_work)).[e__func] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_work].[e__func]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_work_e__func _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work _a ((_a.(e_srcu).(e__work)).[e_timer] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer_e__entry (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_timer _a ((_a.(e_srcu).(e__work).(e_timer)).[e__entry] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer].[e__entry]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer_e__entry _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer_e__entry_e__next (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_timer_e__entry _a ((_a.(e_srcu).(e__work).(e_timer).(e__entry)).[e__next] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer].[e__entry].[e__next]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer_e__entry_e__next _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer_e__entry_e_pprev (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_timer_e__entry _a ((_a.(e_srcu).(e__work).(e_timer).(e__entry)).[e_pprev] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer].[e__entry].[e_pprev]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer_e__entry_e_pprev _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer_e_expires (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_timer _a ((_a.(e_srcu).(e__work).(e_timer)).[e_expires] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer].[e_expires]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer_e_expires _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer_e_function (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_timer _a ((_a.(e_srcu).(e__work).(e_timer)).[e_function] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer].[e_function]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer_e_function _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_timer_e___flags (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work_e_timer _a ((_a.(e_srcu).(e__work).(e_timer)).[e___flags] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_timer].[e___flags]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_timer_e___flags _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_wq (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work _a ((_a.(e_srcu).(e__work)).[e_wq] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_wq]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_wq _a _b) (at level 1).

Definition update_s_kvm_e_srcu_e__work_e_cpu (_a: s_kvm) _b :=
  update_s_kvm_e_srcu_e__work _a ((_a.(e_srcu).(e__work)).[e_cpu] :< _b).
Notation "_a '.[e_srcu].[e__work].[e_cpu]' ':<' _b" := (update_s_kvm_e_srcu_e__work_e_cpu _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_node (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_node] :< _b).
Notation "_a '.[e_irq_srcu].[e_node]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_node _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_level (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_level] :< _b).
Notation "_a '.[e_irq_srcu].[e_level]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_level _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_cb_mutex] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex)).[e_owner] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_owner]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_owner _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex)).[e_osq] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_osq]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq_e_tail _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list _a ((_a.(e_irq_srcu).(e_srcu_cb_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_cb_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_cb_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_____lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_____lock _a ((_a.(e_irq_srcu).(e_____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0 _a ((_a.(e_irq_srcu).(e_____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock _a ((_a.(e_irq_srcu).(e_____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irq_srcu).(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irq_srcu).(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irq_srcu).(e_____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_gp_mutex] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex)).[e_owner] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_owner]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_owner _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex)).[e_osq] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_osq]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq_e_tail _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list _a ((_a.(e_irq_srcu).(e_srcu_gp_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_idx (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_idx] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_idx]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_idx _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_seq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_gp_seq] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_seq]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_seq _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_gp_seq_needed (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_gp_seq_needed] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_gp_seq_needed]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_gp_seq_needed _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__srcu_gp_seq_needed_exp (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e__srcu_gp_seq_needed_exp] :< _b).
Notation "_a '.[e_irq_srcu].[e__srcu_gp_seq_needed_exp]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__srcu_gp_seq_needed_exp _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_last_gp_end (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_last_gp_end] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_last_gp_end]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_last_gp_end _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_sda (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_sda] :< _b).
Notation "_a '.[e_irq_srcu].[e_sda]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_sda _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_seq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_barrier_seq] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_seq]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_seq _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_barrier_mutex] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_owner (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex)).[e_owner] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_owner]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_owner_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_owner _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex)).[e_osq] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_osq]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq_e_tail (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq_e_tail_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq_e_tail _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list _a ((_a.(e_irq_srcu).(e_srcu_barrier_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_barrier_completion] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_done (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion)).[e_done] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_done]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_done _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion)).[e_wait] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait)).[e____lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e____lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e____lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e____lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait)).[e_head] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e_head]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e_head)).[e_next] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e_head].[e_next]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head _a ((_a.(e_irq_srcu).(e_srcu_barrier_completion).(e_wait).(e_head)).[e_prev] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_completion].[e_wait].[e_head].[e_prev]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_completion_e_wait_e_head_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_cpu_cnt (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e_srcu_barrier_cpu_cnt] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_cpu_cnt]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_cpu_cnt _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e_srcu_barrier_cpu_cnt_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e_srcu_barrier_cpu_cnt _a ((_a.(e_irq_srcu).(e_srcu_barrier_cpu_cnt)).[e_counter] :< _b).
Notation "_a '.[e_irq_srcu].[e_srcu_barrier_cpu_cnt].[e_counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e_srcu_barrier_cpu_cnt_e_counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu _a ((_a.(e_irq_srcu)).[e__work] :< _b).
Notation "_a '.[e_irq_srcu].[e__work]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work _a ((_a.(e_irq_srcu).(e__work)).[e_work] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work_e_data (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_work _a ((_a.(e_irq_srcu).(e__work).(e_work)).[e_data] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work].[e_data]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work_e_data _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work_e_data_e__counter (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_work_e_data _a ((_a.(e_irq_srcu).(e__work).(e_work).(e_data)).[e__counter] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work].[e_data].[e__counter]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work_e_data_e__counter _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work_e_entry (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_work _a ((_a.(e_irq_srcu).(e__work).(e_work)).[e_entry] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work].[e_entry]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work_e_entry _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work_e_entry_e_next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_work_e_entry _a ((_a.(e_irq_srcu).(e__work).(e_work).(e_entry)).[e_next] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work].[e_entry].[e_next]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work_e_entry_e_next _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work_e_entry_e_prev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_work_e_entry _a ((_a.(e_irq_srcu).(e__work).(e_work).(e_entry)).[e_prev] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work].[e_entry].[e_prev]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work_e_entry_e_prev _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_work_e__func (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_work _a ((_a.(e_irq_srcu).(e__work).(e_work)).[e__func] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_work].[e__func]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_work_e__func _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work _a ((_a.(e_irq_srcu).(e__work)).[e_timer] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_timer _a ((_a.(e_irq_srcu).(e__work).(e_timer)).[e__entry] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer].[e__entry]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry_e__next (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry _a ((_a.(e_irq_srcu).(e__work).(e_timer).(e__entry)).[e__next] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer].[e__entry].[e__next]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry_e__next _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry_e_pprev (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry _a ((_a.(e_irq_srcu).(e__work).(e_timer).(e__entry)).[e_pprev] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer].[e__entry].[e_pprev]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer_e__entry_e_pprev _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer_e_expires (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_timer _a ((_a.(e_irq_srcu).(e__work).(e_timer)).[e_expires] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer].[e_expires]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer_e_expires _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer_e_function (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_timer _a ((_a.(e_irq_srcu).(e__work).(e_timer)).[e_function] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer].[e_function]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer_e_function _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_timer_e___flags (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work_e_timer _a ((_a.(e_irq_srcu).(e__work).(e_timer)).[e___flags] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_timer].[e___flags]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_timer_e___flags _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_wq (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work _a ((_a.(e_irq_srcu).(e__work)).[e_wq] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_wq]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_wq _a _b) (at level 1).

Definition update_s_kvm_e_irq_srcu_e__work_e_cpu (_a: s_kvm) _b :=
  update_s_kvm_e_irq_srcu_e__work _a ((_a.(e_irq_srcu).(e__work)).[e_cpu] :< _b).
Notation "_a '.[e_irq_srcu].[e__work].[e_cpu]' ':<' _b" := (update_s_kvm_e_irq_srcu_e__work_e_cpu _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock_e_spinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_hypsec_lock _a ((_a.(e_hypsec_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_hypsec_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_e_hypsec_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock (_a: s_kvm) _b :=
  update_s_kvm_e_hypsec_lock_e_spinlock_0 _a ((_a.(e_hypsec_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_hypsec_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm) _b :=
  update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock _a ((_a.(e_hypsec_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_hypsec_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm) _b :=
  update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_hypsec_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_hypsec_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm) _b :=
  update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_hypsec_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_hypsec_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm) _b :=
  update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_hypsec_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_hypsec_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_e_hypsec_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_preempt_notifier_e_link_e__next (_a: s_preempt_notifier) _b :=
  update_s_preempt_notifier_e_link _a ((_a.(e_link)).[e__next] :< _b).
Notation "_a '.[e_link].[e__next]' ':<' _b" := (update_s_preempt_notifier_e_link_e__next _a _b) (at level 1).

Definition update_s_preempt_notifier_e_link_e_pprev (_a: s_preempt_notifier) _b :=
  update_s_preempt_notifier_e_link _a ((_a.(e_link)).[e_pprev] :< _b).
Notation "_a '.[e_link].[e_pprev]' ':<' _b" := (update_s_preempt_notifier_e_link_e_pprev _a _b) (at level 1).

Definition update_s_swait_queue_head_e_______lock_e_raw_lock (_a: s_swait_queue_head) _b :=
  update_s_swait_queue_head_e_______lock _a ((_a.(e_______lock)).[e_raw_lock] :< _b).
Notation "_a '.[e_______lock].[e_raw_lock]' ':<' _b" := (update_s_swait_queue_head_e_______lock_e_raw_lock _a _b) (at level 1).

Definition update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0 (_a: s_swait_queue_head) _b :=
  update_s_swait_queue_head_e_______lock_e_raw_lock _a ((_a.(e_______lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_______lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_swait_queue_head) _b :=
  update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_______lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_______lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_swait_queue_head) _b :=
  update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_______lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_______lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_swait_queue_head_e_______lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_swait_queue_head_e_task_list_e_next (_a: s_swait_queue_head) _b :=
  update_s_swait_queue_head_e_task_list _a ((_a.(e_task_list)).[e_next] :< _b).
Notation "_a '.[e_task_list].[e_next]' ':<' _b" := (update_s_swait_queue_head_e_task_list_e_next _a _b) (at level 1).

Definition update_s_swait_queue_head_e_task_list_e_prev (_a: s_swait_queue_head) _b :=
  update_s_swait_queue_head_e_task_list _a ((_a.(e_task_list)).[e_prev] :< _b).
Notation "_a '.[e_task_list].[e_prev]' ':<' _b" := (update_s_swait_queue_head_e_task_list_e_prev _a _b) (at level 1).

Definition update_s_anon_118_e____regs_e_dbg_bcr (_a: s_anon_118) _b :=
  update_s_anon_118_e____regs _a ((_a.(e____regs)).[e_dbg_bcr] :< _b).
Notation "_a '.[e____regs].[e_dbg_bcr]' ':<' _b" := (update_s_anon_118_e____regs_e_dbg_bcr _a _b) (at level 1).

Definition update_s_anon_118_e____regs_e_dbg_bvr (_a: s_anon_118) _b :=
  update_s_anon_118_e____regs _a ((_a.(e____regs)).[e_dbg_bvr] :< _b).
Notation "_a '.[e____regs].[e_dbg_bvr]' ':<' _b" := (update_s_anon_118_e____regs_e_dbg_bvr _a _b) (at level 1).

Definition update_s_anon_118_e____regs_e_dbg_wcr (_a: s_anon_118) _b :=
  update_s_anon_118_e____regs _a ((_a.(e____regs)).[e_dbg_wcr] :< _b).
Notation "_a '.[e____regs].[e_dbg_wcr]' ':<' _b" := (update_s_anon_118_e____regs_e_dbg_wcr _a _b) (at level 1).

Definition update_s_anon_118_e____regs_e_dbg_wvr (_a: s_anon_118) _b :=
  update_s_anon_118_e____regs _a ((_a.(e____regs)).[e_dbg_wvr] :< _b).
Notation "_a '.[e____regs].[e_dbg_wvr]' ':<' _b" := (update_s_anon_118_e____regs_e_dbg_wvr _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_vpt_page (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_vpt_page] :< _b).
Notation "_a '.[e_its_vpe].[e_vpt_page]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_vpt_page _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e__its_vm (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e__its_vm] :< _b).
Notation "_a '.[e_its_vpe].[e__its_vm]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e__its_vm _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_irq (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_irq] :< _b).
Notation "_a '.[e_its_vpe].[e_irq]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_irq _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_vpe_db_lpi (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_vpe_db_lpi] :< _b).
Notation "_a '.[e_its_vpe].[e_vpe_db_lpi]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_vpe_db_lpi _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_vpe_proxy_event (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_vpe_proxy_event] :< _b).
Notation "_a '.[e_its_vpe].[e_vpe_proxy_event]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_vpe_proxy_event _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_col_idx (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_col_idx] :< _b).
Notation "_a '.[e_its_vpe].[e_col_idx]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_col_idx _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_vpe_id (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_vpe_id] :< _b).
Notation "_a '.[e_its_vpe].[e_vpe_id]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_vpe_id _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_idai (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_idai] :< _b).
Notation "_a '.[e_its_vpe].[e_idai]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_idai _a _b) (at level 1).

Definition update_s_vgic_v3_cpu_if_e_its_vpe_e_pending_last (_a: s_vgic_v3_cpu_if) _b :=
  update_s_vgic_v3_cpu_if_e_its_vpe _a ((_a.(e_its_vpe)).[e_pending_last] :< _b).
Notation "_a '.[e_its_vpe].[e_pending_last]' ':<' _b" := (update_s_vgic_v3_cpu_if_e_its_vpe_e_pending_last _a _b) (at level 1).

Definition update_u_anon_119_e__e_vgic_hcr (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_vgic_hcr] :< _b).
Notation "_a '.[e_].[e_vgic_hcr]' ':<' _b" := (update_u_anon_119_e__e_vgic_hcr _a _b) (at level 1).

Definition update_u_anon_119_e__e_vgic_vmcr (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_vgic_vmcr] :< _b).
Notation "_a '.[e_].[e_vgic_vmcr]' ':<' _b" := (update_u_anon_119_e__e_vgic_vmcr _a _b) (at level 1).

Definition update_u_anon_119_e__e_vgic_sre (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_vgic_sre] :< _b).
Notation "_a '.[e_].[e_vgic_sre]' ':<' _b" := (update_u_anon_119_e__e_vgic_sre _a _b) (at level 1).

Definition update_u_anon_119_e__e_vgic_ap0r (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_vgic_ap0r] :< _b).
Notation "_a '.[e_].[e_vgic_ap0r]' ':<' _b" := (update_u_anon_119_e__e_vgic_ap0r _a _b) (at level 1).

Definition update_u_anon_119_e__e_vgic_ap1r (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_vgic_ap1r] :< _b).
Notation "_a '.[e_].[e_vgic_ap1r]' ':<' _b" := (update_u_anon_119_e__e_vgic_ap1r _a _b) (at level 1).

Definition update_u_anon_119_e__e_vgic_lr (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_vgic_lr] :< _b).
Notation "_a '.[e_].[e_vgic_lr]' ':<' _b" := (update_u_anon_119_e__e_vgic_lr _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe (_a: u_anon_119) _b :=
  update_u_anon_119_e_ _a ((_a.(e_)).[e_its_vpe] :< _b).
Notation "_a '.[e_].[e_its_vpe]' ':<' _b" := (update_u_anon_119_e__e_its_vpe _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_vpt_page (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_vpt_page] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_vpt_page]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_vpt_page _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e__its_vm (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e__its_vm] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e__its_vm]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e__its_vm _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_irq (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_irq] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_irq]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_irq _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_vpe_db_lpi (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_vpe_db_lpi] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_vpe_db_lpi]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_vpe_db_lpi _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_vpe_proxy_event (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_vpe_proxy_event] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_vpe_proxy_event]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_vpe_proxy_event _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_col_idx (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_col_idx] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_col_idx]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_col_idx _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_vpe_id (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_vpe_id] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_vpe_id]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_vpe_id _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_idai (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_idai] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_idai]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_idai _a _b) (at level 1).

Definition update_u_anon_119_e__e_its_vpe_e_pending_last (_a: u_anon_119) _b :=
  update_u_anon_119_e__e_its_vpe _a ((_a.(e_).(e_its_vpe)).[e_pending_last] :< _b).
Notation "_a '.[e_].[e_its_vpe].[e_pending_last]' ':<' _b" := (update_u_anon_119_e__e_its_vpe_e_pending_last _a _b) (at level 1).

Definition update_s_kref_e_refcount_e_refs (_a: s_kref) _b :=
  update_s_kref_e_refcount _a ((_a.(e_refcount)).[e_refs] :< _b).
Notation "_a '.[e_refcount].[e_refs]' ':<' _b" := (update_s_kref_e_refcount_e_refs _a _b) (at level 1).

Definition update_s_kref_e_refcount_e_refs_e_counter (_a: s_kref) _b :=
  update_s_kref_e_refcount_e_refs _a ((_a.(e_refcount).(e_refs)).[e_counter] :< _b).
Notation "_a '.[e_refcount].[e_refs].[e_counter]' ':<' _b" := (update_s_kref_e_refcount_e_refs_e_counter _a _b) (at level 1).

Definition update_s_vgic_irq_e__irq_lock_e_raw_lock (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__irq_lock _a ((_a.(e__irq_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e__irq_lock].[e_raw_lock]' ':<' _b" := (update_s_vgic_irq_e__irq_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0 (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__irq_lock_e_raw_lock _a ((_a.(e__irq_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e__irq_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e__irq_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e__irq_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e__irq_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e__irq_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_vgic_irq_e__irq_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_vgic_irq_e_lpi_list_e_next (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e_lpi_list _a ((_a.(e_lpi_list)).[e_next] :< _b).
Notation "_a '.[e_lpi_list].[e_next]' ':<' _b" := (update_s_vgic_irq_e_lpi_list_e_next _a _b) (at level 1).

Definition update_s_vgic_irq_e_lpi_list_e_prev (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e_lpi_list _a ((_a.(e_lpi_list)).[e_prev] :< _b).
Notation "_a '.[e_lpi_list].[e_prev]' ':<' _b" := (update_s_vgic_irq_e_lpi_list_e_prev _a _b) (at level 1).

Definition update_s_vgic_irq_e_ap_list_e_next (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e_ap_list _a ((_a.(e_ap_list)).[e_next] :< _b).
Notation "_a '.[e_ap_list].[e_next]' ':<' _b" := (update_s_vgic_irq_e_ap_list_e_next _a _b) (at level 1).

Definition update_s_vgic_irq_e_ap_list_e_prev (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e_ap_list _a ((_a.(e_ap_list)).[e_prev] :< _b).
Notation "_a '.[e_ap_list].[e_prev]' ':<' _b" := (update_s_vgic_irq_e_ap_list_e_prev _a _b) (at level 1).

Definition update_s_vgic_irq_e__refcount_e_refcount (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__refcount _a ((_a.(e__refcount)).[e_refcount] :< _b).
Notation "_a '.[e__refcount].[e_refcount]' ':<' _b" := (update_s_vgic_irq_e__refcount_e_refcount _a _b) (at level 1).

Definition update_s_vgic_irq_e__refcount_e_refcount_e_refs (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__refcount_e_refcount _a ((_a.(e__refcount).(e_refcount)).[e_refs] :< _b).
Notation "_a '.[e__refcount].[e_refcount].[e_refs]' ':<' _b" := (update_s_vgic_irq_e__refcount_e_refcount_e_refs _a _b) (at level 1).

Definition update_s_vgic_irq_e__refcount_e_refcount_e_refs_e_counter (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e__refcount_e_refcount_e_refs _a ((_a.(e__refcount).(e_refcount).(e_refs)).[e_counter] :< _b).
Notation "_a '.[e__refcount].[e_refcount].[e_refs].[e_counter]' ':<' _b" := (update_s_vgic_irq_e__refcount_e_refcount_e_refs_e_counter _a _b) (at level 1).

Definition update_s_vgic_irq_e_vgic_irq_14_e_targets (_a: s_vgic_irq) _b :=
  update_s_vgic_irq_e_vgic_irq_14 _a ((_a.(e_vgic_irq_14)).[e_targets] :< _b).
Notation "_a '.[e_vgic_irq_14].[e_targets]' ':<' _b" := (update_s_vgic_irq_e_vgic_irq_14_e_targets _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e_ (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0 _a ((_a.(e_vgic_cpu_0)).[e_] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e_ _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_hcr (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_vgic_hcr] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_vgic_hcr]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_hcr _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_vmcr (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_vgic_vmcr] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_vgic_vmcr]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_vmcr _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_sre (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_vgic_sre] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_vgic_sre]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_sre _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap0r (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_vgic_ap0r] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_vgic_ap0r]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap0r _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap1r (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_vgic_ap1r] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_vgic_ap1r]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap1r _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_lr (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_vgic_lr] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_vgic_lr]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_vgic_lr _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu_0).(e_)).[e_its_vpe] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpt_page (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpt_page] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpt_page]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpt_page _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e__its_vm (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e__its_vm] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e__its_vm]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e__its_vm _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_irq (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_irq] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_irq]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_irq _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_db_lpi (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_db_lpi] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_db_lpi]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_db_lpi _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_proxy_event (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_proxy_event] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_proxy_event]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_proxy_event _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_col_idx (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_col_idx] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_col_idx]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_col_idx _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_id (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_id] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_id]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_id _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_idai (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_idai] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_idai]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_idai _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_pending_last (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_pending_last] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e_].[e_its_vpe].[e_pending_last]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_pending_last _a _b) (at level 1).

Definition update_s_vgic_cpu_e_vgic_cpu_0_e__ (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_vgic_cpu_0 _a ((_a.(e_vgic_cpu_0)).[e__] :< _b).
Notation "_a '.[e_vgic_cpu_0].[e__]' ':<' _b" := (update_s_vgic_cpu_e_vgic_cpu_0_e__ _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_lock_e_raw_lock (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_ap_list_lock _a ((_a.(e_ap_list_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e_ap_list_lock].[e_raw_lock]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_ap_list_lock_e_raw_lock _a ((_a.(e_ap_list_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_ap_list_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_ap_list_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_head_e_next (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_ap_list_head _a ((_a.(e_ap_list_head)).[e_next] :< _b).
Notation "_a '.[e_ap_list_head].[e_next]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_head_e_next _a _b) (at level 1).

Definition update_s_vgic_cpu_e_ap_list_head_e_prev (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_ap_list_head _a ((_a.(e_ap_list_head)).[e_prev] :< _b).
Notation "_a '.[e_ap_list_head].[e_prev]' ':<' _b" := (update_s_vgic_cpu_e_ap_list_head_e_prev _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_base_addr (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev _a ((_a.(e_rd_iodev)).[e_base_addr] :< _b).
Notation "_a '.[e_rd_iodev].[e_base_addr]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_base_addr _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev _a ((_a.(e_rd_iodev)).[e_vgic_io_device_1] :< _b).
Notation "_a '.[e_rd_iodev].[e_vgic_io_device_1]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_vgic_io_device_1_e_redist_vcpu (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 _a ((_a.(e_rd_iodev).(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e_rd_iodev].[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e__regions (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev _a ((_a.(e_rd_iodev)).[e__regions] :< _b).
Notation "_a '.[e_rd_iodev].[e__regions]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e__regions _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_iodev_type (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev _a ((_a.(e_rd_iodev)).[e_iodev_type] :< _b).
Notation "_a '.[e_rd_iodev].[e_iodev_type]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_iodev_type _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_nr_regions (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev _a ((_a.(e_rd_iodev)).[e_nr_regions] :< _b).
Notation "_a '.[e_rd_iodev].[e_nr_regions]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_nr_regions _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_dev (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev _a ((_a.(e_rd_iodev)).[e_dev] :< _b).
Notation "_a '.[e_rd_iodev].[e_dev]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_dev _a _b) (at level 1).

Definition update_s_vgic_cpu_e_rd_iodev_e_dev_e_ops (_a: s_vgic_cpu) _b :=
  update_s_vgic_cpu_e_rd_iodev_e_dev _a ((_a.(e_rd_iodev).(e_dev)).[e_ops] :< _b).
Notation "_a '.[e_rd_iodev].[e_dev].[e_ops]' ':<' _b" := (update_s_vgic_cpu_e_rd_iodev_e_dev_e_ops _a _b) (at level 1).

Definition update_s_kvm_irq_level_e_kvm_irq_level_0_e__irq (_a: s_kvm_irq_level) _b :=
  update_s_kvm_irq_level_e_kvm_irq_level_0 _a ((_a.(e_kvm_irq_level_0)).[e__irq] :< _b).
Notation "_a '.[e_kvm_irq_level_0].[e__irq]' ':<' _b" := (update_s_kvm_irq_level_e_kvm_irq_level_0_e__irq _a _b) (at level 1).

Definition update_s_timerqueue_node_e__node_e___rb_parent_color (_a: s_timerqueue_node) _b :=
  update_s_timerqueue_node_e__node _a ((_a.(e__node)).[e___rb_parent_color] :< _b).
Notation "_a '.[e__node].[e___rb_parent_color]' ':<' _b" := (update_s_timerqueue_node_e__node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_timerqueue_node_e__node_e_rb_right (_a: s_timerqueue_node) _b :=
  update_s_timerqueue_node_e__node _a ((_a.(e__node)).[e_rb_right] :< _b).
Notation "_a '.[e__node].[e_rb_right]' ':<' _b" := (update_s_timerqueue_node_e__node_e_rb_right _a _b) (at level 1).

Definition update_s_timerqueue_node_e__node_e_rb_left (_a: s_timerqueue_node) _b :=
  update_s_timerqueue_node_e__node _a ((_a.(e__node)).[e_rb_left] :< _b).
Notation "_a '.[e__node].[e_rb_left]' ':<' _b" := (update_s_timerqueue_node_e__node_e_rb_left _a _b) (at level 1).

Definition update_s_hrtimer_e___node_e__node (_a: s_hrtimer) _b :=
  update_s_hrtimer_e___node _a ((_a.(e___node)).[e__node] :< _b).
Notation "_a '.[e___node].[e__node]' ':<' _b" := (update_s_hrtimer_e___node_e__node _a _b) (at level 1).

Definition update_s_hrtimer_e___node_e__node_e___rb_parent_color (_a: s_hrtimer) _b :=
  update_s_hrtimer_e___node_e__node _a ((_a.(e___node).(e__node)).[e___rb_parent_color] :< _b).
Notation "_a '.[e___node].[e__node].[e___rb_parent_color]' ':<' _b" := (update_s_hrtimer_e___node_e__node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_hrtimer_e___node_e__node_e_rb_right (_a: s_hrtimer) _b :=
  update_s_hrtimer_e___node_e__node _a ((_a.(e___node).(e__node)).[e_rb_right] :< _b).
Notation "_a '.[e___node].[e__node].[e_rb_right]' ':<' _b" := (update_s_hrtimer_e___node_e__node_e_rb_right _a _b) (at level 1).

Definition update_s_hrtimer_e___node_e__node_e_rb_left (_a: s_hrtimer) _b :=
  update_s_hrtimer_e___node_e__node _a ((_a.(e___node).(e__node)).[e_rb_left] :< _b).
Notation "_a '.[e___node].[e__node].[e_rb_left]' ':<' _b" := (update_s_hrtimer_e___node_e__node_e_rb_left _a _b) (at level 1).

Definition update_s_hrtimer_e___node_e__expires (_a: s_hrtimer) _b :=
  update_s_hrtimer_e___node _a ((_a.(e___node)).[e__expires] :< _b).
Notation "_a '.[e___node].[e__expires]' ':<' _b" := (update_s_hrtimer_e___node_e__expires _a _b) (at level 1).

Definition update_s_arch_timer_context_e___irq_e_kvm_irq_level_0 (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e___irq _a ((_a.(e___irq)).[e_kvm_irq_level_0] :< _b).
Notation "_a '.[e___irq].[e_kvm_irq_level_0]' ':<' _b" := (update_s_arch_timer_context_e___irq_e_kvm_irq_level_0 _a _b) (at level 1).

Definition update_s_arch_timer_context_e___irq_e_kvm_irq_level_0_e__irq (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e___irq_e_kvm_irq_level_0 _a ((_a.(e___irq).(e_kvm_irq_level_0)).[e__irq] :< _b).
Notation "_a '.[e___irq].[e_kvm_irq_level_0].[e__irq]' ':<' _b" := (update_s_arch_timer_context_e___irq_e_kvm_irq_level_0_e__irq _a _b) (at level 1).

Definition update_s_arch_timer_context_e___irq_e___level (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e___irq _a ((_a.(e___irq)).[e___level] :< _b).
Notation "_a '.[e___irq].[e___level]' ':<' _b" := (update_s_arch_timer_context_e___irq_e___level _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___node (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e___node] :< _b).
Notation "_a '.[e_hrtimer].[e___node]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___node _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___node_e__node (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer_e___node _a ((_a.(e_hrtimer).(e___node)).[e__node] :< _b).
Notation "_a '.[e_hrtimer].[e___node].[e__node]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___node_e__node _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___node_e__node_e___rb_parent_color (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer_e___node_e__node _a ((_a.(e_hrtimer).(e___node).(e__node)).[e___rb_parent_color] :< _b).
Notation "_a '.[e_hrtimer].[e___node].[e__node].[e___rb_parent_color]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___node_e__node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___node_e__node_e_rb_right (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer_e___node_e__node _a ((_a.(e_hrtimer).(e___node).(e__node)).[e_rb_right] :< _b).
Notation "_a '.[e_hrtimer].[e___node].[e__node].[e_rb_right]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___node_e__node_e_rb_right _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___node_e__node_e_rb_left (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer_e___node_e__node _a ((_a.(e_hrtimer).(e___node).(e__node)).[e_rb_left] :< _b).
Notation "_a '.[e_hrtimer].[e___node].[e__node].[e_rb_left]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___node_e__node_e_rb_left _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___node_e__expires (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer_e___node _a ((_a.(e_hrtimer).(e___node)).[e__expires] :< _b).
Notation "_a '.[e_hrtimer].[e___node].[e__expires]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___node_e__expires _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e__softexpires (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e__softexpires] :< _b).
Notation "_a '.[e_hrtimer].[e__softexpires]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e__softexpires _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e__function (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e__function] :< _b).
Notation "_a '.[e_hrtimer].[e__function]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e__function _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e__base (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e__base] :< _b).
Notation "_a '.[e_hrtimer].[e__base]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e__base _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e___state (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e___state] :< _b).
Notation "_a '.[e_hrtimer].[e___state]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e___state _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e_is_rel (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e_is_rel] :< _b).
Notation "_a '.[e_hrtimer].[e_is_rel]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e_is_rel _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e_is_soft (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e_is_soft] :< _b).
Notation "_a '.[e_hrtimer].[e_is_soft]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e_is_soft _a _b) (at level 1).

Definition update_s_arch_timer_context_e_hrtimer_e_is_hard (_a: s_arch_timer_context) _b :=
  update_s_arch_timer_context_e_hrtimer _a ((_a.(e_hrtimer)).[e_is_hard] :< _b).
Notation "_a '.[e_hrtimer].[e_is_hard]' ':<' _b" := (update_s_arch_timer_context_e_hrtimer_e_is_hard _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___node (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e___node] :< _b).
Notation "_a '.[e_bg_timer].[e___node]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___node _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___node_e__node (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer_e___node _a ((_a.(e_bg_timer).(e___node)).[e__node] :< _b).
Notation "_a '.[e_bg_timer].[e___node].[e__node]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___node_e__node _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___node_e__node_e___rb_parent_color (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e_bg_timer).(e___node).(e__node)).[e___rb_parent_color] :< _b).
Notation "_a '.[e_bg_timer].[e___node].[e__node].[e___rb_parent_color]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___node_e__node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___node_e__node_e_rb_right (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e_bg_timer).(e___node).(e__node)).[e_rb_right] :< _b).
Notation "_a '.[e_bg_timer].[e___node].[e__node].[e_rb_right]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___node_e__node_e_rb_right _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___node_e__node_e_rb_left (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e_bg_timer).(e___node).(e__node)).[e_rb_left] :< _b).
Notation "_a '.[e_bg_timer].[e___node].[e__node].[e_rb_left]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___node_e__node_e_rb_left _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___node_e__expires (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer_e___node _a ((_a.(e_bg_timer).(e___node)).[e__expires] :< _b).
Notation "_a '.[e_bg_timer].[e___node].[e__expires]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___node_e__expires _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e__softexpires (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e__softexpires] :< _b).
Notation "_a '.[e_bg_timer].[e__softexpires]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e__softexpires _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e__function (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e__function] :< _b).
Notation "_a '.[e_bg_timer].[e__function]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e__function _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e__base (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e__base] :< _b).
Notation "_a '.[e_bg_timer].[e__base]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e__base _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e___state (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e___state] :< _b).
Notation "_a '.[e_bg_timer].[e___state]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e___state _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e_is_rel (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e_is_rel] :< _b).
Notation "_a '.[e_bg_timer].[e_is_rel]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e_is_rel _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e_is_soft (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e_is_soft] :< _b).
Notation "_a '.[e_bg_timer].[e_is_soft]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e_is_soft _a _b) (at level 1).

Definition update_s_arch_timer_cpu_e_bg_timer_e_is_hard (_a: s_arch_timer_cpu) _b :=
  update_s_arch_timer_cpu_e_bg_timer _a ((_a.(e_bg_timer)).[e_is_hard] :< _b).
Notation "_a '.[e_bg_timer].[e_is_hard]' ':<' _b" := (update_s_arch_timer_cpu_e_bg_timer_e_is_hard _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result_e_pfn (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_walk_result _a ((_a.(e_walk_result)).[e_pfn] :< _b).
Notation "_a '.[e_walk_result].[e_pfn]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result_e_pfn _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result_e_output (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_walk_result _a ((_a.(e_walk_result)).[e_output] :< _b).
Notation "_a '.[e_walk_result].[e_output]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result_e_output _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result_e_writable (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_walk_result _a ((_a.(e_walk_result)).[e_writable] :< _b).
Notation "_a '.[e_walk_result].[e_writable]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result_e_writable _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result_e_readable (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_walk_result _a ((_a.(e_walk_result)).[e_readable] :< _b).
Notation "_a '.[e_walk_result].[e_readable]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result_e_readable _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result_e__level (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_walk_result _a ((_a.(e_walk_result)).[e__level] :< _b).
Notation "_a '.[e_walk_result].[e__level]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result_e__level _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_walk_result_e_desc (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_walk_result _a ((_a.(e_walk_result)).[e_desc] :< _b).
Notation "_a '.[e_walk_result].[e_desc]' ':<' _b" := (update_s_kvm_vcpu_arch_e_walk_result_e_desc _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt _a ((_a.(e_ctxt)).[e_gp_regs] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs _a ((_a.(e_ctxt).(e_gp_regs)).[e___regs] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e___regs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e__regs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e_ctxt).(e_gp_regs).(e___regs)).[e__regs] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e___regs].[e__regs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e__regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e_sp (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e_ctxt).(e_gp_regs).(e___regs)).[e_sp] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e___regs].[e_sp]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e_sp _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e_pc (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e_ctxt).(e_gp_regs).(e___regs)).[e_pc] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e___regs].[e_pc]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e_pc _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e_pstate (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e_ctxt).(e_gp_regs).(e___regs)).[e_pstate] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e___regs].[e_pstate]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e___regs_e_pstate _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e_sp_el1 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs _a ((_a.(e_ctxt).(e_gp_regs)).[e_sp_el1] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e_sp_el1]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e_sp_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e_elr_el1 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs _a ((_a.(e_ctxt).(e_gp_regs)).[e_elr_el1] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e_elr_el1]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e_elr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e_spsr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs _a ((_a.(e_ctxt).(e_gp_regs)).[e_spsr] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e_spsr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e_spsr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs _a ((_a.(e_ctxt).(e_gp_regs)).[e__fp_regs] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e__fp_regs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e_vregs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_ctxt).(e_gp_regs).(e__fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e__fp_regs].[e_vregs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e_vregs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpsr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_ctxt).(e_gp_regs).(e__fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e__fp_regs].[e_fpsr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpsr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_ctxt).(e_gp_regs).(e__fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e__fp_regs].[e_fpcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e___reserved (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e_ctxt).(e_gp_regs).(e__fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e_ctxt].[e_gp_regs].[e__fp_regs].[e___reserved]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e_gp_regs_e__fp_regs_e___reserved _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e__sys_regs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt _a ((_a.(e_ctxt)).[e__sys_regs] :< _b).
Notation "_a '.[e_ctxt].[e__sys_regs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e__sys_regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_ctxt_e___hyp_running_vcpu (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_ctxt _a ((_a.(e_ctxt)).[e___hyp_running_vcpu] :< _b).
Notation "_a '.[e_ctxt].[e___hyp_running_vcpu]' ':<' _b" := (update_s_kvm_vcpu_arch_e_ctxt_e___hyp_running_vcpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_fault_e_esr_el2 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_fault _a ((_a.(e_fault)).[e_esr_el2] :< _b).
Notation "_a '.[e_fault].[e_esr_el2]' ':<' _b" := (update_s_kvm_vcpu_arch_e_fault_e_esr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_fault_e__far_el2 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_fault _a ((_a.(e_fault)).[e__far_el2] :< _b).
Notation "_a '.[e_fault].[e__far_el2]' ':<' _b" := (update_s_kvm_vcpu_arch_e_fault_e__far_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_fault_e_hpfar_el2 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_fault _a ((_a.(e_fault)).[e_hpfar_el2] :< _b).
Notation "_a '.[e_fault].[e_hpfar_el2]' ':<' _b" := (update_s_kvm_vcpu_arch_e_fault_e_hpfar_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_fault_e_disr_el1 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_fault _a ((_a.(e_fault)).[e_disr_el1] :< _b).
Notation "_a '.[e_fault].[e_disr_el1]' ':<' _b" := (update_s_kvm_vcpu_arch_e_fault_e_disr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_bcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vcpu_debug_state _a ((_a.(e_vcpu_debug_state)).[e_dbg_bcr] :< _b).
Notation "_a '.[e_vcpu_debug_state].[e_dbg_bcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_bvr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vcpu_debug_state _a ((_a.(e_vcpu_debug_state)).[e_dbg_bvr] :< _b).
Notation "_a '.[e_vcpu_debug_state].[e_dbg_bvr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_wcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vcpu_debug_state _a ((_a.(e_vcpu_debug_state)).[e_dbg_wcr] :< _b).
Notation "_a '.[e_vcpu_debug_state].[e_dbg_wcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_wvr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vcpu_debug_state _a ((_a.(e_vcpu_debug_state)).[e_dbg_wvr] :< _b).
Notation "_a '.[e_vcpu_debug_state].[e_dbg_wvr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vcpu_debug_state_e_dbg_wvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_bcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_external_debug_state _a ((_a.(e_external_debug_state)).[e_dbg_bcr] :< _b).
Notation "_a '.[e_external_debug_state].[e_dbg_bcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_bvr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_external_debug_state _a ((_a.(e_external_debug_state)).[e_dbg_bvr] :< _b).
Notation "_a '.[e_external_debug_state].[e_dbg_bvr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_wcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_external_debug_state _a ((_a.(e_external_debug_state)).[e_dbg_wcr] :< _b).
Notation "_a '.[e_external_debug_state].[e_dbg_wcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_wvr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_external_debug_state _a ((_a.(e_external_debug_state)).[e_dbg_wvr] :< _b).
Notation "_a '.[e_external_debug_state].[e_dbg_wvr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_external_debug_state_e_dbg_wvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state_e____regs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_host_debug_state _a ((_a.(e_host_debug_state)).[e____regs] :< _b).
Notation "_a '.[e_host_debug_state].[e____regs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state_e____regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_bcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_host_debug_state_e____regs _a ((_a.(e_host_debug_state).(e____regs)).[e_dbg_bcr] :< _b).
Notation "_a '.[e_host_debug_state].[e____regs].[e_dbg_bcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_bvr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_host_debug_state_e____regs _a ((_a.(e_host_debug_state).(e____regs)).[e_dbg_bvr] :< _b).
Notation "_a '.[e_host_debug_state].[e____regs].[e_dbg_bvr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_wcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_host_debug_state_e____regs _a ((_a.(e_host_debug_state).(e____regs)).[e_dbg_wcr] :< _b).
Notation "_a '.[e_host_debug_state].[e____regs].[e_dbg_wcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_wvr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_host_debug_state_e____regs _a ((_a.(e_host_debug_state).(e____regs)).[e_dbg_wvr] :< _b).
Notation "_a '.[e_host_debug_state].[e____regs].[e_dbg_wvr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state_e____regs_e_dbg_wvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_host_debug_state_e_pmscr_el1 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_host_debug_state _a ((_a.(e_host_debug_state)).[e_pmscr_el1] :< _b).
Notation "_a '.[e_host_debug_state].[e_pmscr_el1]' ':<' _b" := (update_s_kvm_vcpu_arch_e_host_debug_state_e_pmscr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_vgic_cpu_0] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0 _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0)).[e_] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_hcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_hcr] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_hcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_hcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_vmcr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_vmcr] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_vmcr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_vmcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_sre (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_sre] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_sre]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_sre _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap0r (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_ap0r] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_ap0r]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap0r _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap1r (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_ap1r] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_ap1r]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap1r _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_lr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_lr] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_lr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_lr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_its_vpe] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpt_page (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpt_page] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpt_page]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpt_page _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e__its_vm (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e__its_vm] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e__its_vm]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e__its_vm _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_irq (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_irq] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_irq]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_irq _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_db_lpi (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_db_lpi] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_db_lpi]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_db_lpi _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_proxy_event (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_proxy_event] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_proxy_event]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_proxy_event _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_col_idx (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_col_idx] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_col_idx]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_col_idx _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_id (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_id] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_id]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_id _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_idai (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_idai] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_idai]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_idai _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_pending_last (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_pending_last] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_pending_last]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_pending_last _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__ (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0 _a ((_a.(e_vgic_cpu).(e_vgic_cpu_0)).[e__] :< _b).
Notation "_a '.[e_vgic_cpu].[e_vgic_cpu_0].[e__]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_vgic_cpu_0_e__ _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_used_lrs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_used_lrs] :< _b).
Notation "_a '.[e_vgic_cpu].[e_used_lrs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_used_lrs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_private_irqs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_private_irqs] :< _b).
Notation "_a '.[e_vgic_cpu].[e_private_irqs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_private_irqs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_ap_list_lock] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_lock]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock _a ((_a.(e_vgic_cpu).(e_ap_list_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock _a ((_a.(e_vgic_cpu).(e_ap_list_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_vgic_cpu).(e_ap_list_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_vgic_cpu).(e_ap_list_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_ap_list_head] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_head]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head_e_next (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head _a ((_a.(e_vgic_cpu).(e_ap_list_head)).[e_next] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_head].[e_next]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head_e_next _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head_e_prev (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head _a ((_a.(e_vgic_cpu).(e_ap_list_head)).[e_prev] :< _b).
Notation "_a '.[e_vgic_cpu].[e_ap_list_head].[e_prev]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_ap_list_head_e_prev _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_rd_iodev] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_base_addr (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e_vgic_cpu).(e_rd_iodev)).[e_base_addr] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_base_addr]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_base_addr _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e_vgic_cpu).(e_rd_iodev)).[e_vgic_io_device_1] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_vgic_io_device_1]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1_e_redist_vcpu (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 _a ((_a.(e_vgic_cpu).(e_rd_iodev).(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e__regions (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e_vgic_cpu).(e_rd_iodev)).[e__regions] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e__regions]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e__regions _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_iodev_type (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e_vgic_cpu).(e_rd_iodev)).[e_iodev_type] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_iodev_type]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_iodev_type _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_nr_regions (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e_vgic_cpu).(e_rd_iodev)).[e_nr_regions] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_nr_regions]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_nr_regions _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_dev (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e_vgic_cpu).(e_rd_iodev)).[e_dev] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_dev]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_dev _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_dev_e_ops (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_dev _a ((_a.(e_vgic_cpu).(e_rd_iodev).(e_dev)).[e_ops] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rd_iodev].[e_dev].[e_ops]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rd_iodev_e_dev_e_ops _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_rdreg (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_rdreg] :< _b).
Notation "_a '.[e_vgic_cpu].[e_rdreg]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_rdreg _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_pendbaser (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_pendbaser] :< _b).
Notation "_a '.[e_vgic_cpu].[e_pendbaser]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_pendbaser _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_lpis_enabled (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_lpis_enabled] :< _b).
Notation "_a '.[e_vgic_cpu].[e_lpis_enabled]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_lpis_enabled _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_num_pri_bits (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_num_pri_bits] :< _b).
Notation "_a '.[e_vgic_cpu].[e_num_pri_bits]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_num_pri_bits _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_vgic_cpu_e_num_id_bits (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_vgic_cpu _a ((_a.(e_vgic_cpu)).[e_num_id_bits] :< _b).
Notation "_a '.[e_vgic_cpu].[e_num_id_bits]' ':<' _b" := (update_s_kvm_vcpu_arch_e_vgic_cpu_e_num_id_bits _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_timers (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu _a ((_a.(e_timer_cpu)).[e_timers] :< _b).
Notation "_a '.[e_timer_cpu].[e_timers]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_timers _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu _a ((_a.(e_timer_cpu)).[e_bg_timer] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e___node] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___node]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node _a ((_a.(e_timer_cpu).(e_bg_timer).(e___node)).[e__node] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___node].[e__node]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node_e___rb_parent_color (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e_timer_cpu).(e_bg_timer).(e___node).(e__node)).[e___rb_parent_color] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___node].[e__node].[e___rb_parent_color]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_right (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e_timer_cpu).(e_bg_timer).(e___node).(e__node)).[e_rb_right] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___node].[e__node].[e_rb_right]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_right _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_left (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e_timer_cpu).(e_bg_timer).(e___node).(e__node)).[e_rb_left] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___node].[e__node].[e_rb_left]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_left _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__expires (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node _a ((_a.(e_timer_cpu).(e_bg_timer).(e___node)).[e__expires] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___node].[e__expires]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___node_e__expires _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e__softexpires (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e__softexpires] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e__softexpires]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e__softexpires _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e__function (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e__function] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e__function]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e__function _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e__base (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e__base] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e__base]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e__base _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___state (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e___state] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e___state]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e___state _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e_is_rel (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e_is_rel] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e_is_rel]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e_is_rel _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e_is_soft (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e_is_soft] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e_is_soft]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e_is_soft _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e_is_hard (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer _a ((_a.(e_timer_cpu).(e_bg_timer)).[e_is_hard] :< _b).
Notation "_a '.[e_timer_cpu].[e_bg_timer].[e_is_hard]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e_bg_timer_e_is_hard _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_timer_cpu_e___enabled (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_timer_cpu _a ((_a.(e_timer_cpu)).[e___enabled] :< _b).
Notation "_a '.[e_timer_cpu].[e___enabled]' ':<' _b" := (update_s_kvm_vcpu_arch_e_timer_cpu_e___enabled _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu_e_irq_num (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_pmu _a ((_a.(e_pmu)).[e_irq_num] :< _b).
Notation "_a '.[e_pmu].[e_irq_num]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu_e_irq_num _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu_e_pmc (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_pmu _a ((_a.(e_pmu)).[e_pmc] :< _b).
Notation "_a '.[e_pmu].[e_pmc]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu_e_pmc _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu_e_chained (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_pmu _a ((_a.(e_pmu)).[e_chained] :< _b).
Notation "_a '.[e_pmu].[e_chained]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu_e_chained _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu_e__ready (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_pmu _a ((_a.(e_pmu)).[e__ready] :< _b).
Notation "_a '.[e_pmu].[e__ready]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu_e__ready _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu_e_created (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_pmu _a ((_a.(e_pmu)).[e_created] :< _b).
Notation "_a '.[e_pmu].[e_created]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu_e_created _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_pmu_e_irq_level (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_pmu _a ((_a.(e_pmu)).[e_irq_level] :< _b).
Notation "_a '.[e_pmu].[e_irq_level]' ':<' _b" := (update_s_kvm_vcpu_arch_e_pmu_e_irq_level _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_guest_debug_preserved_e_mdscr_el1 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_guest_debug_preserved _a ((_a.(e_guest_debug_preserved)).[e_mdscr_el1] :< _b).
Notation "_a '.[e_guest_debug_preserved].[e_mdscr_el1]' ':<' _b" := (update_s_kvm_vcpu_arch_e_guest_debug_preserved_e_mdscr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmio_decode_e_rt (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_mmio_decode _a ((_a.(e_mmio_decode)).[e_rt] :< _b).
Notation "_a '.[e_mmio_decode].[e_rt]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmio_decode_e_rt _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmio_decode_e_sign_extend (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_mmio_decode _a ((_a.(e_mmio_decode)).[e_sign_extend] :< _b).
Notation "_a '.[e_mmio_decode].[e_sign_extend]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmio_decode_e_sign_extend _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmio_decode_e_sixty_four (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_mmio_decode _a ((_a.(e_mmio_decode)).[e_sixty_four] :< _b).
Notation "_a '.[e_mmio_decode].[e_sixty_four]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmio_decode_e_sixty_four _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmu_page_cache_e_nobjs (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_mmu_page_cache _a ((_a.(e_mmu_page_cache)).[e_nobjs] :< _b).
Notation "_a '.[e_mmu_page_cache].[e_nobjs]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmu_page_cache_e_nobjs _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_mmu_page_cache_e_objects (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_mmu_page_cache _a ((_a.(e_mmu_page_cache)).[e_objects] :< _b).
Notation "_a '.[e_mmu_page_cache].[e_objects]' ':<' _b" := (update_s_kvm_vcpu_arch_e_mmu_page_cache_e_objects _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_reset_state_e__pc (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_reset_state _a ((_a.(e_reset_state)).[e__pc] :< _b).
Notation "_a '.[e_reset_state].[e__pc]' ':<' _b" := (update_s_kvm_vcpu_arch_e_reset_state_e__pc _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_reset_state_e_r0 (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_reset_state _a ((_a.(e_reset_state)).[e_r0] :< _b).
Notation "_a '.[e_reset_state].[e_r0]' ':<' _b" := (update_s_kvm_vcpu_arch_e_reset_state_e_r0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_reset_state_e_be (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_reset_state _a ((_a.(e_reset_state)).[e_be] :< _b).
Notation "_a '.[e_reset_state].[e_be]' ':<' _b" := (update_s_kvm_vcpu_arch_e_reset_state_e_be _a _b) (at level 1).

Definition update_s_kvm_vcpu_arch_e_reset_state_e_reset (_a: s_kvm_vcpu_arch) _b :=
  update_s_kvm_vcpu_arch_e_reset_state _a ((_a.(e_reset_state)).[e_reset] :< _b).
Notation "_a '.[e_reset_state].[e_reset]' ':<' _b" := (update_s_kvm_vcpu_arch_e_reset_state_e_reset _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_preempt_notifier_e_link (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_preempt_notifier _a ((_a.(e_preempt_notifier)).[e_link] :< _b).
Notation "_a '.[e_preempt_notifier].[e_link]' ':<' _b" := (update_s_kvm_vcpu_e_preempt_notifier_e_link _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_preempt_notifier_e_link_e__next (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_preempt_notifier_e_link _a ((_a.(e_preempt_notifier).(e_link)).[e__next] :< _b).
Notation "_a '.[e_preempt_notifier].[e_link].[e__next]' ':<' _b" := (update_s_kvm_vcpu_e_preempt_notifier_e_link_e__next _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_preempt_notifier_e_link_e_pprev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_preempt_notifier_e_link _a ((_a.(e_preempt_notifier).(e_link)).[e_pprev] :< _b).
Notation "_a '.[e_preempt_notifier].[e_link].[e_pprev]' ':<' _b" := (update_s_kvm_vcpu_e_preempt_notifier_e_link_e_pprev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_preempt_notifier_e___ops (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_preempt_notifier _a ((_a.(e_preempt_notifier)).[e___ops] :< _b).
Notation "_a '.[e_preempt_notifier].[e___ops]' ':<' _b" := (update_s_kvm_vcpu_e_preempt_notifier_e___ops _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_blocked_vcpu_list_e_next (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_blocked_vcpu_list _a ((_a.(e_blocked_vcpu_list)).[e_next] :< _b).
Notation "_a '.[e_blocked_vcpu_list].[e_next]' ':<' _b" := (update_s_kvm_vcpu_e_blocked_vcpu_list_e_next _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_blocked_vcpu_list_e_prev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_blocked_vcpu_list _a ((_a.(e_blocked_vcpu_list)).[e_prev] :< _b).
Notation "_a '.[e_blocked_vcpu_list].[e_prev]' ':<' _b" := (update_s_kvm_vcpu_e_blocked_vcpu_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_owner (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex _a ((_a.(e_mutex)).[e_owner] :< _b).
Notation "_a '.[e_mutex].[e_owner]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_owner _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_owner_e__counter (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_owner _a ((_a.(e_mutex).(e_owner)).[e__counter] :< _b).
Notation "_a '.[e_mutex].[e_owner].[e__counter]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_owner_e__counter _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex _a ((_a.(e_mutex)).[e_wait_lock] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_lock _a ((_a.(e_mutex).(e_wait_lock)).[e_spinlock_0] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock].[e_spinlock_0]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0 _a ((_a.(e_mutex).(e_wait_lock).(e_spinlock_0)).[e_rlock] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock _a ((_a.(e_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock)).[e_raw_lock] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock _a ((_a.(e_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0 _a ((_a.(e_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e_mutex).(e_wait_lock).(e_spinlock_0).(e_rlock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e_mutex].[e_wait_lock].[e_spinlock_0].[e_rlock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_lock_e_spinlock_0_e_rlock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_osq (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex _a ((_a.(e_mutex)).[e_osq] :< _b).
Notation "_a '.[e_mutex].[e_osq]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_osq _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_osq_e_tail (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_osq _a ((_a.(e_mutex).(e_osq)).[e_tail] :< _b).
Notation "_a '.[e_mutex].[e_osq].[e_tail]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_osq_e_tail _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_osq_e_tail_e_counter (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_osq_e_tail _a ((_a.(e_mutex).(e_osq).(e_tail)).[e_counter] :< _b).
Notation "_a '.[e_mutex].[e_osq].[e_tail].[e_counter]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_osq_e_tail_e_counter _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_list (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex _a ((_a.(e_mutex)).[e_wait_list] :< _b).
Notation "_a '.[e_mutex].[e_wait_list]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_list _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_list_e_next (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_list _a ((_a.(e_mutex).(e_wait_list)).[e_next] :< _b).
Notation "_a '.[e_mutex].[e_wait_list].[e_next]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_list_e_next _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_mutex_e_wait_list_e_prev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_mutex_e_wait_list _a ((_a.(e_mutex).(e_wait_list)).[e_prev] :< _b).
Notation "_a '.[e_mutex].[e_wait_list].[e_prev]' ':<' _b" := (update_s_kvm_vcpu_e_mutex_e_wait_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_______lock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq _a ((_a.(e__wq)).[e_______lock] :< _b).
Notation "_a '.[e__wq].[e_______lock]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_______lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq_e_______lock _a ((_a.(e__wq).(e_______lock)).[e_raw_lock] :< _b).
Notation "_a '.[e__wq].[e_______lock].[e_raw_lock]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock _a ((_a.(e__wq).(e_______lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e__wq].[e_______lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e__wq).(e_______lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e__wq].[e_______lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e__wq).(e_______lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e__wq].[e_______lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_______lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_task_list (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq _a ((_a.(e__wq)).[e_task_list] :< _b).
Notation "_a '.[e__wq].[e_task_list]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_task_list _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_task_list_e_next (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq_e_task_list _a ((_a.(e__wq).(e_task_list)).[e_next] :< _b).
Notation "_a '.[e__wq].[e_task_list].[e_next]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_task_list_e_next _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__wq_e_task_list_e_prev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__wq_e_task_list _a ((_a.(e__wq).(e_task_list)).[e_prev] :< _b).
Notation "_a '.[e__wq].[e_task_list].[e_prev]' ':<' _b" := (update_s_kvm_vcpu_e__wq_e_task_list_e_prev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_sigset_e_sig (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_sigset _a ((_a.(e_sigset)).[e_sig] :< _b).
Notation "_a '.[e_sigset].[e_sig]' ':<' _b" := (update_s_kvm_vcpu_e_sigset_e_sig _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_halt_successful_poll (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_halt_successful_poll] :< _b).
Notation "_a '.[e__stat].[e_halt_successful_poll]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_halt_successful_poll _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_halt_attempted_poll (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_halt_attempted_poll] :< _b).
Notation "_a '.[e__stat].[e_halt_attempted_poll]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_halt_attempted_poll _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_halt_poll_invalid (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_halt_poll_invalid] :< _b).
Notation "_a '.[e__stat].[e_halt_poll_invalid]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_halt_poll_invalid _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_halt_wakeup (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_halt_wakeup] :< _b).
Notation "_a '.[e__stat].[e_halt_wakeup]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_halt_wakeup _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_hvc_exit_stat (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_hvc_exit_stat] :< _b).
Notation "_a '.[e__stat].[e_hvc_exit_stat]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_hvc_exit_stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_wfe_exit_stat (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_wfe_exit_stat] :< _b).
Notation "_a '.[e__stat].[e_wfe_exit_stat]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_wfe_exit_stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_wfi_exit_stat (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_wfi_exit_stat] :< _b).
Notation "_a '.[e__stat].[e_wfi_exit_stat]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_wfi_exit_stat _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_mmio_exit_user (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_mmio_exit_user] :< _b).
Notation "_a '.[e__stat].[e_mmio_exit_user]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_mmio_exit_user _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_mmio_exit_kernel (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_mmio_exit_kernel] :< _b).
Notation "_a '.[e__stat].[e_mmio_exit_kernel]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_mmio_exit_kernel _a _b) (at level 1).

Definition update_s_kvm_vcpu_e__stat_e_exits (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e__stat _a ((_a.(e__stat)).[e_exits] :< _b).
Notation "_a '.[e__stat].[e_exits]' ':<' _b" := (update_s_kvm_vcpu_e__stat_e_exits _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_spin_loop_e_in_spin_loop (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_spin_loop _a ((_a.(e_spin_loop)).[e_in_spin_loop] :< _b).
Notation "_a '.[e_spin_loop].[e_in_spin_loop]' ':<' _b" := (update_s_kvm_vcpu_e_spin_loop_e_in_spin_loop _a _b) (at level 1).

Definition update_s_kvm_vcpu_e_spin_loop_e_dy_eligible (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e_spin_loop _a ((_a.(e_spin_loop)).[e_dy_eligible] :< _b).
Notation "_a '.[e_spin_loop].[e_dy_eligible]' ':<' _b" := (update_s_kvm_vcpu_e_spin_loop_e_dy_eligible _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e________vmid (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e________vmid] :< _b).
Notation "_a '.[e___arch].[e________vmid]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e________vmid _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_was_preempted (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_was_preempted] :< _b).
Notation "_a '.[e___arch].[e_was_preempted]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_was_preempted _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_walk_result] :< _b).
Notation "_a '.[e___arch].[e_walk_result]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result_e_pfn (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_walk_result _a ((_a.(e___arch).(e_walk_result)).[e_pfn] :< _b).
Notation "_a '.[e___arch].[e_walk_result].[e_pfn]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result_e_pfn _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result_e_output (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_walk_result _a ((_a.(e___arch).(e_walk_result)).[e_output] :< _b).
Notation "_a '.[e___arch].[e_walk_result].[e_output]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result_e_output _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result_e_writable (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_walk_result _a ((_a.(e___arch).(e_walk_result)).[e_writable] :< _b).
Notation "_a '.[e___arch].[e_walk_result].[e_writable]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result_e_writable _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result_e_readable (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_walk_result _a ((_a.(e___arch).(e_walk_result)).[e_readable] :< _b).
Notation "_a '.[e___arch].[e_walk_result].[e_readable]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result_e_readable _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result_e__level (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_walk_result _a ((_a.(e___arch).(e_walk_result)).[e__level] :< _b).
Notation "_a '.[e___arch].[e_walk_result].[e__level]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result_e__level _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_walk_result_e_desc (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_walk_result _a ((_a.(e___arch).(e_walk_result)).[e_desc] :< _b).
Notation "_a '.[e___arch].[e_walk_result].[e_desc]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_walk_result_e_desc _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_ctxt] :< _b).
Notation "_a '.[e___arch].[e_ctxt]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt _a ((_a.(e___arch).(e_ctxt)).[e_gp_regs] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs)).[e___regs] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e___regs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e__regs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e___regs)).[e__regs] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e__regs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e__regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e_sp (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e___regs)).[e_sp] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e_sp]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e_sp _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e_pc (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e___regs)).[e_pc] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e_pc]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e_pc _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e_pstate (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e___regs)).[e_pstate] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e___regs].[e_pstate]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e___regs_e_pstate _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e_sp_el1 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs)).[e_sp_el1] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e_sp_el1]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e_sp_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e_elr_el1 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs)).[e_elr_el1] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e_elr_el1]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e_elr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e_spsr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs)).[e_spsr] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e_spsr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e_spsr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs)).[e__fp_regs] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e__fp_regs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e_vregs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e__fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e__fp_regs].[e_vregs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e_vregs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpsr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e__fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e__fp_regs].[e_fpsr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpsr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e__fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e__fp_regs].[e_fpcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e_fpcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e___reserved (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs _a ((_a.(e___arch).(e_ctxt).(e_gp_regs).(e__fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e_gp_regs].[e__fp_regs].[e___reserved]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e_gp_regs_e__fp_regs_e___reserved _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e__sys_regs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt _a ((_a.(e___arch).(e_ctxt)).[e__sys_regs] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e__sys_regs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e__sys_regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_ctxt_e___hyp_running_vcpu (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_ctxt _a ((_a.(e___arch).(e_ctxt)).[e___hyp_running_vcpu] :< _b).
Notation "_a '.[e___arch].[e_ctxt].[e___hyp_running_vcpu]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_ctxt_e___hyp_running_vcpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_sve_state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_sve_state] :< _b).
Notation "_a '.[e___arch].[e_sve_state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_sve_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_sve_max_vl (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_sve_max_vl] :< _b).
Notation "_a '.[e___arch].[e_sve_max_vl]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_sve_max_vl _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e__hcr_el2 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e__hcr_el2] :< _b).
Notation "_a '.[e___arch].[e__hcr_el2]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e__hcr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mdcr_el2 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_mdcr_el2] :< _b).
Notation "_a '.[e___arch].[e_mdcr_el2]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mdcr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_fault (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_fault] :< _b).
Notation "_a '.[e___arch].[e_fault]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_fault _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_fault_e_esr_el2 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_fault _a ((_a.(e___arch).(e_fault)).[e_esr_el2] :< _b).
Notation "_a '.[e___arch].[e_fault].[e_esr_el2]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_fault_e_esr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_fault_e__far_el2 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_fault _a ((_a.(e___arch).(e_fault)).[e__far_el2] :< _b).
Notation "_a '.[e___arch].[e_fault].[e__far_el2]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_fault_e__far_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_fault_e_hpfar_el2 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_fault _a ((_a.(e___arch).(e_fault)).[e_hpfar_el2] :< _b).
Notation "_a '.[e___arch].[e_fault].[e_hpfar_el2]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_fault_e_hpfar_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_fault_e_disr_el1 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_fault _a ((_a.(e___arch).(e_fault)).[e_disr_el1] :< _b).
Notation "_a '.[e___arch].[e_fault].[e_disr_el1]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_fault_e_disr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_workaround_flags (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_workaround_flags] :< _b).
Notation "_a '.[e___arch].[e_workaround_flags]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_workaround_flags _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e____flags (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e____flags] :< _b).
Notation "_a '.[e___arch].[e____flags]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e____flags _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_debug_ptr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_debug_ptr] :< _b).
Notation "_a '.[e___arch].[e_debug_ptr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_debug_ptr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vcpu_debug_state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_vcpu_debug_state] :< _b).
Notation "_a '.[e___arch].[e_vcpu_debug_state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vcpu_debug_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_bcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vcpu_debug_state _a ((_a.(e___arch).(e_vcpu_debug_state)).[e_dbg_bcr] :< _b).
Notation "_a '.[e___arch].[e_vcpu_debug_state].[e_dbg_bcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_bvr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vcpu_debug_state _a ((_a.(e___arch).(e_vcpu_debug_state)).[e_dbg_bvr] :< _b).
Notation "_a '.[e___arch].[e_vcpu_debug_state].[e_dbg_bvr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_wcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vcpu_debug_state _a ((_a.(e___arch).(e_vcpu_debug_state)).[e_dbg_wcr] :< _b).
Notation "_a '.[e___arch].[e_vcpu_debug_state].[e_dbg_wcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_wvr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vcpu_debug_state _a ((_a.(e___arch).(e_vcpu_debug_state)).[e_dbg_wvr] :< _b).
Notation "_a '.[e___arch].[e_vcpu_debug_state].[e_dbg_wvr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vcpu_debug_state_e_dbg_wvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_external_debug_state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_external_debug_state] :< _b).
Notation "_a '.[e___arch].[e_external_debug_state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_external_debug_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_bcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_external_debug_state _a ((_a.(e___arch).(e_external_debug_state)).[e_dbg_bcr] :< _b).
Notation "_a '.[e___arch].[e_external_debug_state].[e_dbg_bcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_bvr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_external_debug_state _a ((_a.(e___arch).(e_external_debug_state)).[e_dbg_bvr] :< _b).
Notation "_a '.[e___arch].[e_external_debug_state].[e_dbg_bvr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_wcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_external_debug_state _a ((_a.(e___arch).(e_external_debug_state)).[e_dbg_wcr] :< _b).
Notation "_a '.[e___arch].[e_external_debug_state].[e_dbg_wcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_wvr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_external_debug_state _a ((_a.(e___arch).(e_external_debug_state)).[e_dbg_wvr] :< _b).
Notation "_a '.[e___arch].[e_external_debug_state].[e_dbg_wvr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_external_debug_state_e_dbg_wvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_cpu_context (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_host_cpu_context] :< _b).
Notation "_a '.[e___arch].[e_host_cpu_context]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_cpu_context _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_thread_info (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_host_thread_info] :< _b).
Notation "_a '.[e___arch].[e_host_thread_info]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_thread_info _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_fpsimd_state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_host_fpsimd_state] :< _b).
Notation "_a '.[e___arch].[e_host_fpsimd_state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_fpsimd_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_host_debug_state] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_host_debug_state _a ((_a.(e___arch).(e_host_debug_state)).[e____regs] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state].[e____regs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_bcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs _a ((_a.(e___arch).(e_host_debug_state).(e____regs)).[e_dbg_bcr] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state].[e____regs].[e_dbg_bcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_bcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_bvr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs _a ((_a.(e___arch).(e_host_debug_state).(e____regs)).[e_dbg_bvr] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state].[e____regs].[e_dbg_bvr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_bvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_wcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs _a ((_a.(e___arch).(e_host_debug_state).(e____regs)).[e_dbg_wcr] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state].[e____regs].[e_dbg_wcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_wcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_wvr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs _a ((_a.(e___arch).(e_host_debug_state).(e____regs)).[e_dbg_wvr] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state].[e____regs].[e_dbg_wvr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state_e____regs_e_dbg_wvr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_host_debug_state_e_pmscr_el1 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_host_debug_state _a ((_a.(e___arch).(e_host_debug_state)).[e_pmscr_el1] :< _b).
Notation "_a '.[e___arch].[e_host_debug_state].[e_pmscr_el1]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_host_debug_state_e_pmscr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_vgic_cpu] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_vgic_cpu_0] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0 _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0)).[e_] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_hcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_hcr] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_hcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_hcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_vmcr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_vmcr] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_vmcr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_vmcr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_sre (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_sre] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_sre]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_sre _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap0r (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_ap0r] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_ap0r]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap0r _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap1r (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_ap1r] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_ap1r]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_ap1r _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_lr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_vgic_lr] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_vgic_lr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_vgic_lr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e_ _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_)).[e_its_vpe] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpt_page (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpt_page] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpt_page]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpt_page _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e__its_vm (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e__its_vm] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e__its_vm]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e__its_vm _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_irq (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_irq] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_irq]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_irq _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_db_lpi (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_db_lpi] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_db_lpi]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_db_lpi _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_proxy_event (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_proxy_event] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_proxy_event]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_proxy_event _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_col_idx (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_col_idx] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_col_idx]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_col_idx _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_id (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_vpe_id] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_vpe_id]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_vpe_id _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_idai (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_idai] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_idai]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_idai _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_pending_last (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0).(e_).(e_its_vpe)).[e_pending_last] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e_].[e_its_vpe].[e_pending_last]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__e_its_vpe_e_pending_last _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__ (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0 _a ((_a.(e___arch).(e_vgic_cpu).(e_vgic_cpu_0)).[e__] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_vgic_cpu_0].[e__]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_vgic_cpu_0_e__ _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_used_lrs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_used_lrs] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_used_lrs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_used_lrs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_private_irqs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_private_irqs] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_private_irqs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_private_irqs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_ap_list_lock] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_lock]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock _a ((_a.(e___arch).(e_vgic_cpu).(e_ap_list_lock)).[e_raw_lock] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock _a ((_a.(e___arch).(e_vgic_cpu).(e_ap_list_lock).(e_raw_lock)).[e_qspinlock_0] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0 _a ((_a.(e___arch).(e_vgic_cpu).(e_ap_list_lock).(e_raw_lock).(e_qspinlock_0)).[e__val] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val _a ((_a.(e___arch).(e_vgic_cpu).(e_ap_list_lock).(e_raw_lock).(e_qspinlock_0).(e__val)).[e_counter] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_lock].[e_raw_lock].[e_qspinlock_0].[e__val].[e_counter]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_lock_e_raw_lock_e_qspinlock_0_e__val_e_counter _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_ap_list_head] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_head]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head_e_next (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head _a ((_a.(e___arch).(e_vgic_cpu).(e_ap_list_head)).[e_next] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_head].[e_next]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head_e_next _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head_e_prev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head _a ((_a.(e___arch).(e_vgic_cpu).(e_ap_list_head)).[e_prev] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_ap_list_head].[e_prev]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_ap_list_head_e_prev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_rd_iodev] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_base_addr (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev)).[e_base_addr] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_base_addr]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_base_addr _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev)).[e_vgic_io_device_1] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_vgic_io_device_1]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1_e_redist_vcpu (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1 _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev).(e_vgic_io_device_1)).[e_redist_vcpu] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_vgic_io_device_1].[e_redist_vcpu]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_vgic_io_device_1_e_redist_vcpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e__regions (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev)).[e__regions] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e__regions]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e__regions _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_iodev_type (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev)).[e_iodev_type] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_iodev_type]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_iodev_type _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_nr_regions (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev)).[e_nr_regions] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_nr_regions]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_nr_regions _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_dev (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev)).[e_dev] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_dev]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_dev _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_dev_e_ops (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_dev _a ((_a.(e___arch).(e_vgic_cpu).(e_rd_iodev).(e_dev)).[e_ops] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rd_iodev].[e_dev].[e_ops]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rd_iodev_e_dev_e_ops _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rdreg (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_rdreg] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_rdreg]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_rdreg _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_pendbaser (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_pendbaser] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_pendbaser]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_pendbaser _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_lpis_enabled (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_lpis_enabled] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_lpis_enabled]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_lpis_enabled _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_num_pri_bits (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_num_pri_bits] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_num_pri_bits]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_num_pri_bits _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_num_id_bits (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_vgic_cpu _a ((_a.(e___arch).(e_vgic_cpu)).[e_num_id_bits] :< _b).
Notation "_a '.[e___arch].[e_vgic_cpu].[e_num_id_bits]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vgic_cpu_e_num_id_bits _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_timer_cpu] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_timers (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu _a ((_a.(e___arch).(e_timer_cpu)).[e_timers] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_timers]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_timers _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu _a ((_a.(e___arch).(e_timer_cpu)).[e_bg_timer] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e___node] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___node]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer).(e___node)).[e__node] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___node].[e__node]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node_e___rb_parent_color (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer).(e___node).(e__node)).[e___rb_parent_color] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___node].[e__node].[e___rb_parent_color]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node_e___rb_parent_color _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_right (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer).(e___node).(e__node)).[e_rb_right] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___node].[e__node].[e_rb_right]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_right _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_left (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer).(e___node).(e__node)).[e_rb_left] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___node].[e__node].[e_rb_left]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__node_e_rb_left _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__expires (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer).(e___node)).[e__expires] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___node].[e__expires]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___node_e__expires _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e__softexpires (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e__softexpires] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e__softexpires]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e__softexpires _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e__function (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e__function] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e__function]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e__function _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e__base (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e__base] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e__base]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e__base _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e___state] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e___state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e___state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e_is_rel (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e_is_rel] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e_is_rel]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e_is_rel _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e_is_soft (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e_is_soft] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e_is_soft]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e_is_soft _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e_is_hard (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer _a ((_a.(e___arch).(e_timer_cpu).(e_bg_timer)).[e_is_hard] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e_bg_timer].[e_is_hard]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e_bg_timer_e_is_hard _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_timer_cpu_e___enabled (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_timer_cpu _a ((_a.(e___arch).(e_timer_cpu)).[e___enabled] :< _b).
Notation "_a '.[e___arch].[e_timer_cpu].[e___enabled]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_timer_cpu_e___enabled _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_pmu] :< _b).
Notation "_a '.[e___arch].[e_pmu]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu_e_irq_num (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_pmu _a ((_a.(e___arch).(e_pmu)).[e_irq_num] :< _b).
Notation "_a '.[e___arch].[e_pmu].[e_irq_num]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu_e_irq_num _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu_e_pmc (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_pmu _a ((_a.(e___arch).(e_pmu)).[e_pmc] :< _b).
Notation "_a '.[e___arch].[e_pmu].[e_pmc]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu_e_pmc _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu_e_chained (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_pmu _a ((_a.(e___arch).(e_pmu)).[e_chained] :< _b).
Notation "_a '.[e___arch].[e_pmu].[e_chained]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu_e_chained _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu_e__ready (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_pmu _a ((_a.(e___arch).(e_pmu)).[e__ready] :< _b).
Notation "_a '.[e___arch].[e_pmu].[e__ready]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu_e__ready _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu_e_created (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_pmu _a ((_a.(e___arch).(e_pmu)).[e_created] :< _b).
Notation "_a '.[e___arch].[e_pmu].[e_created]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu_e_created _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pmu_e_irq_level (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_pmu _a ((_a.(e___arch).(e_pmu)).[e_irq_level] :< _b).
Notation "_a '.[e___arch].[e_pmu].[e_irq_level]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pmu_e_irq_level _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_guest_debug_preserved (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_guest_debug_preserved] :< _b).
Notation "_a '.[e___arch].[e_guest_debug_preserved]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_guest_debug_preserved _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_guest_debug_preserved_e_mdscr_el1 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_guest_debug_preserved _a ((_a.(e___arch).(e_guest_debug_preserved)).[e_mdscr_el1] :< _b).
Notation "_a '.[e___arch].[e_guest_debug_preserved].[e_mdscr_el1]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_guest_debug_preserved_e_mdscr_el1 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_power_off (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_power_off] :< _b).
Notation "_a '.[e___arch].[e_power_off]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_power_off _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_pause (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_pause] :< _b).
Notation "_a '.[e___arch].[e_pause]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_pause _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmio_decode (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_mmio_decode] :< _b).
Notation "_a '.[e___arch].[e_mmio_decode]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmio_decode _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmio_decode_e_rt (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_mmio_decode _a ((_a.(e___arch).(e_mmio_decode)).[e_rt] :< _b).
Notation "_a '.[e___arch].[e_mmio_decode].[e_rt]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmio_decode_e_rt _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmio_decode_e_sign_extend (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_mmio_decode _a ((_a.(e___arch).(e_mmio_decode)).[e_sign_extend] :< _b).
Notation "_a '.[e___arch].[e_mmio_decode].[e_sign_extend]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmio_decode_e_sign_extend _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmio_decode_e_sixty_four (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_mmio_decode _a ((_a.(e___arch).(e_mmio_decode)).[e_sixty_four] :< _b).
Notation "_a '.[e___arch].[e_mmio_decode].[e_sixty_four]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmio_decode_e_sixty_four _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmu_page_cache (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_mmu_page_cache] :< _b).
Notation "_a '.[e___arch].[e_mmu_page_cache]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmu_page_cache _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmu_page_cache_e_nobjs (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_mmu_page_cache _a ((_a.(e___arch).(e_mmu_page_cache)).[e_nobjs] :< _b).
Notation "_a '.[e___arch].[e_mmu_page_cache].[e_nobjs]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmu_page_cache_e_nobjs _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_mmu_page_cache_e_objects (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_mmu_page_cache _a ((_a.(e___arch).(e_mmu_page_cache)).[e_objects] :< _b).
Notation "_a '.[e___arch].[e_mmu_page_cache].[e_objects]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_mmu_page_cache_e_objects _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_target (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_target] :< _b).
Notation "_a '.[e___arch].[e_target]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_target _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e__features (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e__features] :< _b).
Notation "_a '.[e___arch].[e__features]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e__features _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_has_run_once (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_has_run_once] :< _b).
Notation "_a '.[e___arch].[e_has_run_once]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_has_run_once _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_vsesr_el2 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_vsesr_el2] :< _b).
Notation "_a '.[e___arch].[e_vsesr_el2]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_vsesr_el2 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_reset_state (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_reset_state] :< _b).
Notation "_a '.[e___arch].[e_reset_state]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_reset_state _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_reset_state_e__pc (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_reset_state _a ((_a.(e___arch).(e_reset_state)).[e__pc] :< _b).
Notation "_a '.[e___arch].[e_reset_state].[e__pc]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_reset_state_e__pc _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_reset_state_e_r0 (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_reset_state _a ((_a.(e___arch).(e_reset_state)).[e_r0] :< _b).
Notation "_a '.[e___arch].[e_reset_state].[e_r0]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_reset_state_e_r0 _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_reset_state_e_be (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_reset_state _a ((_a.(e___arch).(e_reset_state)).[e_be] :< _b).
Notation "_a '.[e___arch].[e_reset_state].[e_be]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_reset_state_e_be _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_reset_state_e_reset (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch_e_reset_state _a ((_a.(e___arch).(e_reset_state)).[e_reset] :< _b).
Notation "_a '.[e___arch].[e_reset_state].[e_reset]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_reset_state_e_reset _a _b) (at level 1).

Definition update_s_kvm_vcpu_e___arch_e_sysregs_loaded_on_cpu (_a: s_kvm_vcpu) _b :=
  update_s_kvm_vcpu_e___arch _a ((_a.(e___arch)).[e_sysregs_loaded_on_cpu] :< _b).
Notation "_a '.[e___arch].[e_sysregs_loaded_on_cpu]' ':<' _b" := (update_s_kvm_vcpu_e___arch_e_sysregs_loaded_on_cpu _a _b) (at level 1).

Definition update_Shared_e_core_data_e_next_vmid (_a: Shared) _b :=
  update_Shared_e_core_data _a ((_a.(e_core_data)).[e_next_vmid] :< _b).
Notation "_a '.[e_core_data].[e_next_vmid]' ':<' _b" := (update_Shared_e_core_data_e_next_vmid _a _b) (at level 1).

Definition update_Shared_e_core_data_e_last_remap_ptr (_a: Shared) _b :=
  update_Shared_e_core_data _a ((_a.(e_core_data)).[e_last_remap_ptr] :< _b).
Notation "_a '.[e_core_data].[e_last_remap_ptr]' ':<' _b" := (update_Shared_e_core_data_e_last_remap_ptr _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_page_pool_start (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_page_pool_start] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_page_pool_start]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_page_pool_start _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_pgd_used_pages (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_pgd_used_pages] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_pgd_used_pages]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_pgd_used_pages _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_pmd_used_pages (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_pmd_used_pages] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_pmd_used_pages]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_pmd_used_pages _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_pgd_pool (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_pgd_pool] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_pgd_pool]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_pgd_pool _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_pmd_pool (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_pmd_pool] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_pmd_pool]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_pmd_pool _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_pte_pool (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_pte_pool] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_pte_pool]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_pte_pool _a _b) (at level 1).

Definition update_Shared_e_smmupts_e_smmu_pt (_a: Shared) _b :=
  update_Shared_e_smmupts _a ((_a.(e_smmupts)).[e_smmu_pt] :< _b).
Notation "_a '.[e_smmupts].[e_smmu_pt]' ':<' _b" := (update_Shared_e_smmupts_e_smmu_pt _a _b) (at level 1).

Definition update_PrivData_e_arch_e_host_hcr_el2 (_a: PrivData) _b :=
  update_PrivData_e_arch _a ((_a.(e_arch)).[e_host_hcr_el2] :< _b).
Notation "_a '.[e_arch].[e_host_hcr_el2]' ':<' _b" := (update_PrivData_e_arch_e_host_hcr_el2 _a _b) (at level 1).

Definition update_PrivData_e_arch_e_host_vttbr_el2 (_a: PrivData) _b :=
  update_PrivData_e_arch _a ((_a.(e_arch)).[e_host_vttbr_el2] :< _b).
Notation "_a '.[e_arch].[e_host_vttbr_el2]' ':<' _b" := (update_PrivData_e_arch_e_host_vttbr_el2 _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_regs (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_regs] :< _b).
Notation "_a '.[e_cpu_regs].[e_regs]' ':<' _b" := (update_PrivData_e_cpu_regs_e_regs _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_far_el2 (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_far_el2] :< _b).
Notation "_a '.[e_cpu_regs].[e_far_el2]' ':<' _b" := (update_PrivData_e_cpu_regs_e_far_el2 _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_hpfar (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_hpfar] :< _b).
Notation "_a '.[e_cpu_regs].[e_hpfar]' ':<' _b" := (update_PrivData_e_cpu_regs_e_hpfar _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_hcr_el2 (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_hcr_el2] :< _b).
Notation "_a '.[e_cpu_regs].[e_hcr_el2]' ':<' _b" := (update_PrivData_e_cpu_regs_e_hcr_el2 _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_ec (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_ec] :< _b).
Notation "_a '.[e_cpu_regs].[e_ec]' ':<' _b" := (update_PrivData_e_cpu_regs_e_ec _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_dirty (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_dirty] :< _b).
Notation "_a '.[e_cpu_regs].[e_dirty]' ':<' _b" := (update_PrivData_e_cpu_regs_e_dirty _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e__flags (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e__flags] :< _b).
Notation "_a '.[e_cpu_regs].[e__flags]' ':<' _b" := (update_PrivData_e_cpu_regs_e__flags _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_sys_regs (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_sys_regs] :< _b).
Notation "_a '.[e_cpu_regs].[e_sys_regs]' ':<' _b" := (update_PrivData_e_cpu_regs_e_sys_regs _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_fp_regs (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_fp_regs] :< _b).
Notation "_a '.[e_cpu_regs].[e_fp_regs]' ':<' _b" := (update_PrivData_e_cpu_regs_e_fp_regs _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_fp_regs_e_vregs (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs_e_fp_regs _a ((_a.(e_cpu_regs).(e_fp_regs)).[e_vregs] :< _b).
Notation "_a '.[e_cpu_regs].[e_fp_regs].[e_vregs]' ':<' _b" := (update_PrivData_e_cpu_regs_e_fp_regs_e_vregs _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_fp_regs_e_fpsr (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs_e_fp_regs _a ((_a.(e_cpu_regs).(e_fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[e_cpu_regs].[e_fp_regs].[e_fpsr]' ':<' _b" := (update_PrivData_e_cpu_regs_e_fp_regs_e_fpsr _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_fp_regs_e_fpcr (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs_e_fp_regs _a ((_a.(e_cpu_regs).(e_fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[e_cpu_regs].[e_fp_regs].[e_fpcr]' ':<' _b" := (update_PrivData_e_cpu_regs_e_fp_regs_e_fpcr _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_fp_regs_e___reserved (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs_e_fp_regs _a ((_a.(e_cpu_regs).(e_fp_regs)).[e___reserved] :< _b).
Notation "_a '.[e_cpu_regs].[e_fp_regs].[e___reserved]' ':<' _b" := (update_PrivData_e_cpu_regs_e_fp_regs_e___reserved _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_esr (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_esr] :< _b).
Notation "_a '.[e_cpu_regs].[e_esr]' ':<' _b" := (update_PrivData_e_cpu_regs_e_esr _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e__vmid (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e__vmid] :< _b).
Notation "_a '.[e_cpu_regs].[e__vmid]' ':<' _b" := (update_PrivData_e_cpu_regs_e__vmid _a _b) (at level 1).

Definition update_PrivData_e_cpu_regs_e_sysregs_el2 (_a: PrivData) _b :=
  update_PrivData_e_cpu_regs _a ((_a.(e_cpu_regs)).[e_sysregs_el2] :< _b).
Notation "_a '.[e_cpu_regs].[e_sysregs_el2]' ':<' _b" := (update_PrivData_e_cpu_regs_e_sysregs_el2 _a _b) (at level 1).

Definition update_RData_shared_e_locks (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_locks] :< _b).
Notation "_a '.[shared].[e_locks]' ':<' _b" := (update_RData_shared_e_locks _a _b) (at level 1).

Definition update_RData_shared_e_s2pages (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_s2pages] :< _b).
Notation "_a '.[shared].[e_s2pages]' ':<' _b" := (update_RData_shared_e_s2pages _a _b) (at level 1).

Definition update_RData_shared_e_core_data (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_core_data] :< _b).
Notation "_a '.[shared].[e_core_data]' ':<' _b" := (update_RData_shared_e_core_data _a _b) (at level 1).

Definition update_RData_shared_e_core_data_e_next_vmid (_a: RData) _b :=
  update_RData_shared_e_core_data _a ((_a.(shared).(e_core_data)).[e_next_vmid] :< _b).
Notation "_a '.[shared].[e_core_data].[e_next_vmid]' ':<' _b" := (update_RData_shared_e_core_data_e_next_vmid _a _b) (at level 1).

Definition update_RData_shared_e_core_data_e_last_remap_ptr (_a: RData) _b :=
  update_RData_shared_e_core_data _a ((_a.(shared).(e_core_data)).[e_last_remap_ptr] :< _b).
Notation "_a '.[shared].[e_core_data].[e_last_remap_ptr]' ':<' _b" := (update_RData_shared_e_core_data_e_last_remap_ptr _a _b) (at level 1).

Definition update_RData_shared_e_s2pts (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_s2pts] :< _b).
Notation "_a '.[shared].[e_s2pts]' ':<' _b" := (update_RData_shared_e_s2pts _a _b) (at level 1).

Definition update_RData_shared_e_smmupts (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_smmupts] :< _b).
Notation "_a '.[shared].[e_smmupts]' ':<' _b" := (update_RData_shared_e_smmupts _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_page_pool_start (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_page_pool_start] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_page_pool_start]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_page_pool_start _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_pgd_used_pages (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_pgd_used_pages] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_pgd_used_pages]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_pgd_used_pages _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_pmd_used_pages (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_pmd_used_pages] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_pmd_used_pages]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_pmd_used_pages _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_pgd_pool (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_pgd_pool] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_pgd_pool]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_pgd_pool _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_pmd_pool (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_pmd_pool] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_pmd_pool]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_pmd_pool _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_pte_pool (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_pte_pool] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_pte_pool]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_pte_pool _a _b) (at level 1).

Definition update_RData_shared_e_smmupts_e_smmu_pt (_a: RData) _b :=
  update_RData_shared_e_smmupts _a ((_a.(shared).(e_smmupts)).[e_smmu_pt] :< _b).
Notation "_a '.[shared].[e_smmupts].[e_smmu_pt]' ':<' _b" := (update_RData_shared_e_smmupts_e_smmu_pt _a _b) (at level 1).

Definition update_RData_shared_e_smmu_vmid (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_smmu_vmid] :< _b).
Notation "_a '.[shared].[e_smmu_vmid]' ':<' _b" := (update_RData_shared_e_smmu_vmid _a _b) (at level 1).

Definition update_RData_shared_e_vminfos (_a: RData) _b :=
  update_RData_shared _a ((_a.(shared)).[e_vminfos] :< _b).
Notation "_a '.[shared].[e_vminfos]' ':<' _b" := (update_RData_shared_e_vminfos _a _b) (at level 1).

Definition update_RData_priv_e_regions (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_regions] :< _b).
Notation "_a '.[priv].[e_regions]' ':<' _b" := (update_RData_priv_e_regions _a _b) (at level 1).

Definition update_RData_priv_e_s2_memblock_info (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_s2_memblock_info] :< _b).
Notation "_a '.[priv].[e_s2_memblock_info]' ':<' _b" := (update_RData_priv_e_s2_memblock_info _a _b) (at level 1).

Definition update_RData_priv_e_arch (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_arch] :< _b).
Notation "_a '.[priv].[e_arch]' ':<' _b" := (update_RData_priv_e_arch _a _b) (at level 1).

Definition update_RData_priv_e_arch_e_host_hcr_el2 (_a: RData) _b :=
  update_RData_priv_e_arch _a ((_a.(priv).(e_arch)).[e_host_hcr_el2] :< _b).
Notation "_a '.[priv].[e_arch].[e_host_hcr_el2]' ':<' _b" := (update_RData_priv_e_arch_e_host_hcr_el2 _a _b) (at level 1).

Definition update_RData_priv_e_arch_e_host_vttbr_el2 (_a: RData) _b :=
  update_RData_priv_e_arch _a ((_a.(priv).(e_arch)).[e_host_vttbr_el2] :< _b).
Notation "_a '.[priv].[e_arch].[e_host_vttbr_el2]' ':<' _b" := (update_RData_priv_e_arch_e_host_vttbr_el2 _a _b) (at level 1).

Definition update_RData_priv_e_regions_cnt (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_regions_cnt] :< _b).
Notation "_a '.[priv].[e_regions_cnt]' ':<' _b" := (update_RData_priv_e_regions_cnt _a _b) (at level 1).

Definition update_RData_priv_e_host_vttbr (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_host_vttbr] :< _b).
Notation "_a '.[priv].[e_host_vttbr]' ':<' _b" := (update_RData_priv_e_host_vttbr _a _b) (at level 1).

Definition update_RData_priv_e_pl011_base (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_pl011_base] :< _b).
Notation "_a '.[priv].[e_pl011_base]' ':<' _b" := (update_RData_priv_e_pl011_base _a _b) (at level 1).

Definition update_RData_priv_e_uart_8250_base (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_uart_8250_base] :< _b).
Notation "_a '.[priv].[e_uart_8250_base]' ':<' _b" := (update_RData_priv_e_uart_8250_base _a _b) (at level 1).

Definition update_RData_priv_e_ram_start_pfn (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_ram_start_pfn] :< _b).
Notation "_a '.[priv].[e_ram_start_pfn]' ':<' _b" := (update_RData_priv_e_ram_start_pfn _a _b) (at level 1).

Definition update_RData_priv_e_shadow_ctxts (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_shadow_ctxts] :< _b).
Notation "_a '.[priv].[e_shadow_ctxts]' ':<' _b" := (update_RData_priv_e_shadow_ctxts _a _b) (at level 1).

Definition update_RData_priv_e_s2_sys_reg_descs (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_s2_sys_reg_descs] :< _b).
Notation "_a '.[priv].[e_s2_sys_reg_descs]' ':<' _b" := (update_RData_priv_e_s2_sys_reg_descs _a _b) (at level 1).

Definition update_RData_priv_e_smmu_cfg (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_smmu_cfg] :< _b).
Notation "_a '.[priv].[e_smmu_cfg]' ':<' _b" := (update_RData_priv_e_smmu_cfg _a _b) (at level 1).

Definition update_RData_priv_e_smmus (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_smmus] :< _b).
Notation "_a '.[priv].[e_smmus]' ':<' _b" := (update_RData_priv_e_smmus _a _b) (at level 1).

Definition update_RData_priv_e_el2_smmu_num (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_el2_smmu_num] :< _b).
Notation "_a '.[priv].[e_el2_smmu_num]' ':<' _b" := (update_RData_priv_e_el2_smmu_num _a _b) (at level 1).

Definition update_RData_priv_e_vgic_cpu_base (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_vgic_cpu_base] :< _b).
Notation "_a '.[priv].[e_vgic_cpu_base]' ':<' _b" := (update_RData_priv_e_vgic_cpu_base _a _b) (at level 1).

Definition update_RData_priv_e_installed (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_installed] :< _b).
Notation "_a '.[priv].[e_installed]' ':<' _b" := (update_RData_priv_e_installed _a _b) (at level 1).

Definition update_RData_priv_e_per_cpu_data (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_per_cpu_data] :< _b).
Notation "_a '.[priv].[e_per_cpu_data]' ':<' _b" := (update_RData_priv_e_per_cpu_data _a _b) (at level 1).

Definition update_RData_priv_e_core_start (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_core_start] :< _b).
Notation "_a '.[priv].[e_core_start]' ':<' _b" := (update_RData_priv_e_core_start _a _b) (at level 1).

Definition update_RData_priv_e_core_end (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_core_end] :< _b).
Notation "_a '.[priv].[e_core_end]' ':<' _b" := (update_RData_priv_e_core_end _a _b) (at level 1).

Definition update_RData_priv_e_hacl_hash (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_hacl_hash] :< _b).
Notation "_a '.[priv].[e_hacl_hash]' ':<' _b" := (update_RData_priv_e_hacl_hash _a _b) (at level 1).

Definition update_RData_priv_e_hacl_hash0 (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_hacl_hash0] :< _b).
Notation "_a '.[priv].[e_hacl_hash0]' ':<' _b" := (update_RData_priv_e_hacl_hash0 _a _b) (at level 1).

Definition update_RData_priv_e__key (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e__key] :< _b).
Notation "_a '.[priv].[e__key]' ':<' _b" := (update_RData_priv_e__key _a _b) (at level 1).

Definition update_RData_priv_e_phys_mem_start (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_phys_mem_start] :< _b).
Notation "_a '.[priv].[e_phys_mem_start]' ':<' _b" := (update_RData_priv_e_phys_mem_start _a _b) (at level 1).

Definition update_RData_priv_e_phys_mem_size (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_phys_mem_size] :< _b).
Notation "_a '.[priv].[e_phys_mem_size]' ':<' _b" := (update_RData_priv_e_phys_mem_size _a _b) (at level 1).

Definition update_RData_priv_e_kvm_pool (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_kvm_pool] :< _b).
Notation "_a '.[priv].[e_kvm_pool]' ':<' _b" := (update_RData_priv_e_kvm_pool _a _b) (at level 1).

Definition update_RData_priv_e_vcpu_pool (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_vcpu_pool] :< _b).
Notation "_a '.[priv].[e_vcpu_pool]' ':<' _b" := (update_RData_priv_e_vcpu_pool _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_cpu_regs] :< _b).
Notation "_a '.[priv].[e_cpu_regs]' ':<' _b" := (update_RData_priv_e_cpu_regs _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_regs (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_regs] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_regs]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_regs _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_far_el2 (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_far_el2] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_far_el2]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_far_el2 _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_hpfar (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_hpfar] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_hpfar]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_hpfar _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_hcr_el2 (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_hcr_el2] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_hcr_el2]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_hcr_el2 _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_ec (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_ec] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_ec]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_ec _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_dirty (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_dirty] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_dirty]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_dirty _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e__flags (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e__flags] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e__flags]' ':<' _b" := (update_RData_priv_e_cpu_regs_e__flags _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_sys_regs (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_sys_regs] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_sys_regs]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_sys_regs _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_fp_regs (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_fp_regs] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_fp_regs]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_fp_regs _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_fp_regs_e_vregs (_a: RData) _b :=
  update_RData_priv_e_cpu_regs_e_fp_regs _a ((_a.(priv).(e_cpu_regs).(e_fp_regs)).[e_vregs] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_fp_regs].[e_vregs]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_fp_regs_e_vregs _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_fp_regs_e_fpsr (_a: RData) _b :=
  update_RData_priv_e_cpu_regs_e_fp_regs _a ((_a.(priv).(e_cpu_regs).(e_fp_regs)).[e_fpsr] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_fp_regs].[e_fpsr]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_fp_regs_e_fpsr _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_fp_regs_e_fpcr (_a: RData) _b :=
  update_RData_priv_e_cpu_regs_e_fp_regs _a ((_a.(priv).(e_cpu_regs).(e_fp_regs)).[e_fpcr] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_fp_regs].[e_fpcr]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_fp_regs_e_fpcr _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_fp_regs_e___reserved (_a: RData) _b :=
  update_RData_priv_e_cpu_regs_e_fp_regs _a ((_a.(priv).(e_cpu_regs).(e_fp_regs)).[e___reserved] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_fp_regs].[e___reserved]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_fp_regs_e___reserved _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_esr (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_esr] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_esr]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_esr _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e__vmid (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e__vmid] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e__vmid]' ':<' _b" := (update_RData_priv_e_cpu_regs_e__vmid _a _b) (at level 1).

Definition update_RData_priv_e_cpu_regs_e_sysregs_el2 (_a: RData) _b :=
  update_RData_priv_e_cpu_regs _a ((_a.(priv).(e_cpu_regs)).[e_sysregs_el2] :< _b).
Notation "_a '.[priv].[e_cpu_regs].[e_sysregs_el2]' ':<' _b" := (update_RData_priv_e_cpu_regs_e_sysregs_el2 _a _b) (at level 1).

Definition update_RData_priv_e_host_cpus (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_host_cpus] :< _b).
Notation "_a '.[priv].[e_host_cpus]' ':<' _b" := (update_RData_priv_e_host_cpus _a _b) (at level 1).

Definition update_RData_priv_e_host_ctxt (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_host_ctxt] :< _b).
Notation "_a '.[priv].[e_host_ctxt]' ':<' _b" := (update_RData_priv_e_host_ctxt _a _b) (at level 1).

Definition update_RData_priv_e_umem (_a: RData) _b :=
  update_RData_priv _a ((_a.(priv)).[e_umem] :< _b).
Notation "_a '.[priv].[e_umem]' ':<' _b" := (update_RData_priv_e_umem _a _b) (at level 1).

