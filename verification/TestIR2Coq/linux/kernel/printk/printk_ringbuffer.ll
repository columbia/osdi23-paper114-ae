; ModuleID = 'kernel/printk/printk_ringbuffer.c'
source_filename = "kernel/printk/printk_ringbuffer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.prb_reserved_entry = type { %struct.printk_ringbuffer*, i64, i64, i32 }
%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic64_t }
%struct.prb_desc_ring = type { i32, %struct.prb_desc*, %struct.printk_info*, %struct.atomic64_t, %struct.atomic64_t }
%struct.prb_desc = type { %struct.atomic64_t, %struct.prb_data_blk_lpos }
%struct.prb_data_blk_lpos = type { i64, i64 }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.prb_data_ring = type { i32, i8*, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.printk_record = type { %struct.printk_info*, i8*, i32 }
%struct.prb_data_block = type { i64, [0 x i8] }

@prb_reserve_in_last.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [43 x i8] c"\014wrong text_len value (%hu, expecting 0)\0A\00", align 1
@prb_reserve_in_last.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\014wrong text_len value (%hu, expecting <=%u)\0A\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @prb_reserve_in_last(%struct.prb_reserved_entry* nocapture noundef %e, %struct.printk_ringbuffer* noundef %rb, %struct.printk_record* noundef %r, i32 noundef %caller_id, i32 noundef %max_size) local_unnamed_addr #0 {
entry:
  %data_size = alloca i32, align 4
  %id = alloca i64, align 8
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %0 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %data_size, align 4, !annotation !7
  %1 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %id, align 8, !annotation !7
  %call = call fastcc i64 @arch_local_irq_save() #10
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 1
  store i64 %call, i64* %irqflags, align 8
  %call5 = call fastcc %struct.prb_desc* @desc_reopen_last(%struct.prb_desc_ring* noundef %desc_ring1, i32 noundef %caller_id, i64* noundef nonnull %id) #10
  %tobool.not = icmp eq %struct.prb_desc* %call5, null
  br i1 %tobool.not, label %do.body7, label %if.end

do.body7:                                         ; preds = %entry
  %2 = load i64, i64* %irqflags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %2) #10
  br label %fail_reopen

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %id, align 8
  %call21 = call fastcc %struct.printk_info* @to_info(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %3) #10
  %rb22 = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 0
  store %struct.printk_ringbuffer* %rb, %struct.printk_ringbuffer** %rb22, align 8
  %id23 = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 2
  store i64 %3, i64* %id23, align 8
  %caller_id24 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call21, i64 0, i32 5
  %4 = load i32, i32* %caller_id24, align 4
  %cmp25.not = icmp eq i32 %4, %caller_id
  br i1 %cmp25.not, label %if.end28, label %fail

if.end28:                                         ; preds = %if.end
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call5, i64 0, i32 1
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %text_blk_lpos, i64 0, i32 0
  %5 = load i64, i64* %begin, align 8
  %and = and i64 %5, 1
  %tobool29.not = icmp eq i64 %and, 0
  br i1 %tobool29.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %next = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call5, i64 0, i32 1, i32 1
  %6 = load i64, i64* %next, align 8
  %and31 = and i64 %6, 1
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %land.lhs.true
  %text_len = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call21, i64 0, i32 2
  %7 = load i16, i16* %text_len, align 8
  %cmp35.not = icmp eq i16 %7, 0
  br i1 %cmp35.not, label %if.end87, label %if.then45, !prof !8

if.then45:                                        ; preds = %if.then33
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1385; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !9
  %.b256 = load i1, i1* @prb_reserve_in_last.__already_done, align 1
  br i1 %.b256, label %if.end77, label %if.then69, !prof !8

if.then69:                                        ; preds = %if.then45
  store i1 true, i1* @prb_reserve_in_last.__already_done, align 1
  %8 = load i16, i16* %text_len, align 8
  %conv75 = zext i16 %8 to i32
  %call76 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %conv75) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %if.then45
  store i16 0, i16* %text_len, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then33, %if.end77
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %text_buf_size = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  %9 = load i32, i32* %text_buf_size, align 8
  %call88 = call fastcc i1 @data_check_size(%struct.prb_data_ring* noundef %text_data_ring, i32 noundef %9) #10
  %cmp92 = icmp ule i32 %9, %max_size
  %10 = and i1 %call88, %cmp92
  br i1 %10, label %if.end95, label %fail

if.end95:                                         ; preds = %if.end87
  %call98 = call fastcc i8* @data_alloc(%struct.printk_ringbuffer* noundef %rb, i32 noundef %9, %struct.prb_data_blk_lpos* noundef %text_blk_lpos, i64 noundef %3) #10
  br label %if.end186

if.else:                                          ; preds = %land.lhs.true, %if.end28
  %text_data_ring99 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %call101 = call fastcc i8* @get_data(%struct.prb_data_ring* noundef %text_data_ring99, %struct.prb_data_blk_lpos* noundef %text_blk_lpos, i32* noundef nonnull %data_size) #10
  %tobool102.not = icmp eq i8* %call101, null
  br i1 %tobool102.not, label %fail, label %if.end104

if.end104:                                        ; preds = %if.else
  %text_len106 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call21, i64 0, i32 2
  %11 = load i16, i16* %text_len106, align 8
  %conv107 = zext i16 %11 to i32
  %12 = load i32, i32* %data_size, align 4
  %cmp108 = icmp ult i32 %12, %conv107
  br i1 %cmp108, label %if.then122, label %if.end168, !prof !10

if.then122:                                       ; preds = %if.end104
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1408; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !11
  %.b254255 = load i1, i1* @prb_reserve_in_last.__already_done.1, align 1
  br i1 %.b254255, label %if.end157, label %if.then149, !prof !8

if.then149:                                       ; preds = %if.then122
  store i1 true, i1* @prb_reserve_in_last.__already_done.1, align 1
  %13 = load i16, i16* %text_len106, align 8
  %conv155 = zext i16 %13 to i32
  %call156 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv155, i32 noundef %12) #11
  br label %if.end157

if.end157:                                        ; preds = %if.then149, %if.then122
  %conv166 = trunc i32 %12 to i16
  store i16 %conv166, i16* %text_len106, align 8
  %.pre = and i32 %12, 65535
  br label %if.end168

if.end168:                                        ; preds = %if.end104, %if.end157
  %conv170.pre-phi = phi i32 [ %conv107, %if.end104 ], [ %.pre, %if.end157 ]
  %text_buf_size171 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  %14 = load i32, i32* %text_buf_size171, align 8
  %add = add i32 %14, %conv170.pre-phi
  store i32 %add, i32* %text_buf_size171, align 8
  %call174 = call fastcc i1 @data_check_size(%struct.prb_data_ring* noundef %text_data_ring99, i32 noundef %add) #10
  %cmp178 = icmp ule i32 %add, %max_size
  %15 = and i1 %call174, %cmp178
  br i1 %15, label %if.end181, label %fail

if.end181:                                        ; preds = %if.end168
  %call184 = call fastcc i8* @data_realloc(%struct.printk_ringbuffer* noundef %rb, i32 noundef %add, %struct.prb_data_blk_lpos* noundef %text_blk_lpos, i64 noundef %3) #10
  br label %if.end186

if.end186:                                        ; preds = %if.end181, %if.end95
  %call184.sink = phi i8* [ %call184, %if.end181 ], [ %call98, %if.end95 ]
  %text_buf185 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  store i8* %call184.sink, i8** %text_buf185, align 8
  %text_buf_size187 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  %16 = load i32, i32* %text_buf_size187, align 8
  %tobool188.not = icmp ne i32 %16, 0
  %tobool191.not = icmp eq i8* %call184.sink, null
  %or.cond = select i1 %tobool188.not, i1 %tobool191.not, i1 false
  br i1 %or.cond, label %fail, label %if.end193

if.end193:                                        ; preds = %if.end186
  %info194 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  store %struct.printk_info* %call21, %struct.printk_info** %info194, align 8
  %text_data_ring195 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %call197 = call fastcc i32 @space_used(%struct.prb_data_ring* noundef %text_data_ring195, %struct.prb_data_blk_lpos* noundef %text_blk_lpos) #10
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 3
  store i32 %call197, i32* %text_space, align 8
  br label %cleanup

fail:                                             ; preds = %if.end186, %if.end168, %if.else, %if.end87, %if.end
  call void @prb_commit(%struct.prb_reserved_entry* noundef %e) #10
  br label %fail_reopen

fail_reopen:                                      ; preds = %fail, %do.body7
  %17 = bitcast %struct.printk_record* %r to i8*
  %call198 = call i8* @memset(i8* noundef %17, i32 noundef 0, i64 noundef 24) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_reopen, %if.end193
  %retval.0 = phi i1 [ false, %fail_reopen ], [ true, %if.end193 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #10
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.prb_desc* @desc_reopen_last(%struct.prb_desc_ring* noundef %desc_ring, i32 noundef %caller_id, i64* nocapture noundef writeonly %id_out) unnamed_addr #0 {
entry:
  %desc = alloca %struct.prb_desc, align 8
  %cid = alloca i32, align 4
  %0 = bitcast %struct.prb_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %1 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %cid, align 4, !annotation !7
  %counter.i.i = getelementptr inbounds %struct.prb_desc_ring, %struct.prb_desc_ring* %desc_ring, i64 0, i32 3, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  %call1 = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %2, %struct.prb_desc* noundef nonnull %desc, i64* noundef null, i32* noundef nonnull %cid) #10
  %cmp.not = icmp eq i32 %call1, 1
  %3 = load i32, i32* %cid, align 4
  %cmp2.not = icmp eq i32 %3, %caller_id
  %or.cond = select i1 %cmp.not, i1 %cmp2.not, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %2) #10
  %or = or i64 %2, 4611686018427387904
  %4 = bitcast %struct.prb_desc* %call3 to i8*
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %4, i64 noundef %or, i64 noundef %2) #12
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %or
  br i1 %cmp.not.i.i.i, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  store i64 %2, i64* %id_out, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end7
  %retval.0 = phi %struct.prb_desc* [ %call3, %if.end7 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret %struct.prb_desc* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #9, !srcloc !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.printk_info* @to_info(%struct.prb_desc_ring* nocapture noundef readonly %desc_ring, i64 noundef %n) unnamed_addr #2 {
entry:
  %infos = getelementptr inbounds %struct.prb_desc_ring, %struct.prb_desc_ring* %desc_ring, i64 0, i32 2
  %0 = load %struct.printk_info*, %struct.printk_info** %infos, align 8
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, %struct.prb_desc_ring* %desc_ring, i64 0, i32 0
  %1 = load i32, i32* %count_bits, align 8
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %conv, %n
  %arrayidx = getelementptr %struct.printk_info, %struct.printk_info* %0, i64 %and
  ret %struct.printk_info* %arrayidx
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @data_check_size(%struct.prb_data_ring* nocapture noundef readonly %data_ring, i32 noundef %size) unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @to_blk_size(i32 noundef %size) #10
  %conv = zext i32 %call to i64
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %data_ring, i64 0, i32 0
  %0 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %0 to i64
  %shl = shl nuw i64 1, %sh_prom
  %sub = add i64 %shl, -8
  %cmp1 = icmp uge i64 %sub, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @data_alloc(%struct.printk_ringbuffer* noundef %rb, i32 noundef %size, %struct.prb_data_blk_lpos* nocapture noundef writeonly %blk_lpos, i64 noundef %id) unnamed_addr #0 {
entry:
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 0
  store i64 3, i64* %begin, align 8
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  store i64 3, i64* %next, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @to_blk_size(i32 noundef %size) #10
  %head_lpos = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 2
  %counter.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %head_lpos, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %text_data_ring, i64 0, i32 0
  %1 = bitcast %struct.atomic64_t* %head_lpos to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %begin_lpos.0 = phi i64 [ %0, %if.end ], [ %call14.i.i.i.i, %do.cond ]
  %call2 = call fastcc i64 @get_next_lpos(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef %begin_lpos.0, i32 noundef %call) #10
  %2 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %2 to i64
  %shl.neg = shl nsw i64 -1, %sh_prom
  %sub = add i64 %shl.neg, %call2
  %call3 = call fastcc i1 @data_push_tail(%struct.printk_ringbuffer* noundef %rb, i64 noundef %sub) #10
  br i1 %call3, label %do.cond, label %if.then4

if.then4:                                         ; preds = %do.body
  %begin5 = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 0
  store i64 1, i64* %begin5, align 8
  %next6 = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  store i64 1, i64* %next6, align 8
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %begin_lpos.0, i64 noundef %call2) #12
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %begin_lpos.0
  br i1 %cmp.not.i.i.i, label %do.end, label %do.body, !prof !8

do.end:                                           ; preds = %do.cond
  %call10 = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef %begin_lpos.0) #10
  %id11 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call10, i64 0, i32 0
  store i64 %id, i64* %id11, align 8
  %3 = load i32, i32* %size_bits, align 8
  %sh_prom13 = zext i32 %3 to i64
  %shr = lshr i64 %begin_lpos.0, %sh_prom13
  %shr16 = lshr i64 %call2, %sh_prom13
  %cmp17.not = icmp eq i64 %shr, %shr16
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %do.end
  %call19 = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef 0) #10
  %id20 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call19, i64 0, i32 0
  store i64 %id, i64* %id20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.end
  %blk.0 = phi %struct.prb_data_block* [ %call19, %if.then18 ], [ %call10, %do.end ]
  %begin22 = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 0
  store i64 %begin_lpos.0, i64* %begin22, align 8
  %next23 = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  store i64 %call2, i64* %next23, align 8
  %arrayidx = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %blk.0, i64 0, i32 1, i64 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %arrayidx, %if.end21 ], [ null, %if.then4 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @get_data(%struct.prb_data_ring* nocapture noundef readonly %data_ring, %struct.prb_data_blk_lpos* nocapture noundef readonly %blk_lpos, i32* nocapture noundef %data_size) unnamed_addr #0 {
entry:
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 0
  %0 = load i64, i64* %begin, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  %next10.phi.trans.insert = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  %.pre = load i64, i64* %next10.phi.trans.insert, align 8
  %and1 = and i64 %.pre, 1
  %tobool2.not = icmp eq i64 %and1, 0
  %or.cond192 = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond192, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i64 %0, 3
  %cmp6 = icmp eq i64 %.pre, 3
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.then
  store i32 0, i32* %data_size, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %data_ring, i64 0, i32 0
  %1 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %0, %sh_prom
  %next10 = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  %shr13 = lshr i64 %.pre, %sh_prom
  %cmp14 = icmp eq i64 %shr, %shr13
  %cmp18 = icmp ugt i64 %.pre, %0
  %or.cond191 = and i1 %cmp18, %cmp14
  br i1 %or.cond191, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end8
  %call = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %data_ring, i64 noundef %0) #10
  %sub = sub i64 %.pre, %0
  br label %if.end59

if.else:                                          ; preds = %if.end8
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %shl, %0
  %shr28 = lshr i64 %add, %sh_prom
  %cmp33 = icmp eq i64 %shr28, %shr13
  br i1 %cmp33, label %if.then35, label %if.then49

if.then35:                                        ; preds = %if.else
  %call36 = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %data_ring, i64 noundef 0) #10
  %notmask = shl nsw i64 -1, %sh_prom
  %sub41 = xor i64 %notmask, -1
  %and42 = and i64 %.pre, %sub41
  br label %if.end59

if.then49:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1231; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !13
  br label %cleanup

if.end59:                                         ; preds = %if.then35, %if.then19
  %storemerge.in = phi i64 [ %and42, %if.then35 ], [ %sub, %if.then19 ]
  %db.0 = phi %struct.prb_data_block* [ %call36, %if.then35 ], [ %call, %if.then19 ]
  %storemerge = trunc i64 %storemerge.in to i32
  store i32 %storemerge, i32* %data_size, align 4
  %2 = load i64, i64* %begin, align 8
  %add63 = add i64 %2, 7
  %and64 = and i64 %add63, -8
  %cmp65.not = icmp eq i64 %2, %and64
  br i1 %cmp65.not, label %lor.lhs.false, label %if.then79, !prof !8

if.then79:                                        ; preds = %if.end59
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1236; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end59
  %3 = load i64, i64* %next10, align 8
  %add93 = add i64 %3, 7
  %and94 = and i64 %add93, -8
  %cmp95.not = icmp eq i64 %3, %and94
  br i1 %cmp95.not, label %if.end121, label %if.then109, !prof !8

if.then109:                                       ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1237; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !15
  br label %cleanup

if.end121:                                        ; preds = %lor.lhs.false
  %cmp124 = icmp ult i32 %storemerge, 8
  br i1 %cmp124, label %if.then138, label %if.end150, !prof !10

if.then138:                                       ; preds = %if.end121
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1242; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !16
  br label %cleanup

if.end150:                                        ; preds = %if.end121
  %sub152 = add i32 %storemerge, -8
  store i32 %sub152, i32* %data_size, align 4
  %arrayidx = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %db.0, i64 0, i32 1, i64 0
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %if.then109, %if.then79, %if.then, %if.end150, %if.then49, %if.then7
  %retval.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %if.then7 ], [ %arrayidx, %if.end150 ], [ null, %if.then49 ], [ null, %if.then ], [ null, %if.then109 ], [ null, %if.then79 ], [ null, %if.then138 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @data_realloc(%struct.printk_ringbuffer* noundef %rb, i32 noundef %size, %struct.prb_data_blk_lpos* nocapture noundef %blk_lpos, i64 noundef %id) unnamed_addr #0 {
entry:
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %head_lpos1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 2
  %counter.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %head_lpos1, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  %1 = load i64, i64* %next, align 8
  %cmp.not = icmp eq i64 %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 0
  %2 = load i64, i64* %begin, align 8
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %text_data_ring, i64 0, i32 0
  %3 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %2, %sh_prom
  %shr5 = lshr i64 %0, %sh_prom
  %cmp6.not = icmp eq i64 %shr, %shr5
  %call7 = call fastcc i32 @to_blk_size(i32 noundef %size) #10, !range !17
  %call9 = call fastcc i64 @get_next_lpos(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef %2, i32 noundef %call7) #10
  %sub = sub i64 %0, %call9
  %shl = shl nuw i64 1, %sh_prom
  %cmp12 = icmp ult i64 %sub, %shl
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end
  %. = select i1 %cmp6.not, i64 %2, i64 0
  %call17 = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef %.) #10
  %arrayidx = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call17, i64 0, i32 1, i64 0
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %sub23 = sub i64 %call9, %shl
  %call24 = call fastcc i1 @data_push_tail(%struct.printk_ringbuffer* noundef %rb, i64 noundef %sub23) #10
  br i1 %call24, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end19
  %4 = bitcast %struct.atomic64_t* %head_lpos1 to i8*
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %4, i64 noundef %0, i64 noundef %call9) #12
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %0
  br i1 %cmp.not.i.i.i, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.end26
  %5 = load i64, i64* %begin, align 8
  %call32 = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef %5) #10
  %6 = load i32, i32* %size_bits, align 8
  %sh_prom35 = zext i32 %6 to i64
  %shr36 = lshr i64 %5, %sh_prom35
  %shr39 = lshr i64 %call9, %sh_prom35
  %cmp40.not = icmp eq i64 %shr36, %shr39
  br i1 %cmp40.not, label %if.end56, label %if.then41

if.then41:                                        ; preds = %if.end30
  %call42 = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef 0) #10
  %id43 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call42, i64 0, i32 0
  store i64 %id, i64* %id43, align 8
  br i1 %cmp6.not, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.then41
  %arrayidx47 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call42, i64 0, i32 1, i64 0
  %arrayidx49 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call32, i64 0, i32 1, i64 0
  %7 = load i64, i64* %next, align 8
  %8 = load i64, i64* %begin, align 8
  %sub52 = add i64 %7, -8
  %sub53 = sub i64 %sub52, %8
  %call54 = call i8* @memcpy(i8* noundef %arrayidx47, i8* noundef %arrayidx49, i64 noundef %sub53) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then41, %if.then45, %if.end30
  %blk.1 = phi %struct.prb_data_block* [ %call32, %if.end30 ], [ %call42, %if.then45 ], [ %call42, %if.then41 ]
  store i64 %call9, i64* %next, align 8
  %arrayidx59 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %blk.1, i64 0, i32 1, i64 0
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end19, %entry, %if.end56, %if.then13
  %retval.0 = phi i8* [ %arrayidx, %if.then13 ], [ %arrayidx59, %if.end56 ], [ null, %entry ], [ null, %if.end19 ], [ null, %if.end26 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @space_used(%struct.prb_data_ring* nocapture noundef readonly %data_ring, %struct.prb_data_blk_lpos* nocapture noundef readonly %blk_lpos) unnamed_addr #2 {
entry:
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 0
  %0 = load i64, i64* %begin, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  %next4.phi.trans.insert = getelementptr inbounds %struct.prb_data_blk_lpos, %struct.prb_data_blk_lpos* %blk_lpos, i64 0, i32 1
  %.pre = load i64, i64* %next4.phi.trans.insert, align 8
  %and1 = and i64 %.pre, 1
  %tobool2.not = icmp eq i64 %and1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %data_ring, i64 0, i32 0
  %1 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %0, %sh_prom
  %shr7 = lshr i64 %.pre, %sh_prom
  %cmp = icmp eq i64 %shr, %shr7
  br i1 %cmp, label %if.then8, label %if.end20

if.then8:                                         ; preds = %if.end
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and12 = and i64 %.pre, %sub
  %and18 = and i64 %0, %sub
  %sub19 = sub i64 %and12, %and18
  %conv = trunc i64 %sub19 to i32
  br label %return

if.end20:                                         ; preds = %if.end
  %shl24 = shl nuw i64 1, %sh_prom
  %sub25 = add i64 %shl24, -1
  %and26 = and i64 %sub25, %.pre
  %add = add i64 %and26, %shl24
  %and35 = and i64 %sub25, %0
  %sub36 = sub i64 %add, %and35
  %conv37 = trunc i64 %sub36 to i32
  br label %return

return:                                           ; preds = %entry, %if.end20, %if.then8
  %retval.0 = phi i32 [ %conv, %if.then8 ], [ %conv37, %if.end20 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @prb_commit(%struct.prb_reserved_entry* nocapture noundef readonly %e) local_unnamed_addr #0 {
entry:
  %rb = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 0
  %0 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** %rb, align 8
  call fastcc void @_prb_commit(%struct.prb_reserved_entry* noundef %e, i64 noundef 1) #10
  %counter.i.i = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %0, i64 0, i32 0, i32 3, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %id = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 2
  %2 = load i64, i64* %id, align 8
  %cmp.not = icmp eq i64 %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %0, i64 0, i32 0
  call fastcc void @desc_make_final(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @prb_reserve(%struct.prb_reserved_entry* nocapture noundef %e, %struct.printk_ringbuffer* noundef %rb, %struct.printk_record* noundef %r) local_unnamed_addr #0 {
entry:
  %id = alloca i64, align 8
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %0 = bitcast i64* %id to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %id, align 8, !annotation !7
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %text_buf_size = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  %1 = load i32, i32* %text_buf_size, align 8
  %call = call fastcc i1 @data_check_size(%struct.prb_data_ring* noundef %text_data_ring, i32 noundef %1) #10
  br i1 %call, label %do.body2, label %fail66

do.body2:                                         ; preds = %entry
  %call3 = call fastcc i64 @arch_local_irq_save() #10
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 1
  store i64 %call3, i64* %irqflags, align 8
  %call6 = call fastcc i1 @desc_reserve(%struct.printk_ringbuffer* noundef %rb, i64* noundef nonnull %id) #10
  br i1 %call6, label %if.end23, label %if.then7

if.then7:                                         ; preds = %do.body2
  %fail = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 2
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %fail) #12
  %2 = load i64, i64* %irqflags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %2) #10
  br label %fail66

if.end23:                                         ; preds = %do.body2
  %3 = load i64, i64* %id, align 8
  %call24 = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %3) #10
  %call25 = call fastcc %struct.printk_info* @to_info(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %3) #10
  %seq26 = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call25, i64 0, i32 0
  %4 = load i64, i64* %seq26, align 8
  %5 = bitcast %struct.printk_info* %call25 to i8*
  %call27 = call i8* @memset(i8* noundef %5, i32 noundef 0, i64 noundef 88) #12
  %rb28 = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 0
  store %struct.printk_ringbuffer* %rb, %struct.printk_ringbuffer** %rb28, align 8
  %id29 = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 2
  store i64 %3, i64* %id29, align 8
  %cmp30 = icmp eq i64 %4, 0
  %count_bits = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 0
  %6 = load i32, i32* %count_bits, align 8
  br i1 %cmp30, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %if.end23
  %notmask = shl nsw i32 -1, %6
  %sub = xor i32 %notmask, -1
  %conv32 = zext i32 %sub to i64
  %and = and i64 %3, %conv32
  %cmp33.not = icmp eq i64 %and, 0
  br i1 %cmp33.not, label %if.end46, label %if.end46.thread

if.end46.thread:                                  ; preds = %land.lhs.true
  store i64 %and, i64* %seq26, align 8
  br label %if.then50

if.end46:                                         ; preds = %if.end23, %land.lhs.true
  %shl43 = shl nuw i32 1, %6
  %conv44 = zext i32 %shl43 to i64
  %add = add i64 %4, %conv44
  store i64 %add, i64* %seq26, align 8
  %cmp48.not = icmp eq i64 %add, 0
  br i1 %cmp48.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.end46.thread, %if.end46
  %sub51 = add i64 %3, 4611686018427387903
  %and52 = and i64 %sub51, 4611686018427387903
  call fastcc void @desc_make_final(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %and52) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end46
  %7 = load i32, i32* %text_buf_size, align 8
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call24, i64 0, i32 1
  %call55 = call fastcc i8* @data_alloc(%struct.printk_ringbuffer* noundef %rb, i32 noundef %7, %struct.prb_data_blk_lpos* noundef %text_blk_lpos, i64 noundef %3) #10
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  store i8* %call55, i8** %text_buf, align 8
  %8 = load i32, i32* %text_buf_size, align 8
  %tobool.not = icmp ne i32 %8, 0
  %tobool59.not = icmp eq i8* %call55, null
  %or.cond = select i1 %tobool.not, i1 %tobool59.not, i1 false
  br i1 %or.cond, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end53
  call void @prb_commit(%struct.prb_reserved_entry* noundef %e) #10
  br label %fail66

if.end61:                                         ; preds = %if.end53
  %info62 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  store %struct.printk_info* %call25, %struct.printk_info** %info62, align 8
  %call65 = call fastcc i32 @space_used(%struct.prb_data_ring* noundef %text_data_ring, %struct.prb_data_blk_lpos* noundef %text_blk_lpos) #10
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 3
  store i32 %call65, i32* %text_space, align 8
  br label %cleanup

fail66:                                           ; preds = %entry, %if.then60, %if.then7
  %9 = bitcast %struct.printk_record* %r to i8*
  %call67 = call i8* @memset(i8* noundef %9, i32 noundef 0, i64 noundef 24) #12
  br label %cleanup

cleanup:                                          ; preds = %fail66, %if.end61
  %retval.0 = phi i1 [ true, %if.end61 ], [ false, %fail66 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @desc_reserve(%struct.printk_ringbuffer* noundef %rb, i64* nocapture noundef writeonly %id_out) unnamed_addr #0 {
entry:
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %head_id2 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 3
  %counter.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %head_id2, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %count_bits = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 0
  %counter.i.i80 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 4, i32 0
  %1 = bitcast %struct.atomic64_t* %head_id2 to i8*
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %head_id.0 = phi i64 [ %0, %entry ], [ %call14.i.i.i.i, %do.cond ]
  %add = add i64 %head_id.0, 1
  %and = and i64 %add, 4611686018427387903
  %2 = load i32, i32* %count_bits, align 8
  %shl = shl nuw i32 1, %2
  %conv = zext i32 %shl to i64
  %sub = sub i64 %add, %conv
  %and3 = and i64 %sub, 4611686018427387903
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !18
  %3 = load volatile i64, i64* %counter.i.i80, align 8
  %cmp = icmp eq i64 %and3, %3
  br i1 %cmp, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %call6 = call fastcc i1 @desc_push_tail(%struct.printk_ringbuffer* noundef %rb, i64 noundef %and3) #10
  br i1 %call6, label %do.cond, label %cleanup

do.cond:                                          ; preds = %do.body, %if.then
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %head_id.0, i64 noundef %and) #12
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %head_id.0
  br i1 %cmp.not.i.i.i, label %do.end, label %do.body, !prof !8

do.end:                                           ; preds = %do.cond
  %call11 = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %and) #10
  %counter.i.i81 = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call11, i64 0, i32 0, i32 0
  %4 = load volatile i64, i64* %counter.i.i81, align 8
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %call13 = call fastcc i32 @get_desc_state(i64 noundef %and3, i64 noundef %4) #10
  %cmp14.not = icmp eq i32 %call13, 3
  br i1 %cmp14.not, label %if.end31, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 974; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !19
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true, %do.end
  %5 = bitcast %struct.prb_desc* %call11 to i8*
  %call14.i.i.i.i82 = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %5, i64 noundef %4, i64 noundef %and) #12
  %cmp.not.i.i.i83 = icmp eq i64 %call14.i.i.i.i82, %4
  br i1 %cmp.not.i.i.i83, label %if.end54, label %if.then44

if.then44:                                        ; preds = %if.end31
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 988; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !20
  br label %cleanup

if.end54:                                         ; preds = %if.end31
  store i64 %and, i64* %id_out, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end54, %if.then44, %if.then22
  %retval.0 = phi i1 [ false, %if.then22 ], [ true, %if.end54 ], [ false, %if.then44 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* nocapture noundef readonly %desc_ring, i64 noundef %n) unnamed_addr #2 {
entry:
  %descs = getelementptr inbounds %struct.prb_desc_ring, %struct.prb_desc_ring* %desc_ring, i64 0, i32 1
  %0 = load %struct.prb_desc*, %struct.prb_desc** %descs, align 8
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, %struct.prb_desc_ring* %desc_ring, i64 0, i32 0
  %1 = load i32, i32* %count_bits, align 8
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %conv, %n
  %arrayidx = getelementptr %struct.prb_desc, %struct.prb_desc* %0, i64 %and
  ret %struct.prb_desc* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @desc_make_final(%struct.prb_desc_ring* nocapture noundef readonly %desc_ring, i64 noundef %id) unnamed_addr #0 {
entry:
  %or = or i64 %id, 4611686018427387904
  %call = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %id) #10
  %or1 = or i64 %id, -9223372036854775808
  %0 = bitcast %struct.prb_desc* %call to i8*
  call fastcc void @__cmpxchg_case_64(i8* noundef %0, i64 noundef %or, i64 noundef %or1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_prb_commit(%struct.prb_reserved_entry* nocapture noundef readonly %e, i64 noundef %state_val) unnamed_addr #0 {
entry:
  %rb = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 0
  %0 = load %struct.printk_ringbuffer*, %struct.printk_ringbuffer** %rb, align 8
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %0, i64 0, i32 0
  %id = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 2
  %1 = load i64, i64* %id, align 8
  %call = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %1) #10
  %shl = shl i64 %state_val, 62
  %or4 = or i64 %1, %shl
  %2 = bitcast %struct.prb_desc* %call to i8*
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef %1, i64 noundef %or4) #12
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %1
  br i1 %cmp.not.i.i.i, label %do.body17, label %if.then8

if.then8:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/printk/printk_ringbuffer.c\22; .popsection; .long 14472b - 14470b; .short 1603; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !21
  br label %do.body17

do.body17:                                        ; preds = %if.then8, %entry
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 1
  %3 = load i64, i64* %irqflags, align 8
  call fastcc void @arch_local_irq_restore(i64 noundef %3) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @prb_final_commit(%struct.prb_reserved_entry* nocapture noundef readonly %e) local_unnamed_addr #0 {
entry:
  call fastcc void @_prb_commit(%struct.prb_reserved_entry* noundef %e, i64 noundef 2) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64 noundef %seq, %struct.printk_record* noundef %r) local_unnamed_addr #0 {
entry:
  %seq.addr = alloca i64, align 8
  store i64 %seq, i64* %seq.addr, align 8
  %call = call fastcc i1 @_prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64* noundef nonnull %seq.addr, %struct.printk_record* noundef %r, i32* noundef null) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @_prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64* nocapture noundef %seq, %struct.printk_record* noundef %r, i32* noundef %line_count) unnamed_addr #0 {
entry:
  %0 = load i64, i64* %seq, align 8
  %call14 = call fastcc i32 @prb_read(%struct.printk_ringbuffer* noundef %rb, i64 noundef %0, %struct.printk_record* noundef %r, i32* noundef %line_count) #10
  %tobool.not15 = icmp eq i32 %call14, 0
  br i1 %tobool.not15, label %cleanup, label %while.body

while.body:                                       ; preds = %entry, %if.end5
  %call16 = phi i32 [ %call, %if.end5 ], [ %call14, %entry ]
  %call1 = call fastcc i64 @prb_first_seq(%struct.printk_ringbuffer* noundef %rb) #10
  %1 = load i64, i64* %seq, align 8
  %cmp = icmp ult i64 %1, %call1
  br i1 %cmp, label %if.end5, label %if.else

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call16, -2
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.else
  %inc = add i64 %1, 1
  br label %if.end5

if.end5:                                          ; preds = %while.body, %if.then3
  %storemerge = phi i64 [ %inc, %if.then3 ], [ %call1, %while.body ]
  store i64 %storemerge, i64* %seq, align 8
  %call = call fastcc i32 @prb_read(%struct.printk_ringbuffer* noundef %rb, i64 noundef %storemerge, %struct.printk_record* noundef %r, i32* noundef %line_count) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %while.body

cleanup:                                          ; preds = %if.else, %if.end5, %entry
  %tobool.not.lcssa = phi i1 [ true, %entry ], [ true, %if.end5 ], [ false, %if.else ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @prb_read_valid_info(%struct.printk_ringbuffer* noundef %rb, i64 noundef %seq, %struct.printk_info* noundef %info, i32* noundef %line_count) local_unnamed_addr #0 {
entry:
  %seq.addr = alloca i64, align 8
  %r = alloca %struct.printk_record, align 8
  store i64 %seq, i64* %seq.addr, align 8
  %0 = bitcast %struct.printk_record* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  call fastcc void @prb_rec_init_rd(%struct.printk_record* noundef nonnull %r, %struct.printk_info* noundef %info) #10
  %call = call fastcc i1 @_prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64* noundef nonnull %seq.addr, %struct.printk_record* noundef nonnull %r, i32* noundef %line_count) #10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i1 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @prb_rec_init_rd(%struct.printk_record* nocapture noundef writeonly %r, %struct.printk_info* noundef %info) unnamed_addr #6 {
entry:
  %info1 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  store %struct.printk_info* %info, %struct.printk_info** %info1, align 8
  %text_buf2 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  store i8* null, i8** %text_buf2, align 8
  %text_buf_size3 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  store i32 0, i32* %text_buf_size3, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @prb_first_valid_seq(%struct.printk_ringbuffer* noundef %rb) local_unnamed_addr #0 {
entry:
  %seq = alloca i64, align 8
  %0 = bitcast i64* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %seq, align 8
  %call = call fastcc i1 @_prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64* noundef nonnull %seq, %struct.printk_record* noundef null, i32* noundef null) #10
  %1 = load i64, i64* %seq, align 8
  %retval.0 = select i1 %call, i64 %1, i64 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @prb_next_seq(%struct.printk_ringbuffer* noundef %rb) local_unnamed_addr #0 {
entry:
  %seq = alloca i64, align 8
  %0 = bitcast i64* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %seq, align 8
  %call1 = call fastcc i1 @_prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64* noundef nonnull %seq, %struct.printk_record* noundef null, i32* noundef null) #10
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %1 = load i64, i64* %seq, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %seq, align 8
  %call = call fastcc i1 @_prb_read_valid(%struct.printk_ringbuffer* noundef %rb, i64* noundef nonnull %seq, %struct.printk_record* noundef null, i32* noundef null) #10
  br i1 %call, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %2 = load i64, i64* %seq, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @prb_init(%struct.printk_ringbuffer* noundef %rb, i8* noundef %text_buf, i32 noundef %textbits, %struct.prb_desc* noundef %descs, i32 noundef %descbits, %struct.printk_info* noundef %infos) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.prb_desc* %descs to i8*
  %shl = shl nuw i32 1, %descbits
  %conv = zext i32 %shl to i64
  %mul = mul nuw nsw i64 %conv, 24
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef %mul) #12
  %1 = bitcast %struct.printk_info* %infos to i8*
  %mul3 = mul nuw nsw i64 %conv, 88
  %call4 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef %mul3) #12
  %count_bits = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 0
  store i32 %descbits, i32* %count_bits, align 8
  %descs6 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 1
  store %struct.prb_desc* %descs, %struct.prb_desc** %descs6, align 8
  %infos8 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 2
  store %struct.printk_info* %infos, %struct.printk_info** %infos8, align 8
  %sub = xor i32 %shl, -1
  %conv11 = zext i32 %sub to i64
  %counter.i.i = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 3, i32 0
  store volatile i64 %conv11, i64* %counter.i.i, align 8
  %counter.i.i79 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 4, i32 0
  store volatile i64 %conv11, i64* %counter.i.i79, align 8
  %size_bits = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 0
  store i32 %textbits, i32* %size_bits, align 8
  %data = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 1
  store i8* %text_buf, i8** %data, align 8
  %sh_prom = zext i32 %textbits to i64
  %shl20.neg = shl nsw i64 -1, %sh_prom
  %counter.i.i80 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 2, i32 0
  store volatile i64 %shl20.neg, i64* %counter.i.i80, align 8
  %counter.i.i81 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 3, i32 0
  store volatile i64 %shl20.neg, i64* %counter.i.i81, align 8
  %counter.i.i82 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 2, i32 0
  store volatile i64 0, i64* %counter.i.i82, align 8
  %sub27 = add i32 %shl, -1
  %idxprom = zext i32 %sub27 to i64
  %or = or i64 %conv11, -4611686018427387904
  %counter.i.i83 = getelementptr %struct.prb_desc, %struct.prb_desc* %descs, i64 %idxprom, i32 0, i32 0
  store volatile i64 %or, i64* %counter.i.i83, align 8
  %begin = getelementptr %struct.prb_desc, %struct.prb_desc* %descs, i64 %idxprom, i32 1, i32 0
  store i64 1, i64* %begin, align 8
  %next = getelementptr %struct.prb_desc, %struct.prb_desc* %descs, i64 %idxprom, i32 1, i32 1
  store i64 1, i64* %next, align 8
  %sub44 = sub nsw i64 0, %conv
  %seq = getelementptr inbounds %struct.printk_info, %struct.printk_info* %infos, i64 0, i32 0
  store i64 %sub44, i64* %seq, align 8
  %seq50 = getelementptr %struct.printk_info, %struct.printk_info* %infos, i64 %idxprom, i32 0
  store i64 0, i64* %seq50, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @prb_record_text_space(%struct.prb_reserved_entry* nocapture noundef readonly %e) local_unnamed_addr #2 {
entry:
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, %struct.prb_reserved_entry* %e, i64 0, i32 3
  %0 = load i32, i32* %text_space, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #9, !srcloc !22
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #9, !srcloc !23
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @desc_read(%struct.prb_desc_ring* nocapture noundef readonly %desc_ring, i64 noundef %id, %struct.prb_desc* noundef %desc_out, i64* noundef writeonly %seq_out, i32* noundef writeonly %caller_id_out) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.printk_info* @to_info(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %id) #10
  %call1 = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %id) #10
  %counter.i.i = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call1, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %call4 = call fastcc i32 @get_desc_state(i64 noundef %id, i64 noundef %0) #10
  %1 = add i32 %call4, 1
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %out, label %if.end

if.end:                                           ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !25
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc_out, i64 0, i32 1
  %3 = bitcast %struct.prb_data_blk_lpos* %text_blk_lpos to i8*
  %text_blk_lpos6 = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call1, i64 0, i32 1
  %4 = bitcast %struct.prb_data_blk_lpos* %text_blk_lpos6 to i8*
  %call7 = call i8* @memcpy(i8* noundef %3, i8* noundef %4, i64 noundef 16) #12
  %tobool.not = icmp eq i64* %seq_out, null
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  %seq = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call, i64 0, i32 0
  %5 = load i64, i64* %seq, align 8
  store i64 %5, i64* %seq_out, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %tobool10.not = icmp eq i32* %caller_id_out, null
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end9
  %caller_id = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call, i64 0, i32 5
  %6 = load i32, i32* %caller_id, align 4
  store i32 %6, i32* %caller_id_out, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !26
  %7 = load volatile i64, i64* %counter.i.i, align 8
  %call14 = call fastcc i32 @get_desc_state(i64 noundef %id, i64 noundef %7) #10
  br label %out

out:                                              ; preds = %entry, %if.end12
  %d_state.0 = phi i32 [ %call4, %entry ], [ %call14, %if.end12 ]
  %state_val.0 = phi i64 [ %0, %entry ], [ %7, %if.end12 ]
  %counter.i.i36 = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc_out, i64 0, i32 0, i32 0
  store volatile i64 %state_val.0, i64* %counter.i.i36, align 8
  ret i32 %d_state.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @get_desc_state(i64 noundef %id, i64 noundef %state_val) unnamed_addr #8 {
entry:
  %and = and i64 %state_val, 4611686018427387903
  %cmp.not = icmp eq i64 %and, %id
  %shr = lshr i64 %state_val, 62
  %conv = trunc i64 %shr to i32
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 -1
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #9, !srcloc !27
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @to_blk_size(i32 noundef %size) unnamed_addr #8 {
entry:
  %add2 = add i32 %size, 15
  %and = and i32 %add2, -8
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_next_lpos(%struct.prb_data_ring* nocapture noundef readonly %data_ring, i64 noundef %lpos, i32 noundef %size) unnamed_addr #2 {
entry:
  %conv = zext i32 %size to i64
  %add = add i64 %conv, %lpos
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %data_ring, i64 0, i32 0
  %0 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %0 to i64
  %shr = lshr i64 %lpos, %sh_prom
  %shr3 = lshr i64 %add, %sh_prom
  %cmp = icmp eq i64 %shr, %shr3
  %notmask = shl nsw i64 -1, %sh_prom
  %and = and i64 %notmask, %add
  %add8 = add i64 %and, %conv
  %retval.0 = select i1 %cmp, i64 %add, i64 %add8
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @data_push_tail(%struct.printk_ringbuffer* noundef %rb, i64 noundef %lpos) unnamed_addr #0 {
entry:
  %next_lpos = alloca i64, align 8
  %0 = bitcast i64* %next_lpos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %next_lpos, align 8, !annotation !7
  %and = and i64 %lpos, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tail_lpos1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 3
  %counter.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %tail_lpos1, i64 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %size_bits = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1, i32 0
  %2 = xor i64 %1, -1
  %sub232 = add i64 %2, %lpos
  %3 = load i32, i32* %size_bits, align 8
  %sh_prom33 = zext i32 %3 to i64
  %sub2.highbits34 = lshr i64 %sub232, %sh_prom33
  %cmp35 = icmp eq i64 %sub2.highbits34, 0
  br i1 %cmp35, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %4 = bitcast %struct.atomic64_t* %tail_lpos1 to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %tail_lpos.036 = phi i64 [ %1, %while.body.lr.ph ], [ %tail_lpos.0.be, %while.cond.backedge ]
  %call3 = call fastcc i1 @data_make_reusable(%struct.printk_ringbuffer* noundef %rb, i64 noundef %tail_lpos.036, i64 noundef %lpos, i64* noundef nonnull %next_lpos) #10
  br i1 %call3, label %if.end10, label %if.then4

if.then4:                                         ; preds = %while.body
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !28
  %5 = load volatile i64, i64* %counter.i.i, align 8
  %cmp7 = icmp eq i64 %5, %tail_lpos.036
  br i1 %cmp7, label %cleanup, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then4, %if.end10
  %tail_lpos.0.be = phi i64 [ %5, %if.then4 ], [ %call14.i.i.i.i, %if.end10 ]
  %6 = xor i64 %tail_lpos.0.be, -1
  %sub2 = add i64 %6, %lpos
  %7 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %7 to i64
  %sub2.highbits = lshr i64 %sub2, %sh_prom
  %cmp = icmp eq i64 %sub2.highbits, 0
  br i1 %cmp, label %while.body, label %cleanup

if.end10:                                         ; preds = %while.body
  %8 = load i64, i64* %next_lpos, align 8
  %call14.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %4, i64 noundef %tail_lpos.036, i64 noundef %8) #12
  %cmp.not.i.i.i = icmp eq i64 %call14.i.i.i.i, %tail_lpos.036
  br i1 %cmp.not.i.i.i, label %cleanup, label %while.cond.backedge, !prof !8

cleanup:                                          ; preds = %if.then4, %while.cond.backedge, %if.end10, %if.end, %entry
  %retval.0 = phi i1 [ true, %entry ], [ true, %if.end ], [ false, %if.then4 ], [ true, %while.cond.backedge ], [ true, %if.end10 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* nocapture noundef readonly %data_ring, i64 noundef %begin_lpos) unnamed_addr #2 {
entry:
  %data = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %data_ring, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %data_ring, i64 0, i32 0
  %1 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %and = and i64 %sub, %begin_lpos
  %arrayidx = getelementptr i8, i8* %0, i64 %and
  %2 = bitcast i8* %arrayidx to %struct.prb_data_block*
  ret %struct.prb_data_block* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @data_make_reusable(%struct.printk_ringbuffer* nocapture noundef readonly %rb, i64 noundef %lpos_begin, i64 noundef %lpos_end, i64* nocapture noundef writeonly %lpos_out) unnamed_addr #0 {
entry:
  %desc = alloca %struct.prb_desc, align 8
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %0 = bitcast %struct.prb_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %size_bits = getelementptr inbounds %struct.prb_data_ring, %struct.prb_data_ring* %text_data_ring, i64 0, i32 0
  %1 = xor i64 %lpos_begin, -1
  %sub235 = add i64 %1, %lpos_end
  %2 = load i32, i32* %size_bits, align 8
  %sh_prom36 = zext i32 %2 to i64
  %sub2.highbits37 = lshr i64 %sub235, %sh_prom36
  %cmp38 = icmp eq i64 %sub2.highbits37, 0
  br i1 %cmp38, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %begin8 = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc, i64 0, i32 1, i32 0
  %next = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc, i64 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %lpos_begin.addr.039 = phi i64 [ %lpos_begin, %while.body.lr.ph ], [ %6, %sw.epilog ]
  %call = call fastcc %struct.prb_data_block* @to_block(%struct.prb_data_ring* noundef %text_data_ring, i64 noundef %lpos_begin.addr.039) #10
  %id3 = getelementptr inbounds %struct.prb_data_block, %struct.prb_data_block* %call, i64 0, i32 0
  %3 = load i64, i64* %id3, align 8
  %call4 = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %3, %struct.prb_desc* noundef nonnull %desc, i64* noundef null, i32* noundef null) #10
  switch i32 %call4, label %sw.epilog [
    i32 -1, label %cleanup
    i32 0, label %cleanup
    i32 1, label %cleanup
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %while.body
  %4 = load i64, i64* %begin8, align 8
  %cmp6.not = icmp eq i64 %4, %lpos_begin.addr.039
  br i1 %cmp6.not, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb5
  call fastcc void @desc_make_reusable(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %3) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %5 = load i64, i64* %begin8, align 8
  %cmp9.not = icmp eq i64 %5, %lpos_begin.addr.039
  br i1 %cmp9.not, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %while.body, %if.end
  %6 = load i64, i64* %next, align 8
  %7 = xor i64 %6, -1
  %sub2 = add i64 %7, %lpos_end
  %8 = load i32, i32* %size_bits, align 8
  %sh_prom = zext i32 %8 to i64
  %sub2.highbits = lshr i64 %sub2, %sh_prom
  %cmp = icmp eq i64 %sub2.highbits, 0
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %sw.epilog, %entry
  %lpos_begin.addr.0.lcssa = phi i64 [ %lpos_begin, %entry ], [ %6, %sw.epilog ]
  store i64 %lpos_begin.addr.0.lcssa, i64* %lpos_out, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb5, %while.body, %while.body, %while.body, %while.end
  %retval.0 = phi i1 [ true, %while.end ], [ false, %while.body ], [ false, %while.body ], [ false, %while.body ], [ false, %sw.bb5 ], [ false, %sw.bb7 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @desc_make_reusable(%struct.prb_desc_ring* nocapture noundef readonly %desc_ring, i64 noundef %id) unnamed_addr #0 {
entry:
  %or = or i64 %id, -9223372036854775808
  %or1 = or i64 %id, -4611686018427387904
  %call = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %id) #10
  %0 = bitcast %struct.prb_desc* %call to i8*
  call fastcc void @__cmpxchg_case_64(i8* noundef %0, i64 noundef %or, i64 noundef %or1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #9, !srcloc !29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @desc_push_tail(%struct.printk_ringbuffer* noundef %rb, i64 noundef %tail_id) unnamed_addr #0 {
entry:
  %desc = alloca %struct.prb_desc, align 8
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %0 = bitcast %struct.prb_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %call = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %tail_id, %struct.prb_desc* noundef nonnull %desc, i64* noundef null, i32* noundef null) #10
  switch i32 %call, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %cleanup
    i32 1, label %cleanup
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %counter.i.i = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %count_bits = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 0
  %2 = load i32, i32* %count_bits, align 8
  %shl = shl nuw i32 1, %2
  %conv = zext i32 %shl to i64
  %sub = sub i64 %tail_id, %conv
  %3 = xor i64 %sub, %1
  %4 = and i64 %3, 4611686018427387903
  %cmp = icmp ne i64 %4, 0
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call fastcc void @desc_make_reusable(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %tail_id) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6
  %next = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc, i64 0, i32 1, i32 1
  %5 = load i64, i64* %next, align 8
  %call7 = call fastcc i1 @data_push_tail(%struct.printk_ringbuffer* noundef %rb, i64 noundef %5) #10
  br i1 %call7, label %if.end9, label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %add = add i64 %tail_id, 1
  %and10 = and i64 %add, 4611686018427387903
  %call11 = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %and10, %struct.prb_desc* noundef nonnull %desc, i64* noundef null, i32* noundef null) #10
  %6 = and i32 %call11, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end9
  %tail_id17 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 4
  %8 = bitcast %struct.atomic64_t* %tail_id17 to i8*
  %call14.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %8, i64 noundef %tail_id, i64 noundef %and10) #12
  br label %if.end27

if.else:                                          ; preds = %if.end9
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !30
  %counter.i.i46 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 4, i32 0
  %9 = load volatile i64, i64* %counter.i.i46, align 8
  %cmp23 = icmp eq i64 %9, %tail_id
  br i1 %cmp23, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.epilog, %entry, %entry, %sw.bb, %if.end27
  %retval.0 = phi i1 [ true, %if.end27 ], [ %cmp, %sw.bb ], [ false, %entry ], [ false, %entry ], [ false, %sw.epilog ], [ false, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #9, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @prb_read(%struct.printk_ringbuffer* nocapture noundef readonly %rb, i64 noundef %seq, %struct.printk_record* noundef readonly %r, i32* noundef %line_count) unnamed_addr #0 {
entry:
  %desc = alloca %struct.prb_desc, align 8
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %call = call fastcc %struct.printk_info* @to_info(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %seq) #10
  %call2 = call fastcc %struct.prb_desc* @to_desc(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %seq) #10
  %0 = bitcast %struct.prb_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %counter.i.i = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %call2, i64 0, i32 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %and = and i64 %1, 4611686018427387903
  %call5 = call fastcc i32 @desc_read_finalized_seq(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %and, i64 noundef %seq, %struct.prb_desc* noundef nonnull %desc) #10
  %tobool = icmp eq i32 %call5, 0
  %tobool6 = icmp ne %struct.printk_record* %r, null
  %or.cond = and i1 %tobool6, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %info7 = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 0
  %2 = load %struct.printk_info*, %struct.printk_info** %info7, align 8
  %tobool8.not = icmp eq %struct.printk_info* %2, null
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %3 = bitcast %struct.printk_info* %2 to i8*
  %4 = bitcast %struct.printk_info* %call to i8*
  %call11 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef %4, i64 noundef 88) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 1
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc, i64 0, i32 1
  %text_len = getelementptr inbounds %struct.printk_info, %struct.printk_info* %call, i64 0, i32 2
  %5 = load i16, i16* %text_len, align 8
  %text_buf = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 1
  %6 = load i8*, i8** %text_buf, align 8
  %text_buf_size = getelementptr inbounds %struct.printk_record, %struct.printk_record* %r, i64 0, i32 2
  %7 = load i32, i32* %text_buf_size, align 8
  %call13 = call fastcc i1 @copy_data(%struct.prb_data_ring* noundef %text_data_ring, %struct.prb_data_blk_lpos* noundef %text_blk_lpos, i16 noundef %5, i8* noundef %6, i32 noundef %7, i32* noundef %line_count) #10
  br i1 %call13, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.end12
  %call16 = call fastcc i32 @desc_read_finalized_seq(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %and, i64 noundef %seq, %struct.prb_desc* noundef nonnull %desc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry, %if.end15
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call5, %entry ], [ -2, %if.end12 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @prb_first_seq(%struct.printk_ringbuffer* noundef %rb) unnamed_addr #0 {
entry:
  %desc = alloca %struct.prb_desc, align 8
  %seq = alloca i64, align 8
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0
  %0 = bitcast %struct.prb_desc* %desc to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %1 = bitcast i64* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %seq, align 8, !annotation !7
  %counter.i.i = getelementptr inbounds %struct.printk_ringbuffer, %struct.printk_ringbuffer* %rb, i64 0, i32 0, i32 4, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  %call310 = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %2, %struct.prb_desc* noundef nonnull %desc, i64* noundef nonnull %seq, i32* noundef null) #10
  %3 = and i32 %call310, -2
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %for.end, label %if.end

if.end:                                           ; preds = %entry, %if.end
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !32
  %5 = load volatile i64, i64* %counter.i.i, align 8
  %call3 = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring1, i64 noundef %5, %struct.prb_desc* noundef nonnull %desc, i64* noundef nonnull %seq, i32* noundef null) #10
  %6 = and i32 %call3, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %for.end, label %if.end

for.end:                                          ; preds = %if.end, %entry
  %8 = load i64, i64* %seq, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9
  ret i64 %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @desc_read_finalized_seq(%struct.prb_desc_ring* nocapture noundef readonly %desc_ring, i64 noundef %id, i64 noundef %seq, %struct.prb_desc* noundef %desc_out) unnamed_addr #0 {
entry:
  %s = alloca i64, align 8
  %0 = bitcast i64* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %s, align 8, !annotation !7
  %call = call fastcc i32 @desc_read(%struct.prb_desc_ring* noundef %desc_ring, i64 noundef %id, %struct.prb_desc* noundef %desc_out, i64* noundef nonnull %s, i32* noundef null) #10
  %1 = add i32 %call, -2
  %2 = icmp ult i32 %1, -3
  %3 = load i64, i64* %s, align 8
  %cmp5.not = icmp eq i64 %3, %seq
  %or.cond = select i1 %2, i1 %cmp5.not, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq i32 %call, 3
  br i1 %cmp6, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %begin = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc_out, i64 0, i32 1, i32 0
  %4 = load i64, i64* %begin, align 8
  %cmp8 = icmp eq i64 %4, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %next = getelementptr inbounds %struct.prb_desc, %struct.prb_desc* %desc_out, i64 0, i32 1, i32 1
  %5 = load i64, i64* %next, align 8
  %cmp9 = icmp eq i64 %5, 1
  br i1 %cmp9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %lor.lhs.false7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true, %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry ], [ -2, %land.lhs.true ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @copy_data(%struct.prb_data_ring* nocapture noundef readonly %data_ring, %struct.prb_data_blk_lpos* nocapture noundef readonly %blk_lpos, i16 noundef %len, i8* noundef %buf, i32 noundef %buf_size, i32* noundef writeonly %line_count) unnamed_addr #0 {
entry:
  %data_size = alloca i32, align 4
  %0 = bitcast i32* %data_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %data_size, align 4, !annotation !7
  %tobool = icmp ne i8* %buf, null
  %tobool1 = icmp ne i32 %buf_size, 0
  %or.cond = and i1 %tobool, %tobool1
  %tobool2 = icmp ne i32* %line_count, null
  %or.cond29 = or i1 %or.cond, %tobool2
  br i1 %or.cond29, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @get_data(%struct.prb_data_ring* noundef %data_ring, %struct.prb_data_blk_lpos* noundef %blk_lpos, i32* noundef nonnull %data_size) #10
  %tobool3.not = icmp eq i8* %call, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %1 = load i32, i32* %data_size, align 4
  %conv = zext i16 %len to i32
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  br i1 %tobool2, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8
  %call12 = call fastcc i32 @count_lines(i8* noundef nonnull %call, i32 noundef %conv) #10
  store i32 %call12, i32* %line_count, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8
  br i1 %or.cond, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end13
  %conv20 = and i32 %buf_size, 65535
  %cmp22 = icmp ult i32 %conv20, %conv
  %cond = select i1 %cmp22, i32 %conv20, i32 %conv
  %conv26 = zext i32 %cond to i64
  %call27 = call i8* @memcpy(i8* noundef nonnull %buf, i8* noundef nonnull %call, i64 noundef %conv26) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end5, %if.end, %entry, %if.end18
  %retval.0 = phi i1 [ true, %if.end18 ], [ true, %entry ], [ false, %if.end ], [ false, %if.end5 ], [ true, %if.end13 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @count_lines(i8* noundef %text, i32 noundef %text_size) unnamed_addr #0 {
entry:
  %tobool.not14 = icmp eq i32 %text_size, 0
  br i1 %tobool.not14, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint i8* %text to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %next.017 = phi i8* [ %text, %while.body.lr.ph ], [ %incdec.ptr, %if.end ]
  %line_count.016 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end ]
  %next_size.015 = phi i32 [ %text_size, %while.body.lr.ph ], [ %conv3, %if.end ]
  %conv = zext i32 %next_size.015 to i64
  %call = call i8* @memchr(i8* noundef %next.017, i32 noundef 10, i64 noundef %conv) #12
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %inc = add i32 %line_count.016, 1
  %incdec.ptr = getelementptr i8, i8* %call, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr to i64
  %sub.ptr.sub.neg = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %0 = trunc i64 %sub.ptr.sub.neg to i32
  %conv3 = add i32 %0, %text_size
  %tobool.not = icmp eq i32 %conv3, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %while.body, %entry
  %line_count.0.lcssa = phi i32 [ 1, %entry ], [ %line_count.016, %while.body ], [ %inc, %if.end ]
  ret i32 %line_count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2150564525}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2150567584}
!12 = !{i64 2148757871, i64 2148757918, i64 2148757924, i64 2148757961, i64 2148757979, i64 2148759290, i64 2148759338, i64 2148759386, i64 2148759449, i64 2148759498, i64 2148758057, i64 2148758082, i64 2148758108, i64 2148758114, i64 2148758956, i64 2148758996, i64 2148759014, i64 2148759046, i64 2148759074, i64 2148759128, i64 2148759148, i64 2148759245, i64 2148758137, i64 2148758151, i64 2148758157, i64 2148758207, i64 2148758253, i64 2148758286}
!13 = !{i64 2150555411}
!14 = !{i64 2150557658}
!15 = !{i64 2150559883}
!16 = !{i64 2150561661}
!17 = !{i32 0, i32 -7}
!18 = !{i64 2150543485}
!19 = !{i64 2150544921}
!20 = !{i64 2150550831}
!21 = !{i64 2150572379}
!22 = !{i64 2148751858, i64 2148751905, i64 2148751911, i64 2148751948, i64 2148751966, i64 2148753277, i64 2148753325, i64 2148753373, i64 2148753436, i64 2148753485, i64 2148752044, i64 2148752069, i64 2148752095, i64 2148752101, i64 2148752943, i64 2148752983, i64 2148753001, i64 2148753033, i64 2148753061, i64 2148753115, i64 2148753135, i64 2148753232, i64 2148752124, i64 2148752138, i64 2148752144, i64 2148752194, i64 2148752240, i64 2148752273}
!23 = !{i64 2148754037, i64 2148754084, i64 2148754090, i64 2148754127, i64 2148754145, i64 2148755088, i64 2148755136, i64 2148755184, i64 2148755247, i64 2148755296, i64 2148754223, i64 2148754248, i64 2148754274, i64 2148754280, i64 2148754317, i64 2148754323, i64 2148754373, i64 2148754419, i64 2148754452}
!24 = !{i64 2148746155, i64 2148746202, i64 2148746208, i64 2148746245, i64 2148746263, i64 2148747604, i64 2148747652, i64 2148747700, i64 2148747763, i64 2148747812, i64 2148746341, i64 2148746366, i64 2148746392, i64 2148746398, i64 2148747270, i64 2148747310, i64 2148747328, i64 2148747360, i64 2148747388, i64 2148747442, i64 2148747462, i64 2148747559, i64 2148746421, i64 2148746435, i64 2148746441, i64 2148746491, i64 2148746537, i64 2148746570}
!25 = !{i64 2150541548}
!26 = !{i64 2150541620}
!27 = !{i64 2147901740, i64 2147901773, i64 2147901824, i64 2147901880, i64 2147901913, i64 2147901968, i64 2147901997, i64 2147902024}
!28 = !{i64 2150542143}
!29 = !{i64 2147877962, i64 2147877995, i64 2147878046, i64 2147878102, i64 2147878135, i64 2147878189, i64 2147878218, i64 2147878238}
!30 = !{i64 2150542980}
!31 = !{i64 2147827706, i64 2147828220, i64 2147828250, i64 2147828276, i64 2147828308, i64 2147828337}
!32 = !{i64 2150574886}
