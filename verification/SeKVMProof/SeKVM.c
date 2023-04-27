#include "hypsec.h"
//#include "hacl-20/Hacl_Ed25519.h"
//#include "hacl-20/Hacl_AES.h"

void __hyp_text v_panic(void) {
	u32 vmid = get_cur_vmid();
	u32 vcpuid = get_cur_vcpu_id();
	if (vmid) {
		print_string("\rvm\n");
		printhex_ul(get_shadow_ctxt(vmid, vcpuid, V_PC));
	} else {
		print_string("\rhost\n");
		printhex_ul(read_sysreg(elr_el2));
	}
	printhex_ul(ESR_ELx_EC(read_sysreg(esr_el2)));
	isb();
	//__hyp_panic();
}

void __hyp_text clear_phys_mem(u64 pfn) {
    el2_memset((void *)kern_hyp_va(pfn << PAGE_SHIFT), 0, PAGE_SIZE);
}

u64 __hyp_text get_exception_vector(u64 pstate) {
    // TODO
	return 0;
}

uint8_t* __hyp_text get_vm_public_key(u32 vmid) {
    struct el2_data *el2_data = get_el2_data_start();
    return el2_data->vm_info[vmid].public_key;
}

void __hyp_text set_vm_public_key(u32 vmid) {
    unsigned char *public_key_hex = "2ef2440a2b5766436353d07705b602bfab55526831460acb94798241f2104f3a";
    struct el2_data *el2_data = get_el2_data_start();
    el2_hex2bin(el2_data->vm_info[vmid].public_key, public_key_hex, 32);
}

uint8_t* __hyp_text get_vm_load_signature(u32 vmid, u32 load_idx) {
    struct el2_data *el2_data = get_el2_data_start();
    return el2_data->vm_info[vmid].load_info[load_idx].signature;
}

void __hyp_text set_vm_load_signature(u32 vmid, u32 load_idx) {
    unsigned char *signature_hex = "35e9848eb618e7150566716662b2f7d8944f0a4e8582ddeb2b209d2bae6b63d5f51ebf1dc54742227e45f7bbb9d4ba1d1f83b52b87a4ce99180aa9a548e7dd05";
    struct el2_data *el2_data = get_el2_data_start();
    el2_hex2bin(el2_data->vm_info[vmid].load_info[load_idx].signature,
		signature_hex, 64);
}

//make sure we only use get_int_ctxt to access general purposes regs
void __hyp_text clear_shadow_gp_regs(u32 vmid, u32 vcpuid) {
	struct el2_data *el2_data;
	int offset = VCPU_IDX(vmid, vcpuid);
  el2_data = get_el2_data_start();
	el2_memset(el2_data->shadow_vcpu_ctxt[offset].regs,
			0, sizeof(struct kvm_regs));
}

void __hyp_text int_to_shadow_fp_regs(u32 vmid, u32 vcpuid) {

}

void __hyp_text clear_phys_page(unsigned long pfn)
{
	unsigned long addr = (unsigned long)__el2_va(pfn << PAGE_SHIFT);
	el2_memset((void *)addr, 0, PAGE_SIZE);
}

u32 __hyp_text verify_image(u32 vmid, u32 load_idx) {
    uint8_t* signature;
    uint8_t* public_key;
    int result = 0;
    u64 size;
    //uint8_t signature1[64], key[32];

    size = get_vm_load_size(vmid, load_idx);
    public_key = get_vm_public_key(vmid);
    signature = get_vm_load_signature(vmid, load_idx);
    print_string("\rverifying image:\n");
    //printhex_ul(size);
    //result = Hacl_Ed25519_verify(public_key, size, (uint8_t *)addr, signature);
    //result = Hacl_Ed25519_verify(key, size, (char *)addr, signature1);
    print_string("\r[result]\n");
    printhex_ul(result);
    return 1;
}

void dump_output(char *str, uint8_t *out, int len)
{
	int i;
	unsigned s = 0;
	printk("%s\n", str);
	for (i = 0; i < len; i++) {
		s = out[i];
		printk("%x", s);
	}
	printk("\n");
}

void __hyp_text dump_output_el2(uint8_t *out, int len)
{
	int i;
	unsigned long s = 0;
	for (i = 0; i < len; i++) {
		s = out[i];
		printhex_ul(s);
	}
}

/*
void __hyp_text test_aes(struct el2_data *el2_data)
{
	uint8_t sbox[256];
	uint8_t input[32] = { 0x10, 0x21, 0x32, 0x43, 0x54, 0x65, 0x76, 0x87, 0x98, 0xa9, 0xba, 0xcb, 0xdc, 0xed, 0xfe, 0x0f,
		0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x00};
	uint8_t out[32], out1[32];

	el2_memset(out, 0, sizeof(uint8_t) * 32);
	el2_memset(out1, 0, sizeof(uint8_t) * 32);
	//dump_output_el2(input, 16);
	dump_output("plain", input, 32);
	AES_encrypt_buffer(out, input, el2_data->key, 32);
	//dump_output_el2(out, 16);
	dump_output("crypt", out, 32);

	el2_memset(sbox, 0, sizeof(uint8_t) * 32);
	AES_decrypt_buffer(out1, out, el2_data->key, 32);
	//dump_output_el2(out1, 16);
	dump_output("decrypt", out1, 32);
}
*/

#if 0
void    int_to_shadow_decrypt(u32 vmid, u32 vcpuid);
void    shadow_to_int_encrypt(u32 vmid, u32 vcpuid);
#endif

void __hyp_text set_per_cpu_host_regs(u64 hr)
{
	struct el2_data *el2_data = get_el2_data_start();
	int pcpuid = get_cpuid();
	el2_data->per_cpu_data[pcpuid].host_regs = (struct s2_host_regs *)hr;
};

void __hyp_text set_host_regs(int nr, u64 value)
{
	struct el2_data *el2_data = get_el2_data_start();
	int pcpuid = get_cpuid();
	el2_data->per_cpu_data[pcpuid].host_regs->regs[nr] = value;
};

u64 __hyp_text get_host_regs(int nr)
{
	struct el2_data *el2_data = get_el2_data_start();
	int pcpuid = get_cpuid();
	return el2_data->per_cpu_data[pcpuid].host_regs->regs[nr];
};

//MMIOOps
u32 __hyp_text get_smmu_cfg_vmid(u32 cbndx, u32 num)
{
	struct el2_data *el2_data = get_el2_data_start();
	u32 index;
	index = SMMU_NUM_CTXT_BANKS * num + cbndx;
	return el2_data->smmu_cfg[index].vmid;
}

void __hyp_text set_smmu_cfg_vmid(u32 cbndx, u32 num, u32 vmid)
{
	struct el2_data *el2_data = get_el2_data_start();
	u32 index;
	index = SMMU_NUM_CTXT_BANKS * num + cbndx;
	el2_data->smmu_cfg[index].vmid = vmid;
}

u64 __hyp_text get_smmu_cfg_hw_ttbr(u32 cbndx, u32 num)
{
	struct el2_data *el2_data = get_el2_data_start();
	u32 index;
	index = SMMU_NUM_CTXT_BANKS * num + cbndx;
	return el2_data->smmu_cfg[index].hw_ttbr;
}

void __hyp_text set_smmu_cfg_hw_ttbr(u32 cbndx, u32 num, u64 hw_ttbr)
{
	struct el2_data *el2_data = get_el2_data_start();
	u32 index;
	index = SMMU_NUM_CTXT_BANKS * num + cbndx;
	el2_data->smmu_cfg[index].hw_ttbr = hw_ttbr;
}

//MMIOAux
u32 __hyp_text get_smmu_num(void)
{
	struct el2_data *el2_data = get_el2_data_start();
	return el2_data->el2_smmu_num;
}	

u64 __hyp_text get_smmu_size(u32 num)
{
	struct el2_data *el2_data = get_el2_data_start();
	return el2_data->smmus[num].size;
}

u32 __hyp_text get_smmu_num_context_banks(u32 num)
{
	struct el2_data *el2_data = get_el2_data_start();
	return el2_data->smmus[num].num_context_banks;
}

u32 __hyp_text get_smmu_pgshift(u32 num)
{
	struct el2_data *el2_data = get_el2_data_start();
	return el2_data->smmus[num].pgshift;
}

void __hyp_text smmu_pt_clear(u32 cbndx, u32 num) {
	struct el2_data *el2_data = get_el2_data_start();
	u32 index;
	u64 va;
	index = SMMU_NUM_CTXT_BANKS * num + cbndx;
	va = (u64)__el2_va(el2_data->smmu_cfg[index].hw_ttbr); 
	el2_memset((void *)va, 0, PAGE_SIZE * 2);
};
#include "hypsec.h"

/*
 * BootAux
 */

void __hyp_text unmap_and_load_vm_image(u32 vmid, u64 target_addr, u64 remap_addr, u64 num)
{
	u64 gfn; 
	u64 start = (target_addr & ~(PMD_SIZE - 1));
	u64 end = target_addr + num * PAGE_SIZE;
	u64 mb_num = (end - start + (PMD_SIZE - 1)) / PMD_SIZE;

	while (mb_num > 0UL) {
		u64 pte = walk_s2pt(COREVISOR, remap_addr);
		u64 pa = phys_page(pte);
		u64 pfn = (pa & ~(PMD_SIZE - 1)) / PAGE_SIZE;
		gfn = start >> PAGE_SHIFT;
		if (pfn == 0UL) {
			v_panic();
		} else {
			//TODO: call to prot_and_map_vm_s2pt
			//ret = assign_pfn_to_vm(vmid, gfn, pfn, 512);
			//if (ret == 0UL)
			//	map_pfn_vm(vmid, start, pa, 2U);
			prot_and_map_vm_s2pt(vmid, gfn * PAGE_SIZE, pfn * PAGE_SIZE, 2U);
		}
		start += PMD_SIZE;
		remap_addr = remap_addr + (start - target_addr);
		target_addr = start;
		mb_num--;
	}

	/*while (num > 0UL)
	{
		u64 pte = walk_s2pt(COREVISOR, remap_addr);
		u64 pa = phys_page(pte);
		u64 pfn = pa / PAGE_SIZE;
		gfn = (target_addr & ~(PMD_SIZE - 1)) >> PAGE_SHIFT;
		if (pfn == 0UL) {
			v_panic();
		} else {
			//print_string("\rmap boot images\n");
	        	//printhex_ul(pfn);
			set_pfn_to_vm(vmid, gfn, pfn, 1);
			//ret = assign_pfn_to_vm(vmid, gfn, pfn, pfn, 1);
			//if (ret == 0UL)
			//	map_pfn_vm(vmid, target_addr, pa, 3U);
		}
		remap_addr += PAGE_SIZE;
		target_addr += PAGE_SIZE;
		num--;
	}*/
}
#include "hypsec.h"

/*
 * BootCore
 */

u32 __hyp_text gen_vmid()
{
	u32 vmid;
	acquire_lock_core();
	vmid = get_next_vmid();
	if (vmid < MAX_VM_NUM) {
		set_next_vmid(vmid + 1U);
	}
	else {
		vmid = INVALID;
	}
	release_lock_core();
	return vmid;
}

u64 __hyp_text alloc_remap_addr(u64 pgnum)
{
	u64 remap;
	acquire_lock_core();
	remap = get_next_remap_ptr(); 
	if (remap + pgnum * PAGE_SIZE < EL2_REMAP_END)
		set_next_remap_ptr(remap + pgnum * PAGE_SIZE);
	else {
		print_string("\rpanic in remap\n");
		v_panic();
	}
	release_lock_core();
	return remap;
}
#include "hypsec.h"

/*
 * BootOps
 */

u32 __hyp_text vm_is_inc_exe(u32 vmid)
{
    u32 inc_exe;
    acquire_lock_vm(vmid);
    inc_exe = get_vm_inc_exe(vmid);
    release_lock_vm(vmid);
    return inc_exe;
}

void __hyp_text boot_from_inc_exe(u32 vmid)
{
    acquire_lock_vm(vmid);
    set_vm_inc_exe(vmid, 1U);
    release_lock_vm(vmid);
}

void __hyp_text set_vcpu_active(u32 vmid, u32 vcpuid)
{
    u32 vm_state, vcpu_state;
    acquire_lock_vm(vmid);
    vm_state = get_vm_state(vmid);
    vcpu_state = get_vcpu_state(vmid, vcpuid);
    if (vm_state == VERIFIED && vcpu_state == READY) {
        set_vcpu_state(vmid, vcpuid, ACTIVE);
    }
	else {
		print_string("\rset vcpu active\n");
		v_panic();
	}
    release_lock_vm(vmid);
}

void __hyp_text set_vcpu_inactive(u32 vmid, u32 vcpuid)
{
    u32 vcpu_state;
    acquire_lock_vm(vmid);
    vcpu_state = get_vcpu_state(vmid, vcpuid);
    if (vcpu_state == ACTIVE) {
        set_vcpu_state(vmid, vcpuid, READY);
    }
    else {
	print_string("\rset vcpu inactive\n");
	v_panic();
    }
    release_lock_vm(vmid);
}

u64 __hyp_text v_search_load_info(u32 vmid, u64 addr)
{
    u32 load_info_cnt, load_idx = -1;
    u64 ret; 
    acquire_lock_vm(vmid);
    load_info_cnt = get_vm_next_load_idx(vmid);
    load_idx = 0U;
    ret = 0UL;
    while (load_idx < load_info_cnt)
    {
        u64 base = get_vm_load_addr(vmid, load_idx);
        u64 size = get_vm_load_size(vmid, load_idx);
        u64 remap_addr = get_vm_remap_addr(vmid, load_idx);
        if (addr >= base && addr < base + size)
        {
            ret = (addr - base) + remap_addr;
        }
        load_idx += 1U;
    }
    release_lock_vm(vmid);
    return ret;
} 

u32 __hyp_text register_vcpu(u32 vmid, u32 vcpuid)
{
    u32 vm_state, vcpu_state;
    u64 vcpu;
    acquire_lock_vm(vmid);
    vm_state = get_vm_state(vmid);
    vcpu_state = get_vcpu_state(vmid, vcpuid);
    if (vm_state == READY || vcpu_state == UNUSED) {
	vcpu = get_shared_vcpu(vmid, vcpuid);
        set_vm_vcpu(vmid, vcpuid, vcpu);
	set_vcpu_state(vmid, vcpuid, READY);
        set_shadow_ctxt(vmid, vcpuid, V_DIRTY, INVALID64);
    }
    else {
	print_string("\rregister vcpu\n");
	v_panic(); 
    }
    release_lock_vm(vmid);
    return 0U;
}

u32 __hyp_text register_kvm()
{
    u32 vmid = gen_vmid();
    u32 state;
    u64 kvm;

    acquire_lock_vm(vmid);
    state = get_vm_state(vmid);
    if (state == UNUSED) {
        set_vm_inc_exe(vmid, 0U);
        kvm = get_shared_kvm(vmid);
        set_vm_kvm(vmid, kvm);
        init_s2pt(vmid);
	set_vm_public_key(vmid);
        set_vm_state(vmid, READY);
    }
    else {
	print_string("\rregister kvm\n");
	v_panic();        
    }
    release_lock_vm(vmid);
    return vmid;
}

u32 __hyp_text set_boot_info(u32 vmid, u64 load_addr, u64 size)
{
    u32 state, load_idx = -1;
    u64 page_count, remap_addr;
    acquire_lock_vm(vmid);
    state = get_vm_state(vmid);
    if (state == READY)
    {
        load_idx = get_vm_next_load_idx(vmid);
        if (load_idx < MAX_LOAD_INFO_NUM)
        {
            set_vm_next_load_idx(vmid, load_idx + 1U);
            page_count = (size + PAGE_SIZE - 1UL) / PAGE_SIZE;
            remap_addr = alloc_remap_addr(page_count);
            set_vm_load_addr(vmid, load_idx, load_addr);
            set_vm_load_size(vmid, load_idx, size);
            set_vm_remap_addr(vmid, load_idx, remap_addr);
            set_vm_mapped_pages(vmid, load_idx, 0U);
	        set_vm_load_signature(vmid, load_idx);
        }
    }
    release_lock_vm(vmid);
    return load_idx;
}

void __hyp_text remap_vm_image(u32 vmid, u64 pfn, u32 load_idx)
{
    u32 state, load_info_cnt;
    u64 size, page_count, mapped, remap_addr, target;
    acquire_lock_vm(vmid);
    state = get_vm_state(vmid);
    if (state == READY)
    {
        load_info_cnt = get_vm_next_load_idx(vmid);
        if (load_idx < load_info_cnt)
        {
            size = get_vm_load_size(vmid, load_idx);
            page_count = (size + PAGE_SIZE - 1UL) / PAGE_SIZE;
            mapped = get_vm_mapped_pages(vmid, load_idx);
            remap_addr = get_vm_remap_addr(vmid, load_idx);
            target = remap_addr + mapped * PAGE_SIZE;
            if (mapped < page_count)
            {
                mmap_s2pt(COREVISOR, target, 3UL, pfn * PAGE_SIZE + 0x40000000000753LL);
                set_vm_mapped_pages(vmid, load_idx, mapped + 1UL);
            }
        }
    }
    else {
	print_string("\remap vm image\n");
        v_panic();
    }
    release_lock_vm(vmid);
}

void __hyp_text verify_and_load_images(u32 vmid)
{
    u32 state, load_info_cnt, load_idx, valid;
    u64 load_addr, remap_addr, mapped;
    acquire_lock_vm(vmid);
    state = get_vm_state(vmid);
    if (state == READY)
    {
        load_info_cnt = get_vm_next_load_idx(vmid);
        load_idx = 0U;
        while (load_idx < load_info_cnt)
        {
            load_addr = get_vm_load_addr(vmid, load_idx);
            remap_addr = get_vm_remap_addr(vmid, load_idx);
            mapped = get_vm_mapped_pages(vmid, load_idx);
	    unmap_and_load_vm_image(vmid, load_addr, remap_addr, mapped);
            valid = verify_image(vmid, load_idx);
            if (valid == 0U) {
		v_panic();
            }
            load_idx += 1U;
        }
        set_vm_state(vmid, VERIFIED);
    }
    else
	v_panic();
    release_lock_vm(vmid);
}

//NEW SMMU CODE
/////////////////////////////////////////////////////////////////////////////
void __hyp_text alloc_smmu(u32 vmid, u32 cbndx, u32 index) 
{
	u32 state;

	acquire_lock_vm(vmid);
	if (HOSTVISOR < vmid && vmid < COREVISOR) 
	{
		state = get_vm_state(vmid);
		if (state == VERIFIED) 
		{
			print_string("\rpanic: alloc_smmu\n");
			v_panic();
		}
	}
	//FIXME: WHERE IS THE FOLLOWING FUNCTION?
	//init_smmu_spt(cbndx, index);
	release_lock_vm(vmid);
}

void __hyp_text assign_smmu(u32 vmid, u32 pfn, u32 gfn) 
{
	u32 state;

	acquire_lock_vm(vmid);
	if (HOSTVISOR < vmid && vmid < COREVISOR) 
	{
		state = get_vm_state(vmid);
		if (state == VERIFIED) 
		{
			print_string("\rpanic: assign_smmu\n");
			v_panic();
		}
		assign_pfn_to_smmu(vmid, gfn, pfn);
	}
	release_lock_vm(vmid);
}

void __hyp_text map_smmu(u32 vmid, u32 cbndx, u32 index, u64 iova, u64 pte)
{
	u32 state;
	acquire_lock_vm(vmid);
	if (HOSTVISOR < vmid && vmid < COREVISOR) 
	{
		state = get_vm_state(vmid);
		if (state == VERIFIED) 
		{
			print_string("\rpanic: map_smmu\n");
			v_panic();
		}
	}
	update_smmu_page(vmid, cbndx, index, iova, pte);
	release_lock_vm(vmid);
}

void __hyp_text clear_smmu(u32 vmid, u32 cbndx, u32 index, u64 iova) 
{
	acquire_lock_vm(vmid);
	if (HOSTVISOR < vmid && vmid < COREVISOR) 
	{
		/*
		state = get_vm_state(vmid);
		if (state == VERIFIED) 
		{
			print_string("\rpanic: clear_smmu\n");
			v_panic();
		}
		*/
	}
	unmap_smmu_page(cbndx, index, iova);
	release_lock_vm(vmid);
}

void __hyp_text map_io(u32 vmid, u64 gpa, u64 pa)
{
	u32 state;

	acquire_lock_vm(vmid);
	state = get_vm_state(vmid);
	//if (state == READY) 
	//{
		__kvm_phys_addr_ioremap(vmid, gpa, pa);
	//}
	//else
	//{
	//	print_string("\rpanic: map_io\n");
	//	v_panic();
	//}
	release_lock_vm(vmid);
} 
#include <linux/types.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_hyp.h>
#include <linux/mman.h>
#include <linux/kvm_host.h>
#include <linux/io.h>
#include <trace/events/kvm.h>
#include <asm/pgalloc.h>
#include <asm/cacheflush.h>
#include <asm/kvm_arm.h>
#include <asm/kvm_mmu.h>
#include <asm/kvm_mmio.h>
#include <asm/kvm_emulate.h>
#include <asm/virt.h>
#include <asm/kernel-pgtable.h>
#include <asm/hypsec_host.h>
#include <asm/spinlock_types.h>
#include <linux/serial_reg.h>
#include <linux/amba/serial.h>

#if 0
//UNCOMMENT THE FOLLOWING FOR M400
static inline void __hyp_text senduart(char word)
{
	unsigned long base, addr;
	int offset, timeout = 10000;
	struct el2_data *el2_data = get_el2_data_start();
	u8 val;

	base = el2_data->uart_8250_base;
	//TODO: use macro instead
	offset = 5;
	addr = offset + base;

	for (;;) {
		asm volatile(ALTERNATIVE("ldrb %w0, [%1]",
					 "ldarb %w0, [%1]",
					 ARM64_WORKAROUND_DEVICE_LOAD_ACQUIRE)
					: "=r" (val) : "r" (base));
	
		asm volatile("dsb ld"  : : : "memory");
		if ((val & 0x20) == 0x20 || --timeout == 0)
				break ;
	}

	offset = 0;
	addr = offset + base;
	asm volatile("dsb st"  : : : "memory");
	asm volatile("strb %w0, [%1]" : : "rZ" (word), "r" (base));
}

#else
static inline unsigned long __hyp_text waituart(void)
{
	unsigned long ret, base, REG_FR;
	struct el2_data *el2_data = get_el2_data_start();

	base = el2_data->pl011_base;
	REG_FR = UART01x_FR;

	asm volatile (
		"ldrb   w26, [%1, %2]\n\t"
		"dsb	ld\n\t"
		"mov	%0, x26\n\t"
		:"=r"(ret)
		:"r"(base), "r"(REG_FR)
		:"x26", "cc"
	);

	return ret;
}

static inline void __hyp_text senduart(char word)
{
	unsigned long base;
	struct el2_data *el2_data = get_el2_data_start();

	base = el2_data->pl011_base;

	while (waituart() & UART01x_FR_TXFF)
		cpu_relax();

	asm volatile (
		"mov    x14, %0\n\t"
		"strb   w14, [%1, #0]\n\t"
		"dsb    st\n\t"
		:
		:"r"(word), "r"(base)
		:"x14", "cc"
	);
}
#endif

void __hyp_text printhex_ul(unsigned long input)
{
	char word;
	int len = 60;
	struct el2_data *el2_data = get_el2_data_start();

	stage2_spin_lock(&el2_data->console_lock);

	word = '\r';
	senduart(word);

	word = '0';
	senduart(word);
	word = 'x';
	senduart(word);

	while (len >= 0) {
		word = (input >> len) & 0xf;
		if (word < 10)
			word += '0';
		else
			word += 'a' - 10;
		senduart(word);
		len -= 4;
	}
	word = '\r';
	senduart(word);

	word = '\n';
	senduart(word);

	stage2_spin_unlock(&el2_data->console_lock);
}

void __hyp_text print_string(char *input)
{
	char *word;
	struct el2_data *el2_data = get_el2_data_start();

	stage2_spin_lock(&el2_data->console_lock);

	word = input;
	while (*word != '\0') {
		senduart(*word);
		word++;
	}

	stage2_spin_unlock(&el2_data->console_lock);
}

void __hyp_text el2_memset(void *b, int c, int len)
{
	char *s = b;

        while(len--)
            *s++ = c;
}

void __hyp_text el2_memcpy(void *dest, void *src, size_t len)
{
	char *cdest = dest;
	char *csrc = src;

        while(len--)
            *cdest++ = *csrc++;
}

int __hyp_text el2_memcmp(void *dest, void *src, size_t len)
{
	char *cdest = dest;
	char *csrc = src;
	while(len--) {
		if (*cdest++ != *csrc++)
			return 1;
	}
	return 0;
}

/**
 * Assumes lowercase char (if a letter).
 * Copied from lib/hexdump.c
 */
int __hyp_text el2_hex_to_bin(char ch)
{
	if ((ch >= '0') && (ch <= '9'))
		return ch - '0';
	if ((ch >= 'a') && (ch <= 'f'))
		return ch - 'a' + 10;
	return -1;
}

/**
 * hex2bin - convert an ascii hexadecimal string to its binary representation
 * Copied from lib/hexdump.c
 *
 * @dst: binary result
 * @src: ascii hexadecimal string
 * @count: result length
 *
 * Return 0 on success, -1 in case of bad input.
 */
int __hyp_text el2_hex2bin(unsigned char *dst, const char *src, int count)
{
	while (count--) {
		int hi = el2_hex_to_bin(*src++);
		int lo = el2_hex_to_bin(*src++);

		if ((hi < 0) || (lo < 0))
			return -1;

		*dst++ = (hi << 4) | lo;
	}
	return 0;
}
#include "hypsec.h"

void __hyp_text v_clear_vm_stage2_range(u32 vmid, u64 start, u64 size)
{
	u32 power;

	power = get_vm_poweron(vmid);
	if (power == 0UL)
	{
		clear_vm_range(vmid, start / PAGE_SIZE, size / PAGE_SIZE);
	}
}

void __hyp_text v_el2_arm_lpae_map(u64 iova, u64 paddr, u64 prot, u32 cbndx, u32 index)
{
	u64 pfn, gfn, pte;

	pfn = paddr / PAGE_SIZE;
	gfn = iova / PAGE_SIZE;
	pte = smmu_init_pte(prot, paddr);
	/* FIXME: where is this guy below? */
	smmu_assign_page(cbndx, index, pfn, gfn);
	smmu_map_page(cbndx, index, iova, pte);
}

void __hyp_text v_kvm_phys_addr_ioremap(u32 vmid, u64 gpa, u64 pa, u64 size)
{
	u64 pte;
	u64 n;

	n = (size + (PAGE_SIZE - 1)) / PAGE_SIZE;
	while (n > 0)
	{
		map_io(vmid, gpa, pa);
		gpa += PAGE_SIZE;
		pa += PAGE_SIZE;
		n -= 1;
	}
}
#include "hypsec.h"

/*
 * MemManager
 */

extern void reject_invalid_mem_access(phys_addr_t addr);

void __hyp_text map_page_host(u64 addr)
{
	u64 pfn = addr / PAGE_SIZE;
	u64 new_pte = 0UL, perm;
	u32 owner, count;

	acquire_lock_s2page();
	owner = get_pfn_owner(pfn);
	count = get_pfn_count(pfn);
	if (owner == INVALID_MEM) {
		perm = 0x40000000000747LL;
		perm |= S2_RDWR;
		new_pte = (addr & PAGE_MASK) + perm;
		mmap_s2pt(HOSTVISOR, addr, 3U, new_pte);
	} else {
		if (owner == HOSTVISOR || count > 0U) {
			perm = 0xfff;
			new_pte = pfn * PAGE_SIZE + perm;
			mmap_s2pt(HOSTVISOR, addr, 3U, new_pte);
		} else {
			//reject_invalid_mem_access(addr);
			perm = 0xfff;
			new_pte = pfn * PAGE_SIZE + perm;
			mmap_s2pt(HOSTVISOR, addr, 3U, new_pte);
			print_string("\rfaults on host\n");
			printhex_ul(addr);
			v_panic();
		}
	}
	release_lock_s2page();
}

void __hyp_text clear_vm_page(u32 vmid, u64 pfn)
{
    u32 owner;
    acquire_lock_s2page();
    owner = get_pfn_owner(pfn);
    if (owner == vmid) {
        set_pfn_owner(pfn, HOSTVISOR);
        set_pfn_count(pfn, 0U);
        set_pfn_map(pfn, 0UL);
	clear_phys_page(pfn);
    }
    release_lock_s2page();
}

void __hyp_text assign_pfn_to_vm(u32 vmid, u64 gfn, u64 pfn)
{
	u64 map;
	u32 owner, count;

	acquire_lock_s2page();
	//ret = check_pfn_to_vm(vmid, gfn, pfn, pgnum);

	owner = get_pfn_owner(pfn);
	count = get_pfn_count(pfn);
	if (owner == HOSTVISOR) {
		if (count == 0U) {
			set_pfn_owner(pfn, vmid);
			clear_pfn_host(pfn);
			set_pfn_map(pfn, gfn);	
		} else {
			//pfn is mapped to a hostvisor SMMU table
			print_string("\rassign pfn used by host smmu device\n");
			v_panic();
		}
	} else if (owner == vmid) {
		map = get_pfn_map(pfn);
		/* the page was mapped to another gfn already! */
		// if gfn == map, it means someone in my VM has mapped it
		if (gfn == map) {
 			if (count == INVALID_MEM) {
				set_pfn_count(pfn, 0U);
			}
		} else {
			print_string("\rmap != gfn || count != INVALID_MEM\n");
			v_panic();
		}
	}

	release_lock_s2page();
}

/*
void __hyp_text assign_pfn_to_smmu(u32 vmid, u64 gfn, u64 pfn)
{
    u32 owner, count;
    u64 map;

    acquire_lock_s2page();
    owner = get_pfn_owner(pfn);
    count = get_pfn_count(pfn);
    map = get_pfn_map(pfn);

    if (owner == HOSTVISOR) {
	if (vmid == HOSTVISOR) {
	    //print_string("\rsmmu: map to host\n");
	    //printhex_ul(pfn);
	    set_pfn_count(pfn, count + 1U);
	} else {
	    if (count == 0) {
		set_pfn_to_vm(vmid, gfn, pfn, 1UL);
		set_pfn_count(pfn, INVALID_MEM);
	    }
	    else {
                print_string("\rpanic in assign_pfn_to_smmu: count is invalid\n");
		print_string("\rpfn\n");
                printhex_ul(pfn);
		print_string("\rcount\n");
		printhex_ul(count);
		v_panic();
	    }
	}
    } else if (owner == vmid) {
	if (gfn != map) {
        	print_string("\rpanic in assign_pfn_to_smmu: owner != vmid\n");
		v_panic();
	}
    } else if (owner == COREVISOR) {
	if (map == 0) {
		print_string("\rpanic in assign_pfn_to_smmu: owner = core\n");
		v_panic();
	}
    }
    release_lock_s2page();
}
*/

extern void t_mmap_s2pt(phys_addr_t addr, u64 desc, int level, u32 vmid);
void __hyp_text map_pfn_vm(u32 vmid, u64 addr, u64 pte, u32 level)
{
	u64 paddr = phys_page(pte);

	/* We give the VM RWX permission now. */
	u64 perm = 0xfff;
	u64 size = PAGE_SIZE;

	if (level == 2U) {
		/* FIXME: verified code has pte = paddr | perm; */
		pte = paddr + perm;
		pte &= ~PMD_TABLE_BIT;
		size = PMD_SIZE;
	} else if (level == 3U) {
		pte = paddr + perm;
	}
	mmap_s2pt(vmid, addr, level, pte);
	isb();
	__flush_dcache_area(__el2_va(pte), size);
}


void __hyp_text __kvm_phys_addr_ioremap(u32 vmid, u64 gpa, u64 pa)
{
	u64 pte;
	u32 owner;

	pte = pa + (0x40000000000747LL | S2_RDWR);

	acquire_lock_s2page();
	owner = get_pfn_owner(pa >> PAGE_SHIFT);
	// check if pfn is truly within an I/O area
	if (owner == INVALID_MEM) 
		mmap_s2pt(vmid, gpa, 3U, pte);
	release_lock_s2page();
}

void __hyp_text grant_vm_page(u32 vmid, u64 pfn)
{
    u32 owner, count;
    acquire_lock_s2page();
    owner = get_pfn_owner(pfn);
    count = get_pfn_count(pfn);
    if (owner == vmid && count < MAX_SHARE_COUNT) {
        set_pfn_count(pfn, count + 1U);
    }
    release_lock_s2page();
}

void __hyp_text revoke_vm_page(u32 vmid, u64 pfn)
{
    u32 owner, count;
    acquire_lock_s2page();
    owner = get_pfn_owner(pfn);
    count = get_pfn_count(pfn);
    if (owner == vmid && count > 0U) {
        set_pfn_count(pfn, count - 1U);
        if (count == 1U) {
            clear_pfn_host(pfn);
        }
    }
    release_lock_s2page();
}

#define SMMU_HOST_OFFSET 1000000000UL
void __hyp_text assign_pfn_to_smmu(u32 vmid, u64 gfn, u64 pfn)
{
	u64 map;
	u32 owner, count;

	acquire_lock_s2page();
	owner = get_pfn_owner(pfn);
	count = get_pfn_count(pfn);
	map = get_pfn_map(pfn);

	if (owner == HOSTVISOR) {
		if (count == 0) {
			clear_pfn_host(pfn);
			set_pfn_owner(pfn, vmid);
			set_pfn_map(pfn, gfn);
			set_pfn_count(pfn, INVALID_MEM);
		}
		else {
			print_string("\r\assign_to_smmu: host pfn count\n");
			v_panic();
		}
	}
	else if (owner != vmid)
	{
		if (owner != INVALID_MEM) { 
			print_string("\rvmid\n");
			printhex_ul(vmid);
			print_string("\rowner\n");
			printhex_ul(owner);
			print_string("\rpfn\n");
			printhex_ul(pfn);
			print_string("\rassign_to_smmu: owner unknown\n");
			v_panic();
		}
	}
	release_lock_s2page();
}

void __hyp_text update_smmu_page(u32 vmid, u32 cbndx, u32 index, u64 iova, u64 pte)
{
	u64 pfn, gfn;
	u32 owner, count, map;

	acquire_lock_s2page();
	pfn = phys_page(pte) / PAGE_SIZE;
	gfn = iova / PAGE_SIZE;

	owner = get_pfn_owner(pfn);
	map = get_pfn_map(pfn);
	if (owner == HOSTVISOR) {
		count = get_pfn_count(pfn);
		//if (count < EL2_SMMU_CFG_SIZE) {
			set_pfn_count(pfn, count + 1U);
		//}
		map = pfn + SMMU_HOST_OFFSET;
	}

	if (owner == INVALID_MEM || (vmid == owner && gfn == map)) {
		map_spt(cbndx, index, iova, pte);
	}
	release_lock_s2page();
}

void __hyp_text unmap_smmu_page(u32 cbndx, u32 index, u64 iova)
{
	u64 pte, pfn; 
	u32 owner, count;

	acquire_lock_s2page();
	pte = unmap_spt(cbndx, index, iova);
	pfn = phys_page(pte) / PAGE_SIZE;
	owner = get_pfn_owner(pfn);
	if (owner == HOSTVISOR) {
		count = get_pfn_count(pfn);
		if (count > 0U) {
			set_pfn_count(pfn, count - 1U);
		}
	}
	release_lock_s2page();
}
#include "hypsec.h"

/*
 * MemManagerAux
 */

/*
u32 __hyp_text check_pfn_to_vm(u32 vmid, u64 pfn, u32 pgnum, u64 apfn)
{
       u32 i = 0;
       u32 ret = 0;
       u32 owner;

       while (i < pgnum) {
               owner = get_pfn_owner(pfn);
               if (owner != HOSTVISOR) {
                       if (owner != vmid)
                               v_panic();
                       else {
                               // ret = 2 -> apfn.owenr != HOSTVISOR
                               // ret = 1 -> apfn.owner == HOSTVISOR but not all pages owner == HOSTVISOR
                               // ret = 0 -> all pages' owner == HOSTVISOR
                               if (pfn == apfn)
                                       ret = 2;
                               else if (ret == 0)
                                       ret = 1;
                       }
               }
               pfn++;
               i++;
       }

       return ret;
}

void __hyp_text set_pfn_to_vm(u32 vmid, u64 pfn, u64 pgnum)
{
	while (pgnum > 0UL) {
		set_pfn_owner(pfn, vmid);
		clear_pfn_host(pfn);
		pfn++;
		pgnum--;

	}
}
*/

u32 __hyp_text check_pfn_to_vm(u32 vmid, u64 gfn, u64 pfn, u64 pgnum, u64 apfn)
{
	u32 ret = 0U;

	while (pgnum > 0UL) {
		u32 owner = get_pfn_owner(pfn);
		u32 count = get_pfn_count(pfn);
		if (owner == HOSTVISOR) {
			//pfn is mapped to a hostvisor SMMU table
			if (count != 0U) {
				print_string("\rassign pfn used by host smmu device\n");
				v_panic();
			}
			else {
			    set_pfn_owner(pfn, vmid);
			    clear_pfn_host(pfn);
			    set_pfn_map(pfn, gfn);
			}
		} else if (owner == vmid) {
			u64 map = get_pfn_map(pfn);
			/* the page was mapped to another gfn already! */
			// if gfn == map, it means someone in my VM has mapped it
			if (gfn == map) {
 				if (count == INVALID_MEM) {
					set_pfn_count(pfn, 0U);
				}
				else {
					ret = 1U;
				}
			}
			else {
				print_string("\rmap != gfn || count != INVALID_MEM\n");
				v_panic();
			}
		} else  {
			v_panic();
		}
		pgnum -= 1UL;
		pfn += 1UL;
		gfn += 1UL;
	}
	return ret;
}

void __hyp_text set_pfn_to_vm(u32 vmid, u64 gfn, u64 pfn, u64 pgnum)
{
    u32 owner;
    while (pgnum > 0UL) {
	owner = get_pfn_owner(pfn);
	if (owner == HOSTVISOR) {
	    set_pfn_owner(pfn, vmid);
	    clear_pfn_host(pfn);
            set_pfn_map(pfn, gfn);
	}
	set_pfn_count(pfn, 0U);
	pfn += 1UL;
        gfn += 1UL;
	pgnum -= 1UL;
    }
}
#include "hypsec.h"

/*
 * MemRegion
 */

u32 __hyp_text mem_region_search(u64 addr)
{
	u32 total_regions = get_mem_region_cnt();
	u32 i = 0U, res = INVALID_MEM;

	while (i < total_regions)
	{
		u64 base = get_mem_region_base(i);
		u64 size = get_mem_region_size(i);
		if (base <= addr && addr < base + size)
		{
			res = i;
		}
		i = i + 1U;
	}
	return res;
}
#include "hypsec.h"

/*
 * MemoryOps
 */

void __hyp_text __clear_vm_range(u32 vmid, u64 start, u64 size)
{
	u64 pfn = start >> PAGE_SHIFT;
	u64 num = size / PAGE_SIZE;
	while (num > 0UL)  {
		clear_vm_page(vmid, pfn);
		pfn += 1UL;
		num -= 1UL;
	}
}

void __hyp_text __clear_vm_stage2_range(u32 vmid, u64 size)
{
	u32 poweron = get_vm_poweron(vmid);
	if (size == KVM_PHYS_SIZE && poweron == 0U) {
		u32 n = get_mem_region_cnt(), i = 0U;
		while (i < n) {
			u64 base = get_mem_region_base(i);
			u64 sz = get_mem_region_size(i);
			u64 flags = get_mem_region_flag(i);
			if ((flags & MEMBLOCK_NOMAP) == 0) 
				__clear_vm_range(vmid, base, sz);
			i++;
		}
	}
}

void __hyp_text clear_vm_range(u32 vmid, u64 pfn, u64 num)
{
	while (num > 0UL)
	{
		clear_vm_page(vmid, pfn);
		pfn += 1UL;
		num -= 1UL;
	}
}

/*
void __hyp_text __clear_vm_stage2_range(u32 vmid, u64 start, u64 size)
{
	u32 poweron = get_vm_poweron(vmid);
	if (size == KVM_PHYS_SIZE && poweron == 0U) {
		u32 i = 0U;
		u64 size = get_phys_mem_size();
		u64 num = size / PAGE_SIZE;
		u64 pfn = get_phys_mem_start_pfn();
		while (i < num) {
			clear_vm_page(vmid, pfn);
			pfn += 1;
			i += 1;
		}
	}
}
*/

#define PMD_PAGE_NUM	512
void __hyp_text prot_and_map_vm_s2pt(u32 vmid, u64 addr, u64 pte, u32 level)
{
	u64 pfn, gfn, num;
	u64 target_addr = phys_page(pte);
	pfn = target_addr / PAGE_SIZE;
	gfn = addr / PAGE_SIZE;

	if (pte == 0)
		return;

	if (level == 2U) {
		/* gfn is aligned to 2MB size */
		gfn = gfn / PTRS_PER_PMD * PTRS_PER_PMD;
		num = PMD_PAGE_NUM;
		//ret = assign_pfn_to_vm(vmid, gfn, pfn, PMD_PAGE_NUM);
		//if (ret == 1) {
		//	print_string("\rsplitting pmd to pte\n");
		//	new_pte += (agfn - gfn) * PAGE_SIZE;
		//	map_pfn_vm(vmid, fault_addr, new_pte, 3U);
		//}
		//else if (ret == 0) {
		//if (ret == 0) {
			//map_pfn_vm(vmid, fault_addr, new_pte, 2U);
		//}
	}
	else {
		/* agfn is aligned to 4KB size */
		//ret = assign_pfn_to_vm(vmid, agfn, pfn, 1UL);
		//if (ret == 0) {
		//	map_pfn_vm(vmid, fault_addr, new_pte, 3U);
		//}
		num = 1UL;
		level = 3U;
	}

	while (num > 0UL) {
		assign_pfn_to_vm(vmid, gfn, pfn);
		gfn += 1UL;
		pfn += 1UL;
		num -= 1UL;
	}

	map_pfn_vm(vmid, addr, pte, level);
}

void __hyp_text v_grant_stage2_sg_gpa(u32 vmid, u64 addr, u64 size)
{
    u64 len = (size & (PAGE_SIZE - 1) ? 1 : 0);
    if (size >> PAGE_SHIFT)
	len += size >> PAGE_SHIFT;

    while (len > 0UL)
    {
        u64 pte = walk_s2pt(vmid, addr);
	u32 level = 0;
        u64 pte_pa = phys_page(pte);
	if (pte & PMD_MARK)
		level = 2;
	else if (pte & PTE_MARK)
		level = 3;

        if (pte_pa != 0UL)
        {
            u64 pfn = pte_pa / PAGE_SIZE;
            if (level == 2U) {
                pfn += (addr & (PMD_SIZE - 1)) / PAGE_SIZE;
            }
            grant_vm_page(vmid, pfn);
        }
        addr += PAGE_SIZE;
        len -= 1UL;
    }
}

void __hyp_text v_revoke_stage2_sg_gpa(u32 vmid, u64 addr, u64 size)
{
    u64 len = (size & (PAGE_SIZE - 1) ? 1 : 0);
    if (size >> PAGE_SHIFT)
	len += size >> PAGE_SHIFT;

    while (len > 0UL)
    {
        u64 pte = walk_s2pt(vmid, addr);
	u32 level = 0;
        u64 pte_pa = phys_page(pte);
	if (pte & PMD_MARK)
		level = 2;
	else if (pte & PTE_MARK)
		level = 3;
        if (pte_pa != 0UL)
        {
            u64 pfn = pte_pa / PAGE_SIZE;
            if (level == 2U) {
                pfn += (addr & (PMD_SIZE - 1)) / PAGE_SIZE;
            }
            revoke_vm_page(vmid, pfn);
        }
        addr += PAGE_SIZE;
        len -= 1UL;
    }
}
#include "hypsec.h"
#include "MmioOps.h"

u32 __hyp_text check_smmu_pfn(u64 pfn, u32 vmid)
{
	u32 owner;
	owner = get_pfn_owner(pfn);
	if (owner != INVALID_MEM && owner && owner != vmid)
		return 0;

	return 1;
}

void __hyp_text handle_smmu_write(u32 hsr, u64 fault_ipa, u32 len, u32 index)
{
	u32 ret;
	//u64 offset = fault_ipa & ARM_SMMU_OFFSET_MASK;
	u64 offset = read_sysreg_el2(SYS_FAR) & ARM_SMMU_OFFSET_MASK;
	u32 write_val = 0;

	//if (offset < ARM_SMMU_GLOBAL_BASE) {
	if (offset < (get_smmu_size(index) >> 1)) {
		ret = handle_smmu_global_access(hsr, offset, index);
		if (ret == 0) {
			print_string("\rsmmu invalid write: global access\n");
			v_panic();
		} else {
			__handle_smmu_write(hsr, fault_ipa, len, 0UL, write_val);
		}
	} else {
		ret = handle_smmu_cb_access(offset);
		if (ret == 0) {
			print_string("\rsmmu invalid write: cb access\n");
			v_panic();	
		} else {
			if (ret == 2) {
				u64 cbndx = smmu_get_cbndx(offset);
				u64 val = get_smmu_cfg_hw_ttbr(cbndx, index);
				u64 data = host_get_mmio_data(hsr);
				write_val = 1;
				__handle_smmu_write(hsr, fault_ipa, len, val, write_val);
				print_string("\rwrite TTBR0\n");
				print_string("\roffset\n");
				printhex_ul(offset);
				print_string("\rcbndx\n");
				printhex_ul(cbndx);
				print_string("\rindex\n");
				printhex_ul(index);
				print_string("\rTTBR0\n");
				printhex_ul(val);
				print_string("\rHOST TTBR0\n");
				printhex_ul(data);
			} else if (ret == 3) {
				u64 data = host_get_mmio_data(hsr);
				print_string("\rHOST TTBCR\n");
				printhex_ul(data);
				__handle_smmu_write(hsr, fault_ipa, len, 0UL, write_val);
			} else {
				__handle_smmu_write(hsr, fault_ipa, len, 0UL, write_val);
			}
		}
	}
}

void __hyp_text handle_smmu_read(u32 hsr, u64 fault_ipa, u32 len)
{
	u64 offset = fault_ipa & ARM_SMMU_OFFSET_MASK;

	if (offset < ARM_SMMU_GLOBAL_BASE) {
	    __handle_smmu_read(hsr, fault_ipa, len);
	} else {
	    __handle_smmu_read(hsr, fault_ipa, len);
	}	
}
#include "hypsec.h"
#include "MmioOps.h"


u32 __hyp_text handle_smmu_global_access(u32 hsr, u64 offset, u32 smmu_index)
{
	/* We don't care if it's read accesses */

	u32 ret;
	u64 data = host_get_mmio_data(hsr);

	/* GR0 */
	if (offset >= 0 && offset < ARM_SMMU_GR1_BASE) {
		if (offset == ARM_SMMU_GR0_sCR0) {
			/* Check if the host tries to bypass SMMU */
			u64 smmu_enable = (data >> sCR0_SMCFCFG_SHIFT) & 1U;
			if (smmu_enable == 0) {
				ret = 0;
			} else {
				ret = 1;
			}
		} else if (offset == ARM_SMMU_GR0_sCR2) {
			/*
			 * Check if the host tries to bypass VMID by
			 * writing the BPVMID[0:7] bits.
			 */
			if ((data & 0xff) == 0) {
				ret = 1;
			} else {
				ret = 0;
			}
		} else
			ret = 1;	
		/* GR1 */
	} else if (offset >= ARM_SMMU_GR1_BASE && offset < ARM_SMMU_GR1_END) {
		/* GR1 CBAR for the specific Context Bank Index */
		u64 n = (offset - ARM_SMMU_GR1_BASE) / 4U;
		u64 vmid = get_smmu_cfg_vmid(n, smmu_index);
		u64 type = data >> CBAR_TYPE_SHIFT;
		u64 t_vmid = data & CBAR_VMID_MASK;
		if (vmid == 0) {
			ret = 1;
		} else {
			if (type == CBAR_TYPE_S2_TRANS && (vmid == (t_vmid))) {
				ret = 1;
			} else {
				ret = 0;
			}
		}
	} else {
		ret = 1;
	}
	return ret;
}

/* FIXME: we have a pointer here */
u32 __hyp_text handle_smmu_cb_access(u64 offset)
{
	u64 cb_offset = 0;
	u32 ret;

	offset -= ARM_SMMU_GLOBAL_BASE;
	cb_offset = offset & ARM_SMMU_PGSHIFT_MASK;
	if (cb_offset == ARM_SMMU_CB_TTBR0) {
		/* We write hw_ttbr to CB_TTBR0 */
		ret = 2U;
	} else if (cb_offset == ARM_SMMU_CB_CONTEXTIDR) {
		ret = 0U;
	} else if (cb_offset == ARM_SMMU_CB_TTBCR) {
		ret = 3U;
	} else {
		/* let accesses to other registers and TLB flushes just
		 * happen since they don't affect our guarantees.
		 */
		ret = 1U;
	}

	/*
	print_string("\rhandle cb access: cb_offset\n");
	printhex_ul(cb_offset);
	print_string("\rhandle cb access: ret\n");
	printhex_ul(ret);
	*/
	return ret;
}


void __hyp_text __handle_smmu_write(u32 hsr, u64 fault_ipa, u32 len, u64 val, u32 write_val)
{
	void __iomem *base = (void*)fault_ipa;
	u64 data = host_get_mmio_data(hsr);

	if (len == 8) {
		if (write_val == 0) {
			writeq_relaxed(data, base);
		} else {
			writeq_relaxed(val, base);
		}
	} else if(len == 4) {
		u32 val;
		el2_memcpy(&val, &data, sizeof(u32));
		writel_relaxed(val, base);
	} else {
		print_string("\rhandle smmu write panic\n");
		printhex_ul(len);
		v_panic();
	}
}

void __hyp_text __handle_smmu_read(u32 hsr, u64 fault_ipa, u32 len)
{
	//the following is a macro
	u32 rt = host_dabt_get_rd(hsr);
	u64 data_64, val;
	u32 data_32;

	if (len == 8) {
		data_64 = readq_relaxed((void *)fault_ipa);
		set_host_regs(rt, data_64);
	} else if (len == 4) {
		data_32 = readl_relaxed((void *)fault_ipa);
		val = get_host_regs(rt);
		el2_memcpy(&val, &data_32, sizeof(u32));
		set_host_regs(rt, val);
	} else {
		/* We don't handle cases which len is smaller than 4 bytes */
		print_string("\rhandle smmu read panic\n");
		printhex_ul(len);
		v_panic();
	}
}
#include "hypsec.h"
#include "MmioOps.h"

u64 __hyp_text emulate_mmio(u64 addr, u32 hsr)
{
	u64 ret;
	acquire_lock_smmu();
	ret = is_smmu_range(addr);
	if (ret != INVALID64) {
		handle_host_mmio(ret, hsr);
	}
	release_lock_smmu();
	return ret;
}

/* TODO: how do we make sure it's ok to free now? */
void __hyp_text  __el2_free_smmu_pgd(u32 cbndx, u32 index)
{
	u32 vmid, power;
	acquire_lock_smmu();

	vmid = get_smmu_cfg_vmid(cbndx, index);
	power = get_vm_poweron(vmid);
	if (power == 0)
		set_smmu_cfg_vmid(cbndx, index, V_INVALID);
	else
		v_panic();
	release_lock_smmu();
}

void __hyp_text  __el2_alloc_smmu_pgd(u32 cbndx, u32 vmid, u32 index)
{
	u32 target_vmid, num_context_banks;

	acquire_lock_smmu();

	num_context_banks = get_smmu_num_context_banks(index);
	if (cbndx >= num_context_banks) {
		print_string("\rsmmu pgd alloc panic\n");
		v_panic();
	} else {
		target_vmid = get_smmu_cfg_vmid(cbndx, index);
		if (target_vmid == V_INVALID) {
			print_string("\ralloc_smmu_pgd\n");
			printhex_ul(vmid);
			set_smmu_cfg_vmid(cbndx, index, vmid);
			init_spt(cbndx, index);
		}
	}

	release_lock_smmu();
}

void __hyp_text smmu_assign_page(u32 cbndx, u32 index, u64 pfn, u64 gfn)
{
	u32 vmid;

	acquire_lock_smmu();
	vmid = get_smmu_cfg_vmid(cbndx, index);
	assign_smmu(vmid, pfn, gfn);
	release_lock_smmu();
}

/*
void __hyp_text __el2_arm_lpae_map(u64 iova, u64 paddr,
				   u64 prot, u32 cbndx, u32 index)
{
	u32 vmid;
	u64 pfn, pte, gfn;

	pfn = paddr / PAGE_SIZE;
	gfn = iova / PAGE_SIZE;

	acquire_lock_smmu();

	vmid = get_smmu_cfg_vmid(cbndx, index);
	
	acquire_lock_vm(vmid);
	if (get_vm_state(vmid) == READY) {
		assign_pfn_to_smmu(vmid, gfn, pfn);
		pte = smmu_init_pte(prot, paddr);
		set_smmu_pt(cbndx, index, iova, pte);
	}
	else {
		print_string("\rsmmu map: VM state is not ready\n");
		v_panic();
	}
	release_lock_vm(vmid);

	release_lock_smmu();
	return;
}

u64 __hyp_text __el2_arm_lpae_iova_to_phys(u64 iova, u32 cbndx, u32 index)
{
	u64 pte;

	acquire_lock_smmu();

	pte = walk_smmu_pt(cbndx, index, iova);
	release_lock_smmu();

	if (pte == 0UL)
		return pte;
	else
		return (phys_page(pte) | (iova & (PAGE_SIZE - 1)));
}
*/

void __hyp_text smmu_map_page(u32 cbndx, u32 index, u64 iova, u64 pte)
{
	u32 vmid;

	acquire_lock_smmu();
	vmid = get_smmu_cfg_vmid(cbndx, index);
	map_smmu(vmid, cbndx, index, iova, pte);
	release_lock_smmu();
}

u64 __hyp_text __el2_arm_lpae_iova_to_phys(u64 iova, u32 cbndx, u32 index)
{
	u64 pte, ret;

	pte = walk_spt(cbndx, index, iova);
	if (pte == 0)
		ret = 0;
	else
		ret = phys_page(pte) | (iova % PAGE_SIZE);

	return ret;
}

/* FIXME: apply changes in XP's upstream code */
void __hyp_text __el2_arm_lpae_clear(u64 iova, u32 cbndx, u32 index)
{
	u32 vmid;
	
	acquire_lock_smmu();
	vmid = get_smmu_cfg_vmid(cbndx, index);
	clear_smmu(vmid, cbndx, index, iova);
	release_lock_smmu();	
}
#include "hypsec.h"
#include "MmioOps.h"

u64 __hyp_text is_smmu_range(u64 addr)
{
	u32 total_smmu = get_smmu_num();
	u32 i = 0U;
	u64 res = INVALID64;

	while (i < total_smmu) {
		u64 base = get_smmu_base(i);
		u64 size = get_smmu_size(i);
		if ((base <= addr) && (addr < base + size)) {
			res = i;
		}
		i = i + 1U;
	}
	return res;
}

void __hyp_text handle_host_mmio(u64 index, u32 hsr)
{
	u64 base_addr;
	u64 fault_ipa;
	u64 val;
	u32 is_write;
	u32 len;

	/* Following three lines are maco */
	base_addr = get_smmu_hyp_base(index); 
	fault_ipa = (base_addr | (read_sysreg_el2(SYS_FAR) & ARM_SMMU_OFFSET_MASK));
	len = host_dabt_get_as(hsr);
	is_write = host_dabt_is_write(hsr);

	if (is_write) {
		//print_string("\rhandle_host_mmuio write\n");
		//printhex_ul(fault_ipa);
		handle_smmu_write(hsr, fault_ipa, len, index);
		//print_string("\rafter handle_host_mmuio write\n");
	} else {
		//print_string("\rhandle_host_mmuio read\n");
		//printhex_ul(fault_ipa);
		handle_smmu_read(hsr, fault_ipa, len);
		//print_string("\rafter handle_host_mmuio read\n");
	}

	//pc+4
	val = read_sysreg(elr_el2);
	wmb();
	write_sysreg(val + 4, elr_el2);
}
#include "hypsec.h"
#include "MmioOps.h"

u64 __hyp_text host_get_mmio_data(u32 hsr)
{
	int rt;

	rt = host_dabt_get_rd(hsr);
	return get_host_regs(rt);
}

u64 __hyp_text smmu_init_pte(u64 prot, u64 paddr)
{
	u64 val;

	val = prot;
	val |= ARM_LPAE_PTE_AF | ARM_LPAE_PTE_SH_IS;
	//val |= (((pfn) << 12) & ((1ULL << ARM_LPAE_MAX_ADDR_BITS) - 1));
	//val |= paddr;
	val |= pfn_to_iopte(paddr >> 12);
	val |= ARM_LPAE_PTE_TYPE_PAGE;

	return val;
}

u64 __hyp_text smmu_get_cbndx(u64 offset)
{
	u64 cbndx = 0;
	offset -= ARM_SMMU_GLOBAL_BASE;
	cbndx = offset >> ARM_SMMU_PGSHIFT;
	return cbndx;
}
#include "hypsec.h"

/*
 * NPTOps
 */

//FIXME: Why we removed this from the code?
void __hyp_text init_s2pt(u32 vmid)
{
    acquire_lock_pt(vmid);
    init_npt(vmid);
    release_lock_pt(vmid);
}

u64 __hyp_text get_vm_vttbr(u32 vmid)
{
    u64 vttbr;
    acquire_lock_pt(vmid);
    vttbr = get_pt_vttbr(vmid);
    release_lock_pt(vmid);
    return vttbr;
}

u32 __hyp_text get_level_s2pt(u32 vmid, u64 addr)
{
    u32 ret;
    acquire_lock_pt(vmid);
    ret = get_npt_level(vmid, addr);
    release_lock_pt(vmid);
    return ret;
}

u64 __hyp_text walk_s2pt(u32 vmid, u64 addr)
{
    u64 ret;
    acquire_lock_pt(vmid);
    ret = walk_npt(vmid, addr);
    release_lock_pt(vmid);
    return ret;
}

void __hyp_text mmap_s2pt(u32 vmid, u64 addr, u32 level, u64 pte)
{
	acquire_lock_pt(vmid);
	set_npt(vmid, addr, level, pte);
	release_lock_pt(vmid);
}

extern void kvm_tlb_flush_vmid_ipa_host(phys_addr_t ipa);
void __hyp_text clear_pfn_host(u64 pfn)
{
    u64 pte;

	acquire_lock_pt(HOSTVISOR);
    pte = walk_npt(HOSTVISOR, pfn * PAGE_SIZE);
    if (pte != 0) {
        set_npt(HOSTVISOR, pfn * PAGE_SIZE, 3, 0x200000000000000LL);
        kvm_tlb_flush_vmid_ipa_host(pfn * PAGE_SIZE);
    }

	release_lock_pt(HOSTVISOR);
}
#include "hypsec.h"

/*
 * NPTWalk
 */

void __hyp_text init_npt(u32 vmid)
{
	u64 vttbr, vttbr_pa, vmid64;

	vttbr = get_pt_vttbr(vmid);
	if (vttbr == 0) {
		vttbr_pa = pool_start(vmid);
		vmid64 = ((u64)(vmid & 255U) << VTTBR_VMID_SHIFT);
		vttbr = vttbr_pa | vmid64;
		set_pt_vttbr(vmid, vttbr);
	}
}

u32 __hyp_text get_npt_level(u32 vmid, u64 addr)
{
	u64 vttbr, pgd, pud, pmd;u32 ret;

	vttbr = get_pt_vttbr(vmid);
	pgd = walk_pgd(vmid, vttbr, addr, 0U);
	pud = walk_pud(vmid, pgd, addr, 0U);
	pmd = walk_pmd(vmid, pud, addr, 0U);

    	if (v_pmd_table(pmd) == PMD_TYPE_TABLE) {
		u64 pte = walk_pte(vmid, pmd, addr);
		if (phys_page(pte) == 0UL)
			ret = 0U;
		else
			ret = 3U;
	}
	else {
		if (phys_page(pmd) == 0UL)
			ret = 0U;
		else
			ret = 2U;
	}

	return ret;
}

u64 __hyp_text walk_npt(u32 vmid, u64 addr)
{
	u64 vttbr, pgd, pud, pmd, ret, pte;

	vttbr = get_pt_vttbr(vmid);
	pgd = walk_pgd(vmid, vttbr, addr, 0U);
	pud = walk_pud(vmid, pgd, addr, 0U);
	pmd = walk_pmd(vmid, pud, addr, 0U);

	if (v_pmd_table(pmd) == PMD_TYPE_TABLE) {
        	pte = walk_pte(vmid, pmd, addr);
        	ret = pte;
    	}
    	else {
        	ret = pmd;
	}

	return ret;
}

void __hyp_text set_npt(u32 vmid, u64 addr, u32 level, u64 pte)
{
	u64 vttbr, pgd, pud, pmd;

	vttbr = get_pt_vttbr(vmid);	
	pgd = walk_pgd(vmid, vttbr, addr, 1U);
	pud = walk_pud(vmid, pgd, addr, 1U);

	if (level == 2U)
	{
		pmd = walk_pmd(vmid, pud, addr, 0U);
		if (v_pmd_table(pmd) == PMD_TYPE_TABLE) {
			print_string("\rset existing npt: pmd\n");
			v_panic();
		} else
	   		v_set_pmd(vmid, pud, addr, pte);
	}
	else
	{
		pmd = walk_pmd(vmid, pud, addr, 1U);
		if (v_pmd_table(pmd) == PMD_TYPE_TABLE)
			v_set_pte(vmid, pmd, addr, pte);
		else {
			print_string("\rset existing npt: pte\n");
			v_panic();
		}
	}
}

//3 Level PT walk in SMMU
void __hyp_text init_smmu_pt(u32 cbndx, u32 num)
{
	smmu_pt_clear(cbndx, num);
}

u64 __hyp_text walk_smmu_pt(u32 cbndx, u32 num, u64 addr)
{
	u64 ttbr, pgd, pmd, ret;

	ttbr = get_smmu_cfg_hw_ttbr(cbndx, num);
	pgd = walk_smmu_pgd(ttbr, addr, 0U);
	pmd = walk_smmu_pmd(pgd, addr, 0U);
	ret = walk_smmu_pte(pmd, addr);
	return ret;
}

void __hyp_text set_smmu_pt(u32 cbndx, u32 num, u64 addr, u64 pte)
{
	u64 ttbr, pgd, pmd;

	ttbr = get_smmu_cfg_hw_ttbr(cbndx, num);
	if (ttbr == 0UL) {
	    print_string("\rset smmu pt: vttbr = 0\n");
	    v_panic();
	} else {
		pgd = walk_smmu_pgd(ttbr, addr, 1U);
		pmd = walk_smmu_pmd(pgd, addr, 1U);
		set_smmu_pte(pmd, addr, pte);
	}
}
#include "hypsec.h"

/*
 * PTAlloc
 */

u64 __hyp_text alloc_s2pt_pgd(u32 vmid)
{
	u64 next = get_pgd_next(vmid);
	u64 end = pgd_pool_end(vmid);

	if (next + PAGE_SIZE <= end) {
		set_pgd_next(vmid, 1);
	}
	else {
	        print_string("\rwe used all s2 pgd pages\n");
		printhex_ul(vmid);
		v_panic();
	}

	return next;
}

u64 __hyp_text alloc_s2pt_pud(u32 vmid)
{
	u64 next = get_pud_next(vmid);
	u64 end = pud_pool_end(vmid);

	if (next + PAGE_SIZE <= end) {
		set_pud_next(vmid, 1);
	}
	else {
	        print_string("\rwe used all s2 pud pages\n");
		printhex_ul(vmid);
		v_panic();
	}

	return next;
}

u64 __hyp_text alloc_s2pt_pmd(u32 vmid)
{
	u64 next = get_pmd_next(vmid);
	u64 end = pmd_pool_end(vmid);

	if (next + PAGE_SIZE <= end) {
		set_pmd_next(vmid, 1);
	}
	else {
	        print_string("\rwe used all s2 pmd pages\n");
		printhex_ul(vmid);
		v_panic();
	}

	return next;
}

/*
u64 __hyp_text alloc_smmu_pgd_page(void)
{
	u64 next = get_smmu_pgd_next();
	u64 end = smmu_pgd_end();

	//print_string("\ralloc smmu pgd page\n");
	//printhex_ul(next);
	if (next + PAGE_SIZE <= end) {
		set_smmu_pgd_next(1);
	}
	else {
	        print_string("\rwe used all smmu pgd pages\n");
		v_panic();
	}
	return next;
}

u64 __hyp_text alloc_smmu_pmd_page(void)
{
	u64 next = get_smmu_pmd_next();
	u64 end = smmu_pmd_end();

	//print_string("\ralloc smmu pmd page\n");
	//printhex_ul(next);
	if (next + PAGE_SIZE <= end) {
		set_smmu_pmd_next(1);
	}
	else {
	        print_string("\rwe used all smmu pmd pages\n");
		v_panic();
	}
	return next;
}
*/
#include "hypsec.h"
#include "MmioOps.h"

/*
 * PTWalk
 */

u64 __hyp_text walk_pgd(u32 vmid, u64 vttbr, u64 addr, u32 alloc)
{
    u64 vttbr_pa = phys_page(vttbr);
    u64 ret = 0UL;
    if (vttbr_pa != 0UL) {
	u64 pgd_idx = pgd_index(addr);
        u64 pgd = pt_load(vmid, vttbr_pa + pgd_idx * 8UL);
        u64 pgd_pa = phys_page(pgd);
        if (pgd_pa == 0UL && alloc == 1U)
        {
	    pgd_pa = alloc_s2pt_pgd(vmid);
            pgd = pgd_pa | PUD_TYPE_TABLE;
            pt_store(vmid, vttbr_pa + pgd_idx * 8UL, pgd);
        }
	ret = pgd;
    }
    return ret;
}

u64 __hyp_text walk_pud(u32 vmid, u64 pgd, u64 addr, u32 alloc)
{
    u64 pgd_pa = phys_page(pgd);
    u64 ret = 0UL;
    if (pgd_pa != 0UL) {
        u64 pud_idx = pud_idx(addr);
        u64 pud = pt_load(vmid, pgd_pa + pud_idx * 8);
        u64 pud_pa = phys_page(pud);
        if (pud_pa == 0UL && alloc == 1U)
        {
	    pud_pa = alloc_s2pt_pud(vmid);
            pud = pud_pa | PUD_TYPE_TABLE;
            pt_store(vmid, pgd_pa + pud_idx * 8UL, pud);
        }
	ret = pud;
    }
    return ret;
}

u64 __hyp_text walk_pmd(u32 vmid, u64 pgd, u64 addr, u32 alloc)
{
    u64 pgd_pa = phys_page(pgd);
    u64 ret = 0UL;
    if (pgd_pa != 0UL) {
        u64 pmd_idx = pmd_idx(addr);
        u64 pmd = pt_load(vmid, pgd_pa + pmd_idx * 8);
        u64 pmd_pa = phys_page(pmd);
        if (pmd_pa == 0UL && alloc == 1U)
        {
	    pmd_pa = alloc_s2pt_pmd(vmid);
            pmd = pmd_pa | PMD_TYPE_TABLE;
            pt_store(vmid, pgd_pa + pmd_idx * 8UL, pmd);
        }
	ret = pmd;
    }
    return ret;
}

u64 __hyp_text walk_pte(u32 vmid, u64 pmd, u64 addr)
{
    u64 pmd_pa = phys_page(pmd);
    u64 ret = 0UL;
    if (pmd_pa != 0UL) {
        u64 pte_idx = pte_idx(addr);
        ret = pt_load(vmid, pmd_pa + pte_idx * 8UL);
    }
    return ret;
}

void __hyp_text v_set_pmd(u32 vmid, u64 pgd, u64 addr, u64 pmd)
{
    u64 pgd_pa = phys_page(pgd);
    u64 pmd_idx = pmd_idx(addr);
    pmd |= PMD_MARK;
    pt_store(vmid, pgd_pa + pmd_idx * 8UL, pmd);
}

void __hyp_text v_set_pte(u32 vmid, u64 pmd, u64 addr, u64 pte)
{
    	u64 pmd_pa = phys_page(pmd);
    	u64 pte_idx = pte_idx(addr);
	pte |= PTE_MARK;
    	pt_store(vmid, pmd_pa + pte_idx * 8UL, pte);
}

/*
u64 __hyp_text walk_smmu_pgd(u64 ttbr, u64 addr, u32 alloc)
{
    u64 ttbr_pa = phys_page(ttbr);
    u64 ret = 0UL;
    u64 pgd_idx;
    u64 pgd;    
    u64 pgd_pa;
 
    if (ttbr_pa != 0UL) {
        pgd_idx = stage2_pgd_idx(addr);
        pgd = smmu_pt_load(ttbr_pa + pgd_idx * 8UL);
        pgd_pa = phys_page(pgd);
        if (pgd_pa == 0UL && alloc == 1U)
        {
            pgd_pa = alloc_smmu_pgd_page();
            pgd = pgd_pa | ARM_LPAE_PTE_TYPE_TABLE;
            smmu_pt_store(ttbr_pa + pgd_idx * 8UL, pgd);
	    //__dma_map_area(__el2_va(ttbr_pa + pgd_idx * 8UL), sizeof(u64), 1);
        }
        ret = pgd;
    }
    return ret;
}

u64 __hyp_text walk_smmu_pmd(u64 pgd, u64 addr, u32 alloc)
{
    u64 pgd_pa = phys_page(pgd);
    u64 ret = 0UL;
    if (pgd_pa != 0UL) {
        u64 pmd_idx = pmd_index(addr);
        u64 pmd = smmu_pt_load(pgd_pa + pmd_idx * 8);
        u64 pmd_pa = phys_page(pmd);
        if (pmd_pa == 0UL && alloc == 1U)
        {
            pmd_pa = alloc_smmu_pmd_page();
            pmd = pmd_pa | ARM_LPAE_PTE_TYPE_TABLE;
            smmu_pt_store(pgd_pa + pmd_idx * 8UL, pmd);
	    //__dma_map_area(__el2_va(pgd_pa + pmd_idx * 8UL), sizeof(u64), 1);
        }
        ret = pmd;
    }
    return ret;
}

u64 __hyp_text walk_smmu_pte(u64 pmd, u64 addr)
{
    u64 pmd_pa = phys_page(pmd);
    u64 ret = 0UL;
    if (pmd_pa != 0UL) {
        u64 pte_idx = pte_index(addr);
        ret = smmu_pt_load(pmd_pa + pte_idx * 8UL);
    }
    return ret;
}

void __hyp_text set_smmu_pte(u64 pmd, u64 addr, u64 pte)
{
    u64 pmd_pa = phys_page(pmd);
    u64 pte_idx = pte_index(addr);
    smmu_pt_store(pmd_pa + pte_idx * 8UL, pte);
    //__dma_map_area(__el2_va(pmd_pa + pte_idx * 8UL), sizeof(u64), 1);
}
*/
#include "hypsec.h"

/*
 * PageIndex
 */

u64 __hyp_text get_s2_page_index(u64 addr)
{
	u32 region_index = mem_region_search(addr);
	u64 ret = INVALID64;
	if (region_index != INVALID_MEM) {
		u64 page_index = get_mem_region_index(region_index);
		if (page_index != INVALID64) {
			u64 base = get_mem_region_base(region_index);
			ret = page_index + (addr - base) / PAGE_SIZE;
		}
	}
	return ret;
}
#include "hypsec.h"

/*
 * PageManager
 */

u32 __hyp_text get_pfn_owner(u64 pfn)
{
	u64 index = get_s2_page_index(pfn * PAGE_SIZE);
	u32 ret = INVALID_MEM;
	if (index != INVALID64) {
		ret = get_s2_page_vmid(index);
	}
	return ret;
}

void __hyp_text set_pfn_owner(u64 pfn, u32 vmid)
{
	u64 index = get_s2_page_index(pfn * PAGE_SIZE);
	if (index != INVALID64)
		set_s2_page_vmid(index, vmid);
}

u32 __hyp_text get_pfn_count(u64 pfn)
{
	u64 index = get_s2_page_index(pfn * PAGE_SIZE);
	u32 ret = INVALID_MEM;
	if (index != INVALID64) {
		ret = get_s2_page_count(index);
	}
	return ret;
}

void __hyp_text set_pfn_count(u64 pfn, u32 count)
{
	u64 index = get_s2_page_index(pfn * PAGE_SIZE);
	if (index != INVALID64) {
		set_s2_page_count(index, count);
	}
}

u64 __hyp_text get_pfn_map(u64 pfn)
{
	u64 index = get_s2_page_index(pfn * PAGE_SIZE);
	u64 ret;
	if (index != INVALID64) {
		ret = get_s2_page_gfn(index);
	}
	else {
		ret = INVALID_MEM;
	}
	return ret;
}

void __hyp_text set_pfn_map(u64 pfn, u64 gfn)
{
	u64 index = get_s2_page_index(pfn * PAGE_SIZE);
	if (index != INVALID64) {
		set_s2_page_gfn(index, gfn);
	}
}
#include "hypsec.h"

/*
 * MmioPTAlloc
 */

u64 __hyp_text alloc_smmu_pgd_page(void)
{
	u64 next, end;

	next = get_smmu_pgd_next();
	//end = SMMU_PMD_START;
	end = smmu_pgd_end();
	if (next + PAGE_SIZE <= end)
	{
		//set_smmu_pgd_next(next + PAGE_SIZE);
		set_smmu_pgd_next(1);
	}
	else
	{
	        print_string("\rwe used all smmu pgd pages\n");
		v_panic();
	}
	return next;
}

u64 __hyp_text alloc_smmu_pmd_page(void)
{
	u64 next, end;

	next = get_smmu_pmd_next();
	//end = SMMU_POOL_END;
	end = smmu_pmd_end();

	if (next + PAGE_SIZE <= end)
	{
		//set_smmu_pmd_next(next + PAGE_SIZE);
		set_smmu_pmd_next(1);
	}
	else
	{
	        print_string("\rwe used all smmu pmd pages\n");
		v_panic();
	}
	return next;
}
#include "hypsec.h"

/*
 * MmioSPTOps 
 */

void __hyp_text init_spt(u32 cbndx, u32 index)
{
    acquire_lock_spt();
    init_smmu_pt(cbndx, index);
    release_lock_spt();
}

u64 __hyp_text walk_spt(u32 cbndx, u32 index, u64 addr)
{
    u64 ret;

    acquire_lock_spt();
    ret = walk_smmu_pt(cbndx, index, addr);
    release_lock_spt();
    return ret;
}

void __hyp_text map_spt(u32 cbndx, u32 index, u64 addr, u64 pte)
{
    acquire_lock_spt();
    set_smmu_pt(cbndx, index, addr, pte);
    release_lock_spt();
}

u64 __hyp_text unmap_spt(u32 cbndx, u32 index, u64 addr) 
{
    u64 pte;

    acquire_lock_spt();
    pte = walk_smmu_pt(cbndx, index, addr);
    if (pte != 0UL) {
        set_smmu_pt(cbndx, index, addr, 0UL);
    }
    release_lock_spt();
    return pte;
}
#include "hypsec.h"

/*
 * MmioPTWalk
 */

u64 __hyp_text walk_smmu_pgd(u64 ttbr, u64 addr, u32 alloc)
{
	u64 ttbr_pa, ret, pgd_idx, pgd, pgd_pa;

	ttbr_pa = phys_page(ttbr);
	ret = 0UL;
	if (ttbr_pa != 0UL)
	{
		pgd_idx = pgd_idx(addr);
		pgd = smmu_pt_load(ttbr_pa + pgd_idx * 8UL);
		pgd_pa = phys_page(pgd);
		if (pgd_pa == 0UL && alloc == 1U)
		{
			pgd_pa = alloc_smmu_pgd_page();
			pgd = pgd_pa | PMD_TYPE_TABLE;
			smmu_pt_store(ttbr_pa + pgd_idx * 8UL, pgd);
		}
		ret = pgd;
	}
	return ret;
}

u64 __hyp_text walk_smmu_pmd(u64 pgd, u64 addr, u32 alloc)
{
	u64 pgd_pa, ret, pmd_idx, pmd, pmd_pa;

	pgd_pa = phys_page(pgd);
	ret = 0UL;
	if (pgd_pa != 0UL)
	{
		pmd_idx = pmd_index(addr);
		pmd = smmu_pt_load(pgd_pa | (pmd_idx * 8));
		pmd_pa = phys_page(pmd);
		if (pmd_pa == 0UL && alloc == 1U)
		{
			pmd_pa = alloc_smmu_pmd_page();
			pmd = pmd_pa | PMD_TYPE_TABLE;
			smmu_pt_store(pgd_pa | (pmd_idx * 8UL), pmd);
		}
		ret = pmd;
	}
	return ret;
}

u64 __hyp_text walk_smmu_pte(u64 pmd, u64 addr)
{
	u64 pmd_pa, ret, pte_idx;

	pmd_pa = phys_page(pmd);
	ret = 0UL;
	if (pmd_pa != 0UL)
	{
		pte_idx = pte_index(addr);
		ret = smmu_pt_load(pmd_pa | (pte_idx * 8UL));
	}
	return ret;
}

void __hyp_text set_smmu_pte(u64 pmd, u64 addr, u64 pte)
{
	u64 pmd_pa, pte_idx;

	pmd_pa = phys_page(pmd);
	pte_idx = pte_index(addr);
	smmu_pt_store(pmd_pa | (pte_idx * 8UL), pte);
}
#include "hypsec.h"

/*
 * MmioSPTWalk
 */

void __hyp_text clear_smmu_pt(u32 cbndx, u32 index) 
{
    smmu_pt_clear(cbndx, index);
}

u64 __hyp_text v_walk_smmu_pt(u32 cbndx, u32 index, u64 addr)
{
	u64 ttbr, pgd, pmd, ret;

	ttbr = get_smmu_cfg_hw_ttbr(cbndx, index);
	pgd = walk_smmu_pgd(ttbr, addr, 0U);
	pmd = walk_smmu_pmd(pgd, addr, 0U);
	ret = walk_smmu_pte(pmd, addr);
	return ret;
}

void __hyp_text v_set_smmu_pt(u32 cbndx, u32 index, u64 addr, u64 pte)
{
	u64 ttbr, pgd, pmd;

	ttbr = get_smmu_cfg_hw_ttbr(cbndx, index);
	pgd = walk_smmu_pgd(ttbr, addr, 1U);
	pmd = walk_smmu_pmd(pgd, addr, 1U);
	set_smmu_pte(pmd, addr, pte);
}
#include "hypsec.h"

/*
 * VCPUOps
 */

void __hyp_text save_shadow_kvm_regs()
{
    u32 vmid = get_cur_vmid();
    u32 vcpuid = get_cur_vcpu_id();
    u64 ec = get_shadow_ctxt(vmid, vcpuid, V_EC);
    if (ec == ARM_EXCEPTION_TRAP)
    {
        u64 hsr = get_shadow_esr(vmid, vcpuid);
        //u64 hsr_ec = (hsr / ESR_ELx_EC_SHIFT) % ESR_ELx_EC_MASK;
        u64 hsr_ec = ESR_ELx_EC(hsr);
        if (hsr_ec == ESR_ELx_EC_WFx)
            prep_wfx(vmid, vcpuid);
        else if (hsr_ec == ESR_ELx_EC_HVC32)
            prep_hvc(vmid, vcpuid);
        else if (hsr_ec == ESR_ELx_EC_HVC64)
            prep_hvc(vmid, vcpuid);
        else if (hsr_ec == ESR_ELx_EC_IABT_LOW)
            prep_abort(vmid, vcpuid);
        else if (hsr_ec == ESR_ELx_EC_DABT_LOW)
            prep_abort(vmid, vcpuid);
        else if (hsr_ec == ESR_ELx_EC_BRK64)
            prep_wfx(vmid, vcpuid);
        else {
	    print_string("\runknown exception\n");
	    v_panic();
	}
    }
}

void __hyp_text restore_shadow_kvm_regs()
{
    u32 vmid = get_cur_vmid();
    u32 vcpuid = get_cur_vcpu_id();
    u64 dirty = get_shadow_ctxt(vmid, vcpuid, V_DIRTY);

    if (dirty == INVALID64)
    {
        /*if (vm_is_inc_exe(vmid) == 1U)
        {
            int_to_shadow_decrypt(vmid, vcpuid);
        }
        else*/
        {
            reset_gp_regs(vmid, vcpuid);
            reset_sys_regs(vmid, vcpuid);
        }
        //save_sys_regs(vmid, vcpuid);
        set_shadow_dirty_bit(vmid, vcpuid, 0UL);
    }
    else
    {	
        u64 ec = get_shadow_ctxt(vmid, vcpuid, V_EC);
        if (ec == ARM_EXCEPTION_TRAP && dirty)
            sync_dirty_to_shadow(vmid, vcpuid);
        if (dirty & PENDING_EXCEPT_INJECT_FLAG)
            v_update_exception_gp_regs(vmid, vcpuid);
        if (dirty & DIRTY_PC_FLAG) {
            u64 pc = get_shadow_ctxt(vmid, vcpuid, V_PC);
            set_shadow_ctxt(vmid, vcpuid, V_PC, pc + 4UL);
        }
        set_shadow_dirty_bit(vmid, vcpuid, 0UL);
        set_shadow_ctxt(vmid, vcpuid, V_FAR_EL2, 0UL);

        if (get_shadow_ctxt(vmid, vcpuid, V_FLAGS) & PENDING_FSC_FAULT)
        {
            v_post_handle_shadow_s2pt_fault(vmid, vcpuid);
        }

        set_shadow_ctxt(vmid, vcpuid, V_FLAGS, 0UL);
    }
}

/*
void save_encrypted_vcpu(u32 vmid, u32 vcpuid)
{
    shadow_to_int_encrypt(vmid, vcpuid);
    u64 pstate = get_shadow_ctxt(vmid, vcpuid, V_PSTATE);
    set_int_ctxt(vmid, vcpuid, V_PSTATE, pstate);
}
*/
#include "hypsec.h"
#include <uapi/linux/psci.h>

/*
 * VCPUOpsAux
 */

extern void reset_fp_regs(u32 vmid, int vcpu_id);
void __hyp_text reset_gp_regs(u32 vmid, u32 vcpuid)
{
    u64 pc = get_int_pc(vmid, vcpuid), pstate;
    if (v_search_load_info(vmid, pc))
    {
        clear_shadow_gp_regs(vmid, vcpuid);
        pstate = get_int_pstate(vmid, vcpuid);
        set_shadow_ctxt(vmid, vcpuid, V_PSTATE, pstate);
        set_shadow_ctxt(vmid, vcpuid, V_PC, pc);
        //int_to_shadow_fp_regs(vmid, vcpuid);
	reset_fp_regs(vmid, vcpuid);
    }
    else {
	print_string("\reset gp reg\n");
        v_panic();
    }
}

static u64 __hyp_text el2_reset_mpidr(u32 vcpu_id)
{
	u64 mpidr;
	mpidr = (vcpu_id & 0x0f) << MPIDR_LEVEL_SHIFT(0);
	mpidr |= ((vcpu_id >> 4) & 0xff) << MPIDR_LEVEL_SHIFT(1);
	mpidr |= ((vcpu_id >> 12) & 0xff) << MPIDR_LEVEL_SHIFT(2);
	return ((1ULL << 31) | mpidr);
}

void __hyp_text reset_sys_regs(u32 vmid, u32 vcpuid)
{
    u64 val;
    u32 i = 1U;
    while (i <= SHADOW_SYS_REGS_SIZE)
    {
        if (i == MPIDR_EL1)
        {
            u64 mpidr = (vcpuid % 16U) + ((vcpuid / 16U) % 256U) * 256U +
                                  ((vcpuid / 4096U) % 256U) * 65536U;
            val = mpidr + 2147483648UL;
	    val = el2_reset_mpidr(vcpuid);
        }
	else if (i == ACTLR_EL1)
		val = read_sysreg(actlr_el1);
        else
        {
	    //TODO:this will not work, we need to pass vmid and vcpuid
            val = get_sys_reg_desc_val(i);
        }
        set_shadow_ctxt(vmid, vcpuid, i + SYSREGS_START, val);
        i += 1U;
    }
}

/*void save_sys_regs(u32 vmid, u32 vcpuid)
{
    set_shadow_ctxt(vmid, vcpuid, V_DACR32_EL2, get_int_ctxt(vmid, vcpuid, V_DACR32_EL2));
    set_shadow_ctxt(vmid, vcpuid, V_IFSR32_EL2, get_int_ctxt(vmid, vcpuid, V_IFSR32_EL2));
    set_shadow_ctxt(vmid, vcpuid, V_FPEXC32_EL2, get_int_ctxt(vmid, vcpuid, V_FPEXC32_EL2));

    set_int_ctxt(vmid, vcpuid, V_DACR32_EL2, 0UL);
    set_int_ctxt(vmid, vcpuid, V_IFSR32_EL2, 0UL);
    set_int_ctxt(vmid, vcpuid, V_FPEXC32_EL2, 0UL);
}

void restore_sys_regs(u32 vmid, u32 vcpuid)
{
    set_int_ctxt(vmid, vcpuid, V_DACR32_EL2, get_shadow_ctxt(vmid, vcpuid, V_DACR32_EL2));
    set_int_ctxt(vmid, vcpuid, V_IFSR32_EL2, get_shadow_ctxt(vmid, vcpuid, V_IFSR32_EL2));
    set_int_ctxt(vmid, vcpuid, V_FPEXC32_EL2, get_shadow_ctxt(vmid, vcpuid, V_FPEXC32_EL2));
}*/

// could have some problems here
void __hyp_text sync_dirty_to_shadow(u32 vmid, u32 vcpuid)
{
    u32 i = 0U;
    u64 dirty = get_shadow_dirty_bit(vmid, vcpuid);
    while (i < 31U)
    {
        if (dirty & (1U << i)) {
            u64 reg = get_int_gpr(vmid, vcpuid, i);
            set_shadow_ctxt(vmid, vcpuid, i, reg);
        }
        i += 1U;
    }
}

void __hyp_text prep_wfx(u32 vmid, u32 vcpuid)
{
    set_shadow_dirty_bit(vmid, vcpuid, DIRTY_PC_FLAG);
}

void __hyp_text prep_hvc(u32 vmid, u32 vcpuid)
{
    u64 psci_fn = get_shadow_ctxt(vmid, vcpuid, 0UL) & ~((u32) 0);
    set_int_gpr(vmid, vcpuid, 0U, get_shadow_ctxt(vmid, vcpuid, 0UL));
    if (psci_fn == PSCI_0_2_FN64_CPU_ON)
    {
        set_shadow_dirty_bit(vmid, vcpuid, 1 << 0U);
        set_int_gpr(vmid, vcpuid, 1U, get_shadow_ctxt(vmid, vcpuid, 1U));
        set_int_gpr(vmid, vcpuid, 2U, get_shadow_ctxt(vmid, vcpuid, 2U));
        set_int_gpr(vmid, vcpuid, 3U, get_shadow_ctxt(vmid, vcpuid, 3U));
    }
    else if (psci_fn == PSCI_0_2_FN_AFFINITY_INFO ||
             psci_fn == PSCI_0_2_FN64_AFFINITY_INFO)
    {
        set_shadow_dirty_bit(vmid, vcpuid, 1 << 0U);
        set_int_gpr(vmid, vcpuid, 1U, get_shadow_ctxt(vmid, vcpuid, 1U));
        set_int_gpr(vmid, vcpuid, 2U, get_shadow_ctxt(vmid, vcpuid, 2U));

    }
    else if (psci_fn == PSCI_0_2_FN_SYSTEM_OFF) {
        set_shadow_dirty_bit(vmid, vcpuid, 1 << 0U);
        set_vm_poweroff(vmid);
    }
}

void __hyp_text prep_abort(u32 vmid, u32 vcpuid)
{
    u64 esr = get_int_esr(vmid, vcpuid);
    u32 Rd = (u32)((esr / 65536UL) % 32UL);
    u64 fault_ipa = (get_shadow_ctxt(vmid, vcpuid, V_HPFAR_EL2) / 16UL) * 4096UL;
    bool is_write;

    if (fault_ipa < MAX_MMIO_ADDR)
    {
	/*if (fault_ipa > 0xc000000 && fault_ipa < 0xe000000) {
		u64 flags = get_shadow_ctxt(vmid, vcpuid, V_FLAGS);
		flags |= PENDING_FSC_FAULT;
		set_shadow_ctxt(vmid, vcpuid, V_FLAGS, flags);
		printhex_ul(fault_ipa);
		return;
	}*/

        set_shadow_dirty_bit(vmid, vcpuid, DIRTY_PC_FLAG);

        //if ((esr / 64UL) % 4UL == 0UL) {
	is_write = !!(esr & ESR_ELx_WNR) || !!(esr & ESR_ELx_S1PTW);
	if (!is_write) {
            set_shadow_dirty_bit(vmid, vcpuid, 1 << Rd);
        }
        else {
            u64 reg = get_shadow_ctxt(vmid, vcpuid, Rd);
            set_int_gpr(vmid, vcpuid, Rd, reg);
        }
    }
}

void __hyp_text v_hypsec_inject_undef(u32 vmid, u32 vcpuid)
{
    set_shadow_dirty_bit(vmid, vcpuid, PENDING_UNDEF_INJECT);
}

void __hyp_text v_update_exception_gp_regs(u32 vmid, u32 vcpuid)
{
    u64 esr = ESR_ELx_EC_UNKNOWN;
    u64 pstate = get_shadow_ctxt(vmid, vcpuid, V_PSTATE);
    u64 pc = get_shadow_ctxt(vmid, vcpuid, V_PC);
    u64 new_pc = get_exception_vector(pstate);
    set_shadow_ctxt(vmid, vcpuid, V_ELR_EL1, pc);
    set_shadow_ctxt(vmid, vcpuid, V_PC, new_pc);
    set_shadow_ctxt(vmid, vcpuid, V_PSTATE, PSTATE_FAULT_BITS_64);
    set_shadow_ctxt(vmid, vcpuid, V_SPSR_0, pstate);
    set_shadow_ctxt(vmid, vcpuid, V_ESR_EL1, esr);
}

void __hyp_text v_post_handle_shadow_s2pt_fault(u32 vmid, u32 vcpuid)
{
    u64 hpfar = get_shadow_ctxt(vmid, vcpuid, V_HPFAR_EL2);
    u64 addr = (hpfar & HPFAR_MASK) * 256UL;
    u64 pte = get_int_new_pte(vmid, vcpuid);
    u32 level = get_int_new_level(vmid, vcpuid);

    prot_and_map_vm_s2pt(vmid, addr, pte, level);
}
#include "hypsec.h"

/*
 * VMPower
 */

void __hyp_text set_vm_poweroff(u32 vmid)
{
    acquire_lock_vm(vmid);
    set_vm_power(vmid, 0U);
    release_lock_vm(vmid);
}

u32 __hyp_text get_vm_poweron(u32 vmid)
{
    u32 ret;
    acquire_lock_vm(vmid);
    ret = get_vm_power(vmid);
    release_lock_vm(vmid);
    return ret;
}
#include <linux/types.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_hyp.h>
#include <linux/mman.h>
#include <linux/kvm_host.h>
#include <linux/io.h>
#include <trace/events/kvm.h>
#include <asm/pgalloc.h>
#include <asm/cacheflush.h>
#include <asm/kvm_arm.h>
#include <asm/kvm_mmu.h>
#include <asm/kvm_mmio.h>
#include <asm/kvm_emulate.h>
#include <asm/virt.h>
#include <asm/kernel-pgtable.h>
#include <asm/hypsec_host.h>
#include <asm/hypsec_constant.h>
#include <asm/spinlock_types.h>
#include <linux/serial_reg.h>

//#include "hypsec.h"

//hypsec_host.c
#define Op0(_x) 	.Op0 = _x
#define Op1(_x) 	.Op1 = _x
#define CRn(_x)		.CRn = _x
#define CRm(_x) 	.CRm = _x
#define Op2(_x) 	.Op2 = _x

#define SYS_DESC(reg)					\
	Op0(sys_reg_Op0(reg)), Op1(sys_reg_Op1(reg)),	\
	CRn(sys_reg_CRn(reg)), CRm(sys_reg_CRm(reg)),	\
	Op2(sys_reg_Op2(reg))

static struct s2_sys_reg_desc host_sys_reg_descs[] = {
	/* TTBR0_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0010), CRm(0b0000), Op2(0b000),
	  TTBR0_EL1, 0x1de7ec7edbadc0deULL },
	/* TTBR1_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0010), CRm(0b0000), Op2(0b001),
	  TTBR1_EL1, 0x1de7ec7edbadc0deULL },
	/* VBAR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b1100), CRm(0b0000), Op2(0b000),
	  VBAR_EL1, 0 },
	/* SCTLR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b000),
	  SCTLR_EL1, 0x00C50078 },
	/* ESR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0101), CRm(0b0010), Op2(0b000),
	  ESR_EL1, 0x1de7ec7edbadc0deULL },
	/* FAR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0110), CRm(0b0000), Op2(0b000),
	  FAR_EL1, 0x1de7ec7edbadc0deULL },
	/* TPIDR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b1101), CRm(0b0000), Op2(0b100),
	  TPIDR_EL1, 0x1de7ec7edbadc0deULL },
	/* TPIDRRO_EL0 */
	{ Op0(0b11), Op1(0b011), CRn(0b1101), CRm(0b0000), Op2(0b011),
	  TPIDRRO_EL0, 0x1de7ec7edbadc0deULL },
	/* TPIDR_EL0 */
	{ Op0(0b11), Op1(0b011), CRn(0b1101), CRm(0b0000), Op2(0b010),
	  TPIDR_EL0, 0x1de7ec7edbadc0deULL },
	/* CONTEXTIDR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b1101), CRm(0b0000), Op2(0b001),
	  CONTEXTIDR_EL1, 0 },
	/* PAR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0111), CRm(0b0100), Op2(0b000),
	  PAR_EL1, 0x1de7ec7edbadc0deULL },
	/* MPIDR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0000), CRm(0b0000), Op2(0b101),
	  MPIDR_EL1, 0 },
	/* CSSELR_EL1 */
	{ Op0(0b11), Op1(0b010), CRn(0b0000), CRm(0b0000), Op2(0b000),
	  CSSELR_EL1, 0x1de7ec7edbadc0deULL },
	/* ACTLR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b001),
	  ACTLR_EL1, 0 },
	/* CPACR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0001), CRm(0b0000), Op2(0b010),
	  CPACR_EL1, 0x1de7ec7edbadc0deULL },
	/* TCR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0010), CRm(0b0000), Op2(0b010),
	  TCR_EL1, 0 },
	/* AFSR0_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0101), CRm(0b0001), Op2(0b000),
	  AFSR0_EL1, 0x1de7ec7edbadc0deULL },
	/* AFSR1_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b0101), CRm(0b0001), Op2(0b001),
	  AFSR1_EL1, 0x1de7ec7edbadc0deULL },
	/* MAIR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b1010), CRm(0b0010), Op2(0b000),
	  MAIR_EL1, 0x1de7ec7edbadc0deULL },
	/* AMAIR_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b1010), CRm(0b0011), Op2(0b000),
	  AMAIR_EL1, 0x1de7ec7edbadc0deULL },
	/* CNTKCTL_EL1 */
	{ Op0(0b11), Op1(0b000), CRn(0b1110), CRm(0b0001), Op2(0b000),
	  CNTKCTL_EL1, 0 },
	{ SYS_DESC(SYS_MDSCR_EL1), MDSCR_EL1, 0 },
	{ SYS_DESC(SYS_MDCCINT_EL1), MDCCINT_EL1, 0 },
	{ SYS_DESC(SYS_DISR_EL1), DISR_EL1, 0 },
	/* DACR32_EL2 */
	{ Op0(0b11), Op1(0b100), CRn(0b0011), CRm(0b0000), Op2(0b000),
	  DACR32_EL2, 0x1de7ec7edbadc0deULL },
	/* IFSR32_EL2 */
	{ Op0(0b11), Op1(0b100), CRn(0b0101), CRm(0b0000), Op2(0b001),
	  IFSR32_EL2, 0x1de7ec7edbadc0deULL },
	/* FPEXC32_EL2 */
	{ Op0(0b11), Op1(0b100), CRn(0b0101), CRm(0b0011), Op2(0b000),
	  FPEXC32_EL2, 0x70 }
};


void el2_shared_data_init(void)
{
	struct el2_shared_data *shared_data;

	shared_data = (void *)kvm_ksym_ref(shared_data_start);
	memset(shared_data, 0, sizeof(struct shared_data));
	printk("[EL2] cleared %lx byte data size %lx\n",
		sizeof(struct shared_data), PAGE_SIZE * PAGE_SIZE);
}

#define CORE_PUD_BASE PAGE_SIZE
#define CORE_PMD_BASE (CORE_PUD_BASE + (PAGE_SIZE * 16))
#define CORE_PTE_BASE SZ_2M
//FIXME: Increase for bigger el2 stack
#define CORE_PGD_START	(10 * PAGE_SIZE) 
void init_el2_data_page(void)
{
	int i = 0, index = 0;
	struct el2_data *el2_data;
	struct memblock_region *r;
	u64 pool_start;

	WARN_ON(sizeof(struct el2_data) >= CORE_DATA_SIZE);

	printk("[EL2] stage2: el2_data struct size %lx reserved core data size %lx\n",
		sizeof(struct el2_data), CORE_DATA_SIZE);

	printk("memsetting %d bytes\n", STAGE2_PAGES_SIZE);
	printk("want to memset %llx -> %llx\n", virt_to_phys(kvm_ksym_ref(stage2_pgs_start)), virt_to_phys(kvm_ksym_ref(stage2_pgs_start)+STAGE2_PAGES_SIZE));

	printk("stage2_pgs_start=0x%llx (pa=0x%llx) stage2_pgs_end=0x%llx (pa=0x%llx)\n", kvm_ksym_ref(stage2_pgs_start), virt_to_phys(kvm_ksym_ref(stage2_pgs_start)), kvm_ksym_ref(stage2_pgs_end), virt_to_phys(kvm_ksym_ref(stage2_pgs_end)));
	//memset((void *)kvm_ksym_ref(stage2_pgs_start), 0, STAGE2_PAGES_SIZE);
	memset((void *)(stage2_pgs_start), 0, STAGE2_PAGES_SIZE);
	__flush_dcache_area((void *)(stage2_pgs_start), STAGE2_PAGES_SIZE);

	memset((void *)(kvm_ksym_ref(el2_data_start)), 0, CORE_DATA_SIZE);
	__flush_dcache_area((void *)(el2_data_start), CORE_DATA_SIZE);

	el2_data = (void *)kvm_ksym_ref(el2_data_start);
	//el2_data = (void*)el2_data_start;
	//printk("el2_data phys %llx to %llx\n", virt_to_phys(el2_data_start), virt_to_phys(el2_data_end));
	//printk("el2_data %llx vs. %llx\n", el2_data_start, (void *)kvm_ksym_ref(el2_data_start));
	//printk("init_pg_end %llx vs. %llx\n", init_pg_end, (void *)kvm_ksym_ref(init_pg_end));

	el2_data->installed = false;

	/* We copied memblock_regions to the EL2 data structure*/
	for_each_memblock(memory, r) {
		el2_data->regions[i] = *r;
		if (!(r->flags & MEMBLOCK_NOMAP)) {
			el2_data->s2_memblock_info[i].index = index;
			index += (r->size >> PAGE_SHIFT);
		} else
			el2_data->s2_memblock_info[i].index = S2_PFN_SIZE;
		el2_data->phys_mem_size += el2_data->regions[i].size; 
		i++;
//		printk("memblock %i: base=%llx size=%llx\n", i, r->base, r->size);
	}
	el2_data->regions_cnt = i;
	el2_data->phys_mem_start = el2_data->regions[0].base; 

	printk("EL2 system phys mem start %llx end %llx\n",
		el2_data->phys_mem_start, el2_data->phys_mem_size);

	//el2_data->used_pages = 0;
	//el2_data->used_tmp_pages = 0;
	el2_data->page_pool_start = (u64)__pa(stage2_pgs_start);

	//el2_data->s2pages_lock.lock = 0;
	//el2_data->abs_lock.lock = 0;
	//el2_data->el2_pt_lock.lock = 0;
	//el2_data->console_lock.lock = 0;
	//el2_data->smmu_lock.lock = 0;
	//el2_data->spt_lock.lock = 0;

	//memset(&el2_data->arch, 0, sizeof(struct s2_cpu_arch));

	//memset(el2_data->s2_pages, 0, sizeof(struct s2_page) * S2_PFN_SIZE);
	el2_data->ram_start_pfn = el2_data->regions[0].base >> PAGE_SHIFT;

	//memset(el2_data->shadow_vcpu_ctxt, 0,
	//       sizeof(struct shadow_vcpu_context) * NUM_SHADOW_VCPU_CTXT);
	//el2_data->used_shadow_vcpu_ctxt = 0;

	/* This guarantees all locks are initially zero. */
	memset(el2_data->vm_info, 0,
		sizeof(struct el2_vm_info) * EL2_VM_INFO_SIZE);
	el2_data->last_remap_ptr = 0;

	el2_data->vm_info[0].shadow_pt_lock.lock = 0;

	pool_start = el2_data->page_pool_start + STAGE2_CORE_PAGES_SIZE + STAGE2_HOST_POOL_SIZE;
	for (i = 1; i < EL2_VM_INFO_SIZE - 1; i++) {
		el2_data->vm_info[i].page_pool_start =
			pool_start + (STAGE2_VM_POOL_SIZE * (i - 1));
//		printk("vm_info[%d].page_pool_start = %llx\n", i, __va(el2_data->vm_info[i].page_pool_start));
		el2_data->vm_info[i].used_pages = 0;
		//memset(__va(el2_data->vm_info[i].page_pool_start), 0, STAGE2_VM_POOL_SIZE);
		//FIXME: init vm_info[i].vttbr here, or VMID
	}

	el2_data->vm_info[HOSTVISOR].page_pool_start =
		el2_data->page_pool_start + STAGE2_CORE_PAGES_SIZE;
	el2_data->vm_info[HOSTVISOR].used_pages = 0;
	el2_data->host_vttbr = el2_data->vm_info[HOSTVISOR].page_pool_start;
	el2_data->vm_info[HOSTVISOR].used_pages = 1;
	el2_data->vm_info[HOSTVISOR].vttbr = el2_data->host_vttbr;

	/* CORE POOL -> HOSTVISOR POOL -> VM POOL */
	el2_data->vm_info[COREVISOR].page_pool_start =
		el2_data->page_pool_start + CORE_PGD_START;
	el2_data->vm_info[COREVISOR].used_pages = 0;	

	/* FIXME: hardcode this for now */
	//el2_data->smmu_page_pool_start = el2_data->vm_info[EL2_VM_INFO_SIZE - 3].page_pool_start;
	//el2_data->smmu_pgd_used_pages = 0;
	//el2_data->smmu_pmd_used_pages = 0;

	for (i = 0; i < SHADOW_SYS_REGS_DESC_SIZE; i++)
		el2_data->s2_sys_reg_descs[i] = host_sys_reg_descs[i];

	el2_data->next_vmid = 1;

	/* We init intermediate data structure here. */
	el2_shared_data_init();

	BUG_ON(num_online_cpus() > HYPSEC_MAX_CPUS);
	for (i = 0; i < num_online_cpus(); i++) {
		el2_data->per_cpu_data[i].vmid = 0;
		el2_data->per_cpu_data[i].vcpu_id = i;
	}

	el2_data->core_start = __pa(stage2_pgs_start);
	el2_data->core_end = __pa(el2_data_end);

	//init_hacl_hash(el2_data);
	//test_aes(el2_data);

	//for (i = 0; i < EL2_SMMU_CFG_SIZE; i++) {
	//	el2_data->smmu_cfg[i].hw_ttbr = host_alloc_stage2_page(2);
	//	el2_data->smmu_cfg[i].vmid = V_INVALID;
	//}

	return;
}

void init_hypsec_io(void)
{
	int i = 0, err;
	struct el2_data *el2_data;
	struct el2_arm_smmu_device *smmu;

	el2_data = (void *)kvm_ksym_ref(el2_data_start);

#if 0
	//TODO: Hacky stuff for prints on m400
	err = create_hypsec_io_mappings((phys_addr_t)0x1c021000,
					 PAGE_SIZE,
					 &el2_data->uart_8250_base);
	if (err) {
		kvm_err("Cannot map uart 8250\n");
		goto out_err;
	}
#endif

	if (el2_data->pl011_base == 0)
		el2_data->pl011_base = 0xfe201000;
	err = create_hypsec_io_mappings((phys_addr_t)el2_data->pl011_base,
					 PAGE_SIZE,
					 &el2_data->pl011_base);
	if (err) {
		kvm_err("Cannot map pl011\n");
		goto out_err;
	}

	/*for (i = 0; i < el2_data->el2_smmu_num; i++) {
		smmu = &el2_data->smmus[i];
		err = create_hypsec_io_mappings(smmu->phys_base, smmu->size,
						&smmu->hyp_base);
		if (err) {
			kvm_err("Cannot map smmu %d from %llx\n", i, smmu->phys_base);
			goto out_err;
		}
	}*/

out_err:
	return;
}

//hypsec_mmu.c
phys_addr_t host_alloc_stage2_page(unsigned int num)
{
	u64 p_addr, start, unaligned, append, used_pages;
	struct el2_data *el2_data;

	if (!num)
		return 0;

	el2_data = kvm_ksym_ref(el2_data_start);
	stage2_spin_lock(&el2_data->abs_lock);

	/* Check if we're out of memory in the reserved area */
	BUG_ON(el2_data->vm_info[COREVISOR].used_pages >= (CORE_PGD_START >> PAGE_SHIFT));

	/* Start allocating memory from the normal page pool */
	//start = el2_data->vm_info[COREVISOR].page_pool_start;
	start = el2_data->page_pool_start;
	used_pages = el2_data->vm_info[COREVISOR].used_pages;
	p_addr = (u64)start + (PAGE_SIZE * used_pages);

	unaligned = p_addr % (PAGE_SIZE * num);
	/* Append to make p_addr aligned with (PAGE_SIZE * num) */
	if (unaligned) {
		append = num - (unaligned >> PAGE_SHIFT);
		p_addr += append * PAGE_SIZE;
		num += append;
	}

	el2_data->vm_info[COREVISOR].used_pages += num;

	stage2_spin_unlock(&el2_data->abs_lock);
	return (phys_addr_t)p_addr;
}

phys_addr_t host_alloc_pgd(unsigned int num)
{
	u64 p_addr, start, end;
	struct el2_data *el2_data;

	el2_data = kvm_ksym_ref(el2_data_start);
	stage2_spin_lock(&el2_data->abs_lock);

	/* Start allocating memory from the normal page pool */
	start = el2_data->vm_info[COREVISOR].page_pool_start;
	end = start + CORE_PUD_BASE; 
	p_addr = (u64)start;

	stage2_spin_unlock(&el2_data->abs_lock);

	if (p_addr >= end)
		BUG();
	return (phys_addr_t)p_addr;
}

phys_addr_t host_alloc_pud(unsigned int num)
{
	u64 p_addr, start, used_pages, end;
	struct el2_data *el2_data;

	el2_data = kvm_ksym_ref(el2_data_start);
	stage2_spin_lock(&el2_data->abs_lock);

	/* Start allocating memory from the normal page pool */
	start = el2_data->vm_info[COREVISOR].page_pool_start;
	end = start + CORE_PMD_BASE; 
	used_pages = el2_data->vm_info[COREVISOR].pud_used_pages;
	p_addr = (u64)start + (PAGE_SIZE * used_pages) + CORE_PUD_BASE;

	el2_data->vm_info[COREVISOR].pud_used_pages += num;

	stage2_spin_unlock(&el2_data->abs_lock);

	//printk("%s start %llx end %llx\n", __func__, start, end);
	if (p_addr >= end)
		BUG();
	return (phys_addr_t)p_addr;
}


phys_addr_t host_alloc_pmd(unsigned int num)
{
	u64 p_addr, start, used_pages, end;
	struct el2_data *el2_data;

	el2_data = kvm_ksym_ref(el2_data_start);
	stage2_spin_lock(&el2_data->abs_lock);

	/* Start allocating memory from the normal page pool */
	start = el2_data->vm_info[COREVISOR].page_pool_start;
	end = start + CORE_PTE_BASE; 
	used_pages = el2_data->vm_info[COREVISOR].pmd_used_pages;
	p_addr = (u64)start + (PAGE_SIZE * used_pages) + CORE_PMD_BASE;

	el2_data->vm_info[COREVISOR].pmd_used_pages += num;

	stage2_spin_unlock(&el2_data->abs_lock);

	//printk("%s start %llx end %llx\n", __func__, start, end);
	if (p_addr >= end)
		BUG();
	return (phys_addr_t)p_addr;
}

phys_addr_t host_alloc_pte(unsigned int num)
{
	u64 p_addr, start, used_pages, end;
	struct el2_data *el2_data;

	el2_data = kvm_ksym_ref(el2_data_start);
	stage2_spin_lock(&el2_data->abs_lock);

	/* Start allocating memory from the normal page pool */
	start = el2_data->vm_info[COREVISOR].page_pool_start;
	end = start + STAGE2_CORE_PAGES_SIZE;
	used_pages = el2_data->vm_info[COREVISOR].pte_used_pages;
	p_addr = (u64)start + (PAGE_SIZE * used_pages) + CORE_PTE_BASE;

	el2_data->vm_info[COREVISOR].pte_used_pages += num;

	stage2_spin_unlock(&el2_data->abs_lock);

	//printk("%s start %llx end %llx\n", __func__, start, end);
	if (p_addr >= end)
		BUG();
	memset(__va(p_addr), 0, PAGE_SIZE);	
	return (phys_addr_t)p_addr;
}

struct kvm* hypsec_alloc_vm(u32 vmid)
{
	struct shared_data *shared_data;
	shared_data = kvm_ksym_ref(shared_data_start);
	if (vmid >= EL2_MAX_VMID)
		BUG();
	return &shared_data->kvm_pool[vmid];
}

struct kvm_vcpu* hypsec_alloc_vcpu(u32 vmid, int vcpu_id)
{
	struct shared_data *shared_data;
	int index;
	shared_data = kvm_ksym_ref(shared_data_start);
	if (vmid >= EL2_MAX_VMID || vcpu_id >= HYPSEC_MAX_VCPUS)
		BUG();
	index = (vmid * HYPSEC_MAX_VCPUS) + vcpu_id;
	return &shared_data->vcpu_pool[index];
}

int el2_set_boot_info(u32 vmid, unsigned long load_addr,
			unsigned long size, int type)
{
	return kvm_call_core(HVC_SET_BOOT_INFO, vmid, load_addr, size, type);
}

int el2_remap_vm_image(u32 vmid, unsigned long pfn, int id)
{
	return kvm_call_core(HVC_REMAP_VM_IMAGE, vmid, pfn, id);
}

int el2_verify_and_load_images(u32 vmid)
{
	return kvm_call_core(HVC_VERIFY_VM_IMAGES, vmid);
}

void el2_boot_from_inc_exe(u32 vmid)
{
	kvm_call_core(HVC_BOOT_FROM_SAVED_VM, vmid);
}

void save_encrypted_vcpu(struct kvm_vcpu *vcpu)
{
	kvm_call_core((void *)HVC_SAVE_CRYPT_VCPU,
			vcpu->kvm->arch.vmid, vcpu->vcpu_id);
}

void clear_vm_stage2_range(u32 vmid, phys_addr_t start, u64 size)
{
	kvm_call_core(HVC_CLEAR_VM_S2_RANGE, vmid, start, size);
}

void el2_encrypt_buf(u32 vmid, void *buf, uint32_t len)
{
	kvm_call_core(HVC_ENCRYPT_BUF, vmid, buf, len);
}

void el2_decrypt_buf(u32 vmid, void *buf, uint32_t len)
{
	kvm_call_core(HVC_DECRYPT_BUF, vmid, buf, len);
}

int hypsec_register_kvm(void)
{
	return kvm_call_core(HVC_REGISTER_KVM);
}

int hypsec_register_vcpu(u32 vmid, int vcpu_id)
{
	return kvm_call_core((void *)HVC_REGISTER_VCPU, vmid, vcpu_id);
}

/* DMA Protection */
void el2_smmu_free_pgd(u32 cbndx, u32 num)
{
	kvm_call_core(HVC_SMMU_FREE_PGD, cbndx, num);
}

void el2_smmu_alloc_pgd(u32 cbndx, u32 vmid, u32 num)
{
	kvm_call_core(HVC_SMMU_ALLOC_PGD, cbndx, vmid, num);
}

void el2_arm_lpae_map(u64 iova, phys_addr_t paddr, u64 prot, u32 cbndx, u32 num)
{
	kvm_call_core(HVC_SMMU_LPAE_MAP, iova, paddr, prot, cbndx, num);
}

phys_addr_t el2_arm_lpae_iova_to_phys(u64 iova, u32 cbndx, u32 num)
{
	return kvm_call_core(HVC_SMMU_LPAE_IOVA_TO_PHYS, iova, cbndx, num);
}

void el2_smmu_clear(u64 iova, u32 cbndx, u32 num)
{
	kvm_call_core(HVC_SMMU_CLEAR, iova, cbndx, num);
}

void el2_kvm_phys_addr_ioremap(u32 vmid, u64 gpa, u64 pa, u64 size)
{
	kvm_call_core(HVC_PHYS_ADDR_IOREMAP, vmid, gpa, pa, size);
}
#include <linux/types.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_hyp.h>
#include <linux/mman.h>
#include <linux/kvm_host.h>
#include <linux/io.h>
#include <trace/events/kvm.h>
#include <asm/pgalloc.h>
#include <asm/cacheflush.h>
#include <asm/kvm_arm.h>
#include <asm/kvm_mmu.h>
#include <asm/kvm_mmio.h>
#include <asm/kvm_emulate.h>
#include <asm/virt.h>
#include <asm/kernel-pgtable.h>
#include <asm/hypsec_host.h>
#include <asm/spinlock_types.h>
#include <linux/serial_reg.h>

#include "hypsec.h"


static void __hyp_text self_test(void)
{
	int vmid, i = 0;

	print_string("\rregister kvm\n");
	vmid = register_kvm();
	do {
		print_string("\rregister vcpu\n");
		printhex_ul((unsigned long)i);
		register_vcpu(vmid, i++);
	} while (i < 4);
}


extern int __hypsec_register_vm(struct kvm *kvm);
void __hyp_text handle_host_stage2_fault(unsigned long host_lr,
					struct s2_host_regs *host_regs)
{
	phys_addr_t addr = (read_sysreg(hpfar_el2) & HPFAR_MASK) << 8;
	set_per_cpu_host_regs((u64)host_regs);
	if (emulate_mmio(addr, read_sysreg(esr_el2)) == INVALID64)
		map_page_host(addr);
}

/*
 * Since EL2 page tables were allocated in EL2, here we need to protect
 * them by setting the ownership of the pages to HYPSEC_VMID. This allows
 * the core to reject any following accesses from the host.
 */
static void __hyp_text protect_el2_mem(void)
{
	unsigned long addr, end, index;
	struct el2_data *el2_data = get_el2_data_start();

	/* Protect stage2 data and page pool. */
	addr = el2_data->core_start;
	end =  el2_data->core_end;
	do {
		index = get_s2_page_index(addr);
		set_s2_page_vmid(index, COREVISOR);
		addr += PAGE_SIZE;
	} while (addr < end);
}

extern u32 __init_stage2_translation(void);
//TODO: Did we prove the following?
static void __hyp_text hvc_enable_s2_trans(void)
{
	struct el2_data *el2_data;

	acquire_lock_core();
	el2_data = get_el2_data_start();

	if (!el2_data->installed) {
		protect_el2_mem();
		el2_data->installed = true;
	}

	__init_stage2_translation();

	write_sysreg(el2_data->host_vttbr, vttbr_el2);
	write_sysreg(HCR_HYPSEC_HOST_NVHE_FLAGS, hcr_el2);
	__kvm_flush_vm_context();

	release_lock_core();
	//self_test();
}

void __hyp_text handle_host_hvc(struct s2_host_regs *hr)
{
	u64 ret = 0, callno = get_host_reg(hr, 0);

	set_per_cpu_host_regs((u64)hr);
	/* FIXME: we write return val to reg[31] as this will be restored to x0 */
	switch (callno) {
	case HVC_ENABLE_S2_TRANS:
		print_string("\rHVC_ENABLE_S2_TRANS\n");
		hvc_enable_s2_trans();
		break;
	case HVC_VCPU_RUN:
		ret = (u64)__kvm_vcpu_run_nvhe((u32)get_host_reg(hr, 1), (int)get_host_reg(hr, 2));
		set_host_regs(0, ret);
		break;
	case HVC_TIMER_SET_CNTVOFF:
		__kvm_timer_set_cntvoff((u32)get_host_reg(hr, 1), (u32)get_host_reg(hr, 2));
		break;
	// The following can only be called when VM terminates.
	case HVC_CLEAR_VM_S2_RANGE:
		__clear_vm_stage2_range((u32)get_host_reg(hr, 1), (u64)get_host_reg(hr, 3));
		break;
	case HVC_SET_BOOT_INFO:
		ret = set_boot_info((u32)get_host_reg(hr, 1), (unsigned long)get_host_reg(hr, 2),
			      (unsigned long)get_host_reg(hr, 3));
		set_host_regs(0, ret);
		break;
	case HVC_REMAP_VM_IMAGE:
		remap_vm_image((u32)get_host_reg(hr, 1), (unsigned long)get_host_reg(hr, 2),
				     (int)get_host_reg(hr, 3));
		break;
	case HVC_VERIFY_VM_IMAGES:
		//ret = (u64)__el2_verify_and_load_images((u32)get_host_reg(hr, 1));
		//hr->regs[31] = (u64)ret;
		verify_and_load_images((u32)get_host_reg(hr, 1));
		set_host_regs(0, 1);
		break;
	case HVC_SMMU_FREE_PGD:
		//print_string("\rfree smmu pgd\n");
		__el2_free_smmu_pgd(get_host_reg(hr, 1), get_host_reg(hr, 2));
		//print_string("\rafter free smmu pgd\n");
		break;
	case HVC_SMMU_ALLOC_PGD:
		//print_string("\ralloc smmu pgd\n");
		__el2_alloc_smmu_pgd(get_host_reg(hr, 1),  get_host_reg(hr, 2), get_host_reg(hr, 3));
		//print_string("\rafter alloc smmu pgd\n");
		break;
	case HVC_SMMU_LPAE_MAP:
		//print_string("\rsmmu mmap\n");
		v_el2_arm_lpae_map(get_host_reg(hr, 1), get_host_reg(hr, 2), get_host_reg(hr, 3), get_host_reg(hr, 4),
				   get_host_reg(hr, 5));
		//print_string("\rafter smmu mmap\n");
		break;
	case HVC_SMMU_LPAE_IOVA_TO_PHYS:
		//print_string("\rsmmu iova to phys\n");
		ret = (u64)__el2_arm_lpae_iova_to_phys(get_host_reg(hr, 1), get_host_reg(hr, 2), get_host_reg(hr, 3));
		set_host_regs(0, ret);
		//print_string("\rafter smmu iova to phys\n");
		break;
	case HVC_SMMU_CLEAR:
		//print_string("\rsmmu clear\n");
		__el2_arm_lpae_clear(get_host_reg(hr, 1), get_host_reg(hr, 2), get_host_reg(hr, 3));
		//print_string("\rafter smmu clear\n");
		break;
	/*case HVC_BOOT_FROM_SAVED_VM:
		__el2_boot_from_inc_exe((u32)get_host_reg(hr, 1));
		break;
	case HVC_ENCRYPT_BUF:
		__el2_encrypt_buf((u32)get_host_reg(hr, 1), (void*)get_host_reg(hr, 2), (uint32_t)get_host_reg(hr, 3));
		break;
	case HVC_DECRYPT_BUF:
		__el2_decrypt_buf((u32)get_host_reg(hr, 1), (void*)get_host_reg(hr, 2), (uint32_t)get_host_reg(hr, 3));
		break;
	case HVC_SAVE_CRYPT_VCPU:
		__save_encrypted_vcpu((u32)get_host_reg(hr, 1), (int)get_host_reg(hr, 2));
		break;*/
	case HVC_REGISTER_KVM:
		ret = (int)register_kvm();
		set_host_regs(0, ret);
		break;
	case HVC_REGISTER_VCPU:
		ret = (int)register_vcpu((u32)get_host_reg(hr, 1), (int)get_host_reg(hr, 2));
		set_host_regs(0, ret);
		break;
	case HVC_PHYS_ADDR_IOREMAP:
		//FIXME: We need to call to the new map_io function...
		//__kvm_phys_addr_ioremap((u32)get_host_reg(hr, 1), get_host_reg(hr, 2), get_host_reg(hr, 3), get_host_reg(hr, 4));
		v_kvm_phys_addr_ioremap((u32)get_host_reg(hr, 1), get_host_reg(hr, 2), get_host_reg(hr, 3), get_host_reg(hr, 4));
		break;
	default:
		print_string("\rno support hvc:\n");
		printhex_ul(callno);
		break;
		//__hyp_panic();
	};
}

//added by shih-wei
struct el2_vm_info* __hyp_text vmid_to_vm_info(u32 vmid)
{
	struct el2_data *el2_data;

	el2_data = get_el2_data_start();
	if (vmid < EL2_MAX_VMID)
		return &el2_data->vm_info[vmid];
	else
		__hyp_panic();
}

struct int_vcpu* __hyp_text vcpu_id_to_int_vcpu(
			struct el2_vm_info *vm_info, int vcpu_id)
{
	if (vcpu_id < 0 || vcpu_id >= HYPSEC_MAX_VCPUS)
		return NULL;
	else
		return &vm_info->int_vcpus[vcpu_id];
}
int __hyp_text hypsec_set_vcpu_active(u32 vmid, int vcpu_id)
{
	struct el2_vm_info *vm_info = vmid_to_vm_info(vmid);
	struct int_vcpu *int_vcpu;
	int ret = 1;

	acquire_lock_vm(vmid);
	if (get_vm_state(vmid) != VERIFIED) {
		ret = 0;
		goto out;
	}

	int_vcpu = vcpu_id_to_int_vcpu(vm_info, vcpu_id);
	if (get_vcpu_state(vmid, vcpu_id) == READY)
		set_vcpu_state(vmid, vcpu_id, ACTIVE);
	else
		ret = 0;
out:
	release_lock_vm(vmid);
	return ret;
}

struct kvm_vcpu* __hyp_text hypsec_vcpu_id_to_vcpu(u32 vmid, int vcpu_id)
{
	struct kvm_vcpu *vcpu = NULL;
	int offset;
	struct shared_data *shared_data;

	if (vcpu_id >= HYPSEC_MAX_VCPUS)
		__hyp_panic();

	shared_data = get_shared_data_start();
	offset = VCPU_IDX(vmid, vcpu_id);
	vcpu = &shared_data->vcpu_pool[offset];
	if (!vcpu)
		__hyp_panic();
	else
		return vcpu;
}

struct kvm* __hyp_text hypsec_vmid_to_kvm(u32 vmid)
{
	struct kvm *kvm = NULL;
	struct shared_data *shared_data;

	shared_data = get_shared_data_start();
	kvm = &shared_data->kvm_pool[vmid];
	if (!kvm)
		__hyp_panic();
	else
		return kvm;
}

struct shadow_vcpu_context* __hyp_text hypsec_vcpu_id_to_shadow_ctxt(
	u32 vmid, int vcpu_id)
{
	struct el2_data *el2_data = get_el2_data_start();
	struct shadow_vcpu_context *shadow_ctxt = NULL;
	int index;

	if (vcpu_id >= HYPSEC_MAX_VCPUS)
		__hyp_panic();

	index = VCPU_IDX(vmid, vcpu_id);
	shadow_ctxt = &el2_data->shadow_vcpu_ctxt[index];
	if (!shadow_ctxt)
		__hyp_panic();
	else
		return shadow_ctxt;
}

void __hyp_text hypsec_set_vcpu_state(u32 vmid, int vcpu_id, int state)
{
	acquire_lock_vm(vmid);
	set_vcpu_state(vmid, vcpu_id, state);
	release_lock_vm(vmid);
}

void __hyp_text reset_fp_regs(u32 vmid, int vcpu_id)
{
	struct shadow_vcpu_context *shadow_ctxt = NULL;
	struct kvm_vcpu *vcpu = vcpu;
	struct kvm_regs *kvm_regs;

	shadow_ctxt = hypsec_vcpu_id_to_shadow_ctxt(vmid, vcpu_id);
	vcpu = hypsec_vcpu_id_to_vcpu(vmid, vcpu_id);
	kvm_regs = &vcpu->arch.ctxt.gp_regs;
	el2_memcpy(&shadow_ctxt->fp_regs, &kvm_regs->fp_regs,
					sizeof(struct user_fpsimd_state));
}

/*
void __hyp_text map_vgic_to_vm(u32 vmid)
{
	struct el2_data *el2_data = get_el2_data_start();
	unsigned long vgic_cpu_gpa = 0x08010000;
	u64 pte = el2_data->vgic_cpu_base + (pgprot_val(PAGE_S2_DEVICE) | S2_RDWR);
	mmap_s2pt(vmid, vgic_cpu_gpa, 3U, pte);
	mmap_s2pt(vmid, vgic_cpu_gpa + PAGE_SIZE, 3U, pte + PAGE_SIZE);
}
*/

#define CURRENT_EL_SP_EL0_VECTOR	0x0
#define CURRENT_EL_SP_ELx_VECTOR	0x200
#define LOWER_EL_AArch64_VECTOR		0x400
#define LOWER_EL_AArch32_VECTOR		0x600

enum exception_type {
	except_type_sync	= 0,
	except_type_irq		= 0x80,
	except_type_fiq		= 0x100,
	except_type_serror	= 0x180,
};

static u64 __hyp_text stage2_get_exception_vector(u64 pstate)
{
	u64 exc_offset;

	switch (pstate & (PSR_MODE_MASK | PSR_MODE32_BIT)) {
	case PSR_MODE_EL1t:
		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
		break;
	case PSR_MODE_EL1h:
		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
		break;
	case PSR_MODE_EL0t:
		exc_offset = LOWER_EL_AArch64_VECTOR;
		break;
	default:
		exc_offset = LOWER_EL_AArch32_VECTOR;
	}

	return read_sysreg(vbar_el1) + exc_offset;
}

/* Currently, we do not handle lower level fault from 32bit host */
void __hyp_text stage2_inject_el1_fault(unsigned long addr)
{
	u64 pstate = read_sysreg(spsr_el2);
	u32 esr = 0, esr_el2;
	bool is_iabt = false;

	write_sysreg(read_sysreg(elr_el2), elr_el1);
	write_sysreg(stage2_get_exception_vector(pstate), elr_el2);

	write_sysreg(addr, far_el1);
	write_sysreg(PSTATE_FAULT_BITS_64, spsr_el2);
	write_sysreg(pstate, spsr_el1);

	esr_el2 = read_sysreg(esr_el2);
	if ((esr_el2 << ESR_ELx_EC_SHIFT) == ESR_ELx_EC_IABT_LOW)
		is_iabt = true;

	/* To get fancier debug info that includes LR from the guest Linux,
	 * we can intentionally comment out the EC_LOW_ABT case and always
	 * inject the CUR mode exception.
	 */
	if ((pstate & PSR_MODE_MASK) == PSR_MODE_EL0t)
		esr |= (ESR_ELx_EC_IABT_LOW << ESR_ELx_EC_SHIFT);
	else
		esr |= (ESR_ELx_EC_IABT_CUR << ESR_ELx_EC_SHIFT);

	if (!is_iabt)
		esr |= ESR_ELx_EC_DABT_LOW << ESR_ELx_EC_SHIFT;

	esr |= ESR_ELx_FSC_EXTABT;
	write_sysreg(esr, esr_el1);
}

void __hyp_text reject_invalid_mem_access(phys_addr_t addr)
{
	print_string("\rinvalid access of guest memory\n\r");
	print_string("\rpc: \n");
	printhex_ul(read_sysreg(elr_el2));
	print_string("\rpa: \n");
	printhex_ul(addr);
	stage2_inject_el1_fault(addr);
}
/*
 * Copyright (C) 2016 - ARM Ltd
 * Author: Marc Zyngier <marc.zyngier@arm.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <linux/types.h>
#include <asm/kvm_arm.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_hyp.h>

u32 __hyp_text __init_stage2_translation(void)
{
	u64 val = VTCR_EL2_FLAGS;
	u64 parange;
	u64 tmp;

	/*
	 * Read the PARange bits from ID_AA64MMFR0_EL1 and set the PS
	 * bits in VTCR_EL2. Amusingly, the PARange is 4 bits, while
	 * PS is only 3. Fortunately, bit 19 is RES0 in VTCR_EL2...
	 */
	parange = read_sysreg(id_aa64mmfr0_el1) & 7;
	if (parange > ID_AA64MMFR0_PARANGE_MAX)
		parange = ID_AA64MMFR0_PARANGE_MAX;
	val |= parange << 16;

	/* Compute the actual PARange... */
	switch (parange) {
	case 0:
		parange = 32;
		break;
	case 1:
		parange = 36;
		break;
	case 2:
		parange = 40;
		break;
	case 3:
		parange = 42;
		break;
	case 4:
		parange = 44;
		break;
	case 5:
	default:
		parange = 48;
		break;
	}

	/*
	 * ... and clamp it to 40 bits, unless we have some braindead
	 * HW that implements less than that. In all cases, we'll
	 * return that value for the rest of the kernel to decide what
	 * to do.
	 */
	val |= 64 - (parange > 40 ? 40 : parange);

	/*
	 * Check the availability of Hardware Access Flag / Dirty Bit
	 * Management in ID_AA64MMFR1_EL1 and enable the feature in VTCR_EL2.
	 */
	tmp = (read_sysreg(id_aa64mmfr1_el1) >> ID_AA64MMFR1_HADBS_SHIFT) & 0xf;
	if (tmp)
		val |= VTCR_EL2_HA;

	/*
	 * Read the VMIDBits bits from ID_AA64MMFR1_EL1 and set the VS
	 * bit in VTCR_EL2.
	 */
	tmp = (read_sysreg(id_aa64mmfr1_el1) >> ID_AA64MMFR1_VMIDBITS_SHIFT) & 0xf;
	val |= (tmp == ID_AA64MMFR1_VMIDBITS_16) ?
			VTCR_EL2_VS_16BIT :
			VTCR_EL2_VS_8BIT;

	write_sysreg(val, vtcr_el2);

	return parange;
}
#include <linux/compiler.h>
#include <linux/kvm_host.h>

#include <asm/kvm_asm.h>
#include <asm/kvm_emulate.h>
#include <asm/kvm_hyp.h>

#include <asm/hypsec_host.h>
#include <asm/hypsec_constant.h>

#define OFF SYSREGS_START 
static void __hyp_text __vm_sysreg_save_common_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];
	
	ctxt->sys_regs[MDSCR_EL1] = read_sysreg(mdscr_el1);

	/*
	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
	 * therefore be saved/restored on every entry/exit to/from the guest.
	 */
	ctxt->regs[V_SP] = read_sysreg(sp_el0);
}

static void __hyp_text __vm_sysreg_save_user_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	ctxt->sys_regs[TPIDR_EL0] = read_sysreg(tpidr_el0);
	ctxt->sys_regs[TPIDRRO_EL0] = read_sysreg(tpidrro_el0);
}

static void __hyp_text __vm_sysreg_save_el1_state(u32 vmid, u32 vcpuid)
{	
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	ctxt->sys_regs[MPIDR_EL1] = read_sysreg(vmpidr_el2);
	ctxt->sys_regs[CSSELR_EL1] = read_sysreg(csselr_el1);
	ctxt->sys_regs[SCTLR_EL1] = read_sysreg_el1(SYS_SCTLR);
	ctxt->sys_regs[ACTLR_EL1] = read_sysreg(actlr_el1);
	ctxt->sys_regs[CPACR_EL1] = read_sysreg_el1(SYS_CPACR);
	ctxt->sys_regs[TTBR0_EL1] = read_sysreg_el1(SYS_TTBR0);
	ctxt->sys_regs[TTBR1_EL1] = read_sysreg_el1(SYS_TTBR1);
	ctxt->sys_regs[TCR_EL1] = read_sysreg_el1(SYS_TCR);
	ctxt->sys_regs[ESR_EL1] = read_sysreg_el1(SYS_ESR);
	ctxt->sys_regs[AFSR0_EL1] = read_sysreg_el1(SYS_AFSR0);
	ctxt->sys_regs[AFSR1_EL1] = read_sysreg_el1(SYS_AFSR1);
	ctxt->sys_regs[FAR_EL1] = read_sysreg_el1(SYS_FAR);
	ctxt->sys_regs[MAIR_EL1] = read_sysreg_el1(SYS_MAIR);
	ctxt->sys_regs[VBAR_EL1] = read_sysreg_el1(SYS_VBAR);
	ctxt->sys_regs[CONTEXTIDR_EL1] = read_sysreg_el1(SYS_CONTEXTIDR);
	ctxt->sys_regs[AMAIR_EL1] = read_sysreg_el1(SYS_AMAIR);
	ctxt->sys_regs[CNTKCTL_EL1] = read_sysreg_el1(SYS_CNTKCTL);
	ctxt->sys_regs[PAR_EL1] = read_sysreg(par_el1);
	ctxt->sys_regs[TPIDR_EL1] = read_sysreg(tpidr_el1);

	ctxt->regs[V_SP_EL1] = read_sysreg(sp_el1);
	ctxt->regs[V_ELR_EL1] = read_sysreg_el1(SYS_ELR);
	ctxt->regs[V_SPSR_EL1] = read_sysreg_el1(SYS_SPSR);
}

static void __hyp_text __vm_sysreg_save_el2_return_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	ctxt->regs[V_PC] = read_sysreg_el2(SYS_ELR);
	ctxt->regs[V_PSTATE] = read_sysreg_el2(SYS_SPSR);
}

static void __hyp_text __vm_sysreg_restore_el1_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	write_sysreg(ctxt->sys_regs[MPIDR_EL1],	vmpidr_el2);
	write_sysreg(ctxt->sys_regs[CSSELR_EL1], csselr_el1);
	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1], SYS_SCTLR);
	write_sysreg(ctxt->sys_regs[ACTLR_EL1], actlr_el1);
	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1], SYS_CPACR);
	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1], SYS_TTBR0);
	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1], SYS_TTBR1);
	write_sysreg_el1(ctxt->sys_regs[TCR_EL1], SYS_TCR);
	write_sysreg_el1(ctxt->sys_regs[ESR_EL1], SYS_ESR);
	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL1], SYS_AFSR0);
	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL1], SYS_AFSR1);
	write_sysreg_el1(ctxt->sys_regs[FAR_EL1], SYS_FAR);
	write_sysreg_el1(ctxt->sys_regs[MAIR_EL1], SYS_MAIR);
	write_sysreg_el1(ctxt->sys_regs[VBAR_EL1], SYS_VBAR);
	write_sysreg_el1(ctxt->sys_regs[CONTEXTIDR_EL1], SYS_CONTEXTIDR);
	write_sysreg_el1(ctxt->sys_regs[AMAIR_EL1], SYS_AMAIR);
	write_sysreg_el1(ctxt->sys_regs[CNTKCTL_EL1], SYS_CNTKCTL);
	write_sysreg(ctxt->sys_regs[PAR_EL1], par_el1);
	write_sysreg(ctxt->sys_regs[TPIDR_EL1],	tpidr_el1);

	write_sysreg(ctxt->regs[V_SP_EL1], sp_el1);
	write_sysreg_el1(ctxt->regs[V_ELR_EL1],	SYS_ELR);
	write_sysreg_el1(ctxt->regs[V_SPSR_EL1], SYS_SPSR);
}

static void __hyp_text __vm_sysreg_restore_common_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	write_sysreg(ctxt->sys_regs[MDSCR_EL1], mdscr_el1);

	/*
	 * The host arm64 Linux uses sp_el0 to point to 'current' and it must
	 * therefore be saved/restored on every entry/exit to/from the guest.
	 */
	write_sysreg(ctxt->regs[V_SP], sp_el0);
}

static void __hyp_text
__vm_sysreg_restore_el2_return_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	write_sysreg_el2(ctxt->regs[V_PC], SYS_ELR);
	write_sysreg_el2(ctxt->regs[V_PSTATE], SYS_SPSR);
}

static void __hyp_text
__vm_sysreg_restore_user_state(u32 vmid, u32 vcpuid)
{
	struct el2_data *el2_data = get_el2_data_start();
	int offset = VCPU_IDX(vmid, vcpuid);
	struct shadow_vcpu_context *ctxt = &el2_data->shadow_vcpu_ctxt[offset];

	write_sysreg(ctxt->sys_regs[TPIDR_EL0], tpidr_el0);
	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0], tpidrro_el0);
}

void __hyp_text __vm_sysreg_restore_state_nvhe_opt(u32 vmid, u32 vcpuid)
{
	__vm_sysreg_restore_el1_state(vmid, vcpuid);
	__vm_sysreg_restore_common_state(vmid, vcpuid);
	__vm_sysreg_restore_user_state(vmid, vcpuid);
	__vm_sysreg_restore_el2_return_state(vmid, vcpuid);
}

void __hyp_text __vm_sysreg_save_state_nvhe_opt(u32 vmid, u32 vcpuid)
{
	__vm_sysreg_save_el1_state(vmid, vcpuid);
	__vm_sysreg_save_common_state(vmid, vcpuid);
	__vm_sysreg_save_user_state(vmid, vcpuid);
	__vm_sysreg_save_el2_return_state(vmid, vcpuid);
}
/*
 * This file is a simplified version of switch.c for verfication.
 * We currently do not support 32-bit VM, debugging support, RAS extn,
 * PMU, VHE, and SVE.
 */

#include <linux/arm-smccc.h>
#include <linux/types.h>
#include <linux/jump_label.h>
#include <uapi/linux/psci.h>

#include <kvm/arm_psci.h>

#include <asm/cpufeature.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_emulate.h>
#include <asm/kvm_host.h>
#include <asm/kvm_hyp.h>
#include <asm/kvm_mmu.h>
#include <asm/fpsimd.h>
#include <asm/debug-monitors.h>
#include <asm/processor.h>
#include <asm/thread_info.h>
#include <asm/hypsec_host.h>
#include <asm/hypsec_constant.h>

#include "switch-simple.h"

static void __hyp_text __activate_traps_common(struct kvm_vcpu *vcpu)
{
	/*
	 * Make sure we trap PMU access from EL0 to EL2. Also sanitize
	 * PMSELR_EL0 to make sure it never contains the cycle
	 * counter, which could make a PMXEVCNTR_EL0 access UNDEF at
	 * EL1 instead of being trapped to EL2.
	 */
	set_pmselr_el0(0);
	set_pmuserenr_el0(ARMV8_PMU_USERENR_MASK);

	set_mdcr_el2(0);
}

static void __hyp_text __deactivate_traps_common(void)
{
	set_pmuserenr_el0(0);
}

static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
{
	u64 val;

	__activate_traps_common(vcpu);

	val = CPTR_EL2_DEFAULT;
	val |= CPTR_EL2_TTA | CPTR_EL2_TZ;

	set_cptr_el2(val);
}

static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
{
	u64 hcr = HCR_HYPSEC_VM_FLAGS;

	if (vcpu->arch.hcr_el2 & HCR_VI)
		hcr |= HCR_VI;

	if (vcpu->arch.hcr_el2 & HCR_VF)
		hcr |= HCR_VF;

	set_hcr_el2(hcr);

	/* We don't support RAS_EXTN for now in HypSec */

	__activate_traps_nvhe(vcpu);
}

static void __hyp_text __deactivate_traps_nvhe(void)
{
	__deactivate_traps_common();
	/*
	 * Don't trap host access to debug related registers
	 * but clear all available counters.
	 */
	set_mdcr_el2(0);

	set_cptr_el2(CPTR_EL2_DEFAULT);
}

static void __hyp_text __deactivate_traps(struct kvm_vcpu *vcpu)
{
	__deactivate_traps_nvhe();
}

void activate_traps_vhe_load(struct kvm_vcpu *vcpu)
{
}

void deactivate_traps_vhe_put(void)
{
}

static void __hyp_text __activate_vm(u64 vmid)
{
	//u64 shadow_vttbr = get_shadow_vttbr((u32)vmid);
	u64 shadow_vttbr = get_pt_vttbr((u32)vmid);
	set_vttbr_el2(shadow_vttbr);
}

static void __hyp_text __deactivate_vm(struct kvm_vcpu *vcpu)
{
}

/* Save VGICv3 state on non-VHE systems */
static void __hyp_text __hyp_vgic_save_state(struct kvm_vcpu *vcpu)
{
}

/* Restore VGICv3 state on non_VEH systems */
static void __hyp_text __hyp_vgic_restore_state(struct kvm_vcpu *vcpu)
{
}

static bool __hyp_text __check_arm_834220(void)
{
	/*
	 * We return true here since AMD Seattle uses Cortex-A57 CPUs.
	 * This needs to be updated if the hardware has different type
	 * of CPUs.
	 */
	return true;
}

static bool __hyp_text __translate_far_to_hpfar(u64 far, u64 *hpfar)
{
	u64 par, tmp;

	/*
	 * Resolve the IPA the hard way using the guest VA.
	 *
	 * Stage-1 translation already validated the memory access
	 * rights. As such, we can use the EL1 translation regime, and
	 * don't have to distinguish between EL0 and EL1 access.
	 *
	 * We do need to save/restore PAR_EL1 though, as we haven't
	 * saved the guest context yet, and we may return early...
	 */
	par = read_sysreg(par_el1);
	asm volatile("at s1e1r, %0" : : "r" (far));
	isb();

	tmp = read_sysreg(par_el1);
	write_sysreg(par, par_el1);

	if (unlikely(tmp & 1))
		return false; /* Translation failed, back to guest */

	/* Convert PAR to HPFAR format */
	*hpfar = ((tmp >> 12) & ((1UL << 36) - 1)) << 4;
	return true;
}

static bool __hyp_text __populate_fault_info(u32 vmid, u32 vcpuid, u32 esr)
{
	u64 hpfar, far = get_far_el2();
	struct kvm_vcpu* vcpu = hypsec_vcpu_id_to_vcpu(vmid, vcpuid);
	struct shadow_vcpu_context *shadow_ctxt = hypsec_vcpu_id_to_shadow_ctxt(vmid, vcpuid);

	/*
	 * The HPFAR can be invalid if the stage 2 fault did not
	 * happen during a stage 1 page table walk (the ESR_EL2.S1PTW
	 * bit is clear) and one of the two following cases are true:
	 *   1. The fault was due to a permission fault
	 *   2. The processor carries errata 834220
	 *
	 * Therefore, for all non S1PTW faults where we either have a
	 * permission fault or the errata workaround is enabled, we
	 * resolve the IPA using the AT instruction.
	 */
	if (!(esr & ESR_ELx_S1PTW) &&
	    (__check_arm_834220() || (esr & ESR_ELx_FSC_TYPE) == FSC_PERM)) {
		if (!__translate_far_to_hpfar(far, &hpfar))
			return false;
	} else {
		hpfar = get_hpfar_el2();
	}

	vcpu->arch.fault.far_el2 = far;
	vcpu->arch.fault.hpfar_el2 = hpfar;
	shadow_ctxt->far_el2 = far;
	shadow_ctxt->hpfar = hpfar;

	if ((esr & ESR_ELx_FSC_TYPE) == FSC_FAULT) {
		/*
		 * Here we'd like to avoid calling handle_shadow_s2pt_fault
		 * twice if it's GPA belongs to MMIO region. Since no mapping
		 * should be built anyway.
		 */
		if (!is_mmio_gpa((hpfar & HPFAR_MASK) << 8)) {
			el2_memset(&vcpu->arch.walk_result, 0, sizeof(struct s2_trans));
			shadow_ctxt->flags |= PENDING_FSC_FAULT;
		}
	}

	return true;
}

/*
 * Return true when we were able to fixup the guest exit and should return to
 * the guest, false when we should restore the host state and return to the
 * main run loop. We try to handle VM exit early here.
 */
static bool __hyp_text fixup_guest_exit(u32 vmid, u32 vcpuid, u64 exit_code)
{
	u32 esr_el2 = 0;
	u8 ec;

	if (ARM_EXCEPTION_CODE(exit_code) != ARM_EXCEPTION_IRQ) {
		esr_el2 = get_esr_el2();
		set_vcpu_esr_el2(vmid, vcpuid, esr_el2);
		set_shadow_ctxt_esr(vmid, vcpuid, esr_el2);
	}

	/*
	 * We're using the raw exception code in order to only process
	 * the trap if no SError is pending. We will come back to the
	 * same PC once the SError has been injected, and replay the
	 * trapping instruction.
	 */
	if (exit_code != ARM_EXCEPTION_TRAP)
		goto exit;

	ec = ESR_ELx_EC(esr_el2);
	if (ec == ESR_ELx_EC_HVC64) {
		if (handle_pvops(vmid, vcpuid) > 0)
			return true;
		else
			return false;
	} else if (ec == ESR_ELx_EC_DABT_LOW || ec == ESR_ELx_EC_IABT_LOW) {
		if (!__populate_fault_info(vmid, vcpuid, esr_el2))
			return true;
	} else if (ec == ESR_ELx_EC_SYS64) {
		u64 elr = read_sysreg(elr_el2);
		write_sysreg(elr + 4, elr_el2);
		return true;
	}

exit:
	/* Return to the host kernel and handle the exit */
	return false;
}

static void __hyp_text __host_el2_restore_state(struct el2_data *el2_data)
{
	set_vttbr_el2(get_host_vttbr());
	set_hcr_el2(HCR_HYPSEC_HOST_NVHE_FLAGS);
	set_tpidr_el2(0);
}

int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
{
	return 0;
}

/* Switch to the guest for legacy non-VHE systems */
int __hyp_text __kvm_vcpu_run_nvhe(u32 vmid, u32 vcpu_id)
{
	u64 exit_code;
	struct kvm_cpu_context *host_ctxt;
	struct kvm_cpu_context *shadow_ctxt;
	struct el2_data *el2_data;
	struct kvm_vcpu *vcpu;
	struct shadow_vcpu_context *prot_ctxt;

	/* check if vm is verified and vcpu is already active. */
	if (!hypsec_set_vcpu_active(vmid, vcpu_id))
		return 0;
	set_per_cpu(vmid, vcpu_id);

	vcpu = hypsec_vcpu_id_to_vcpu(vmid, vcpu_id);
	prot_ctxt = hypsec_vcpu_id_to_shadow_ctxt(vmid, vcpu_id);

	el2_data = get_el2_data_start();
	host_ctxt = get_vcpu_host_cpu_context(vmid, vcpu_id);
	set_host_running_vcpu(vmid, vcpu_id);
	shadow_ctxt = (struct kvm_cpu_context *)prot_ctxt;

	__sysreg_save_state_nvhe(host_ctxt);

	set_tpidr_el2((u64)shadow_ctxt);
	//__restore_shadow_kvm_regs(vcpu, prot_ctxt);
	restore_shadow_kvm_regs();

	__activate_traps(vcpu);
	__activate_vm(vmid & 0xff);
	if (get_vcpu_was_preempted(vmid, vcpu_id)) {
		hypsec_tlb_flush_local_vmid();
		set_vcpu_was_preempted(vmid, vcpu_id, false);
	}

	__hyp_vgic_restore_state(vcpu);
	__timer_enable_traps(vcpu);

	/*
	 * We must restore the 32-bit state before the sysregs, thanks
	 * to erratum #852523 (Cortex-A57) or #853709 (Cortex-A72).
	 */
	__sysreg32_restore_state(vcpu);
	__vm_sysreg_restore_state_nvhe_opt(vmid, vcpu_id);

	__fpsimd_save_state(&host_ctxt->gp_regs.fp_regs);
	__fpsimd_restore_state(&prot_ctxt->fp_regs);

	do {
		/* Jump in the fire! */
		exit_code = __guest_enter(shadow_ctxt, get_core_context());

		/* And we're baaack! */
	} while (fixup_guest_exit(vmid, vcpu_id, exit_code));

	//print_string("\rpc\n");
	//printhex_ul(read_sysreg(elr_el2));
	//print_string("\resr\n");
	//printhex_ul(read_sysreg(esr_el2));

	__vm_sysreg_save_state_nvhe_opt(vmid, vcpu_id);
	__sysreg32_save_state(vcpu);
	__timer_disable_traps(vcpu);
	__hyp_vgic_save_state(vcpu);

	__deactivate_traps(vcpu);
	__deactivate_vm(vcpu);
	__host_el2_restore_state(el2_data);

	__sysreg_restore_state_nvhe(host_ctxt);

	__fpsimd_save_state(&prot_ctxt->fp_regs);
	__fpsimd_restore_state(&host_ctxt->gp_regs.fp_regs);

	//__save_shadow_kvm_regs(vcpu, prot_ctxt, exit_code);
	set_shadow_ctxt(vmid, vcpu_id, V_EC, exit_code);
	save_shadow_kvm_regs();

	set_per_cpu(0, get_cpuid());
	hypsec_set_vcpu_state(vmid, vcpu_id, READY);

	return exit_code;
}

void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context *host_ctxt)
{
	/* For simplicity, we just hang in here. */
	unreachable();
}
#include <linux/kvm.h>
#include <linux/kvm_host.h>

#include <asm/esr.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_coproc.h>
#include <asm/kvm_emulate.h>
#include <asm/kvm_mmu.h>
#include <asm/kvm_hyp.h>
#include <asm/hypsec_host.h>

#include <kvm/pvops.h>

int __hyp_text handle_pvops(u32 vmid, u32 vcpuid)
{
	//struct el2_data *el2_data = get_el2_data_start();
	//u32 index = VCPU_IDX(vmid, vcpuid);

	u64 call_num = get_shadow_ctxt(vmid, vcpuid, 0);
	//u64 call_num = el2_data->shadow_vcpu_ctxt[index].regs[0];
	u64 addr = get_shadow_ctxt(vmid, vcpuid, 1);
	//u64 addr = el2_data->shadow_vcpu_ctxt[index].regs[1];
	u64 size = get_shadow_ctxt(vmid, vcpuid, 2);
	//u64 size = el2_data->shadow_vcpu_ctxt[index].regs[2];

	switch (call_num) {
		case KVM_SET_DESC_PFN:
			v_grant_stage2_sg_gpa(vmid, addr, size);
			break;
		case KVM_UNSET_DESC_PFN:
			v_revoke_stage2_sg_gpa(vmid, addr, size);
			break;
		//case KVM_SET_BALLOON_PFN:
		//	set_balloon_pfn(shadow_ctxt);
		//	break;
		default:
			return -EINVAL;
	}

	return 1;
	//return -EINVAL;
}
