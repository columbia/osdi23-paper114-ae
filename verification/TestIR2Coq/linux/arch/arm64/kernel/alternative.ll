; ModuleID = 'arch/arm64/kernel/alternative.c'
source_filename = "arch/arm64/kernel/alternative.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.cpumask = type { [4 x i64] }
%struct.alt_region = type { %struct.alt_instr*, %struct.alt_instr* }
%struct.alt_instr = type { i32, i32, i16, i8, i8 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@applied_alternatives = internal global [1 x i64] zeroinitializer, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__alt_instructions = external dso_local global [0 x i8], align 1
@__alt_instructions_end = external dso_local global [0 x i8], align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@boot_capabilities = external dso_local global [1 x i64], align 8
@__const.__apply_alternatives_multi_stop.region = private unnamed_addr constant %struct.alt_region { %struct.alt_instr* bitcast ([0 x i8]* @__alt_instructions to %struct.alt_instr*), %struct.alt_instr* bitcast ([0 x i8]* @__alt_instructions_end to %struct.alt_instr*) }, align 8
@all_alternatives_applied = internal global i32 0, align 4
@__apply_alternatives.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [38 x i8] c"\016alternatives: patching kernel code\0A\00", align 1
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @alternative_is_applied(i16 noundef %cpufeature) local_unnamed_addr #0 {
entry:
  %conv = zext i16 %cpufeature to i32
  %cmp = icmp ugt i16 %cpufeature, 60
  br i1 %cmp, label %if.then, label %if.end18, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/alternative.c\22; .popsection; .long 14472b - 14470b; .short 36; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %return

if.end18:                                         ; preds = %entry
  %div.i = lshr i32 %conv, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr [1 x i64], [1 x i64]* @applied_alternatives, i64 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %conv, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool20 = icmp ne i64 %2, 0
  br label %return

return:                                           ; preds = %if.then, %if.end18
  %retval.0 = phi i1 [ %tobool20, %if.end18 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @apply_alternatives_all() local_unnamed_addr #2 section ".init.text" {
entry:
  %call = call i32 @stop_machine(i32 (i8*)* noundef nonnull @__apply_alternatives_multi_stop, i8* noundef null, %struct.cpumask* noundef nonnull @__cpu_online_mask) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(i32 (i8*)* noundef, i8* noundef, %struct.cpumask* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @__apply_alternatives_multi_stop(i8* nocapture noundef readnone %unused) #0 {
entry:
  %region = alloca %struct.alt_region, align 8
  %remaining_capabilities = alloca [1 x i64], align 8
  %0 = bitcast %struct.alt_region* %region to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.alt_region* @__const.__apply_alternatives_multi_stop.region to i8*), i64 16, i1 false)
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %3 = load volatile i32, i32* @all_alternatives_applied, align 4
  %tobool2.not21 = icmp eq i32 %3, 0
  br i1 %tobool2.not21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  call fastcc void @cpu_relax() #13
  %4 = load volatile i32, i32* @all_alternatives_applied, align 4
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  call void asm sideeffect "isb", "~{memory}"() #11, !srcloc !10
  br label %if.end18

if.else:                                          ; preds = %entry
  %5 = bitcast [1 x i64]* %remaining_capabilities to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #11
  %6 = getelementptr inbounds [1 x i64], [1 x i64]* %remaining_capabilities, i64 0, i64 0, !annotation !11
  store i64 0, i64* %6, align 8, !annotation !11
  call fastcc void @bitmap_complement(i64* noundef nonnull %6) #13
  %7 = load volatile i32, i32* @all_alternatives_applied, align 4
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %do.end16, label %do.body9, !prof !12

do.body9:                                         ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/alternative.c\22; .popsection; .long 14472b - 14470b; .short 217; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !13
  unreachable

do.end16:                                         ; preds = %if.else
  call fastcc void @__apply_alternatives(%struct.alt_region* noundef nonnull %region, i64* noundef nonnull %6) #13
  store volatile i32 1, i32* @all_alternatives_applied, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %while.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @apply_boot_alternatives() local_unnamed_addr #2 section ".init.text" {
entry:
  %region = alloca %struct.alt_region, align 8
  %0 = bitcast %struct.alt_region* %region to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) bitcast (%struct.alt_region* @__const.__apply_alternatives_multi_stop.region to i8*), i64 16, i1 false)
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %1 = inttoptr i64 %add to i32*
  %2 = load i32, i32* %1, align 4
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/alternative.c\22; .popsection; .long 14472b - 14470b; .short 245; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__apply_alternatives(%struct.alt_region* noundef nonnull %region, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @boot_capabilities, i64 0, i64 0)) #13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #5 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #14, !srcloc !15
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__apply_alternatives(%struct.alt_region* nocapture noundef readonly %region, i64* noundef %feature_mask) unnamed_addr #0 {
entry:
  %begin = getelementptr inbounds %struct.alt_region, %struct.alt_region* %region, i64 0, i32 0
  %0 = load %struct.alt_instr*, %struct.alt_instr** %begin, align 8
  %end = getelementptr inbounds %struct.alt_region, %struct.alt_region* %region, i64 0, i32 1
  %1 = load %struct.alt_instr*, %struct.alt_instr** %end, align 8
  %cmp5 = icmp ult %struct.alt_instr* %0, %1
  br i1 %cmp5, label %for.body, label %if.then103

for.body:                                         ; preds = %entry, %cleanup
  %alt.06 = phi %struct.alt_instr* [ %incdec.ptr, %cleanup ], [ %0, %entry ]
  %cpufeature = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt.06, i64 0, i32 2
  %2 = load i16, i16* %cpufeature, align 4
  %conv = zext i16 %2 to i32
  %div.i = lshr i32 %conv, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr i64, i64* %feature_mask, i64 %idxprom.i
  %3 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %conv, 63
  %sh_prom.i = zext i32 %and.i to i64
  %4 = shl nuw i64 1, %sh_prom.i
  %5 = and i64 %4, %3
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %cmp3 = icmp ult i16 %2, 61
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call7 = call fastcc i1 @cpus_have_cap(i32 noundef %conv) #13
  br i1 %call7, label %land.lhs.true.if.end9_crit_edge, label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  %.pre = load i16, i16* %cpufeature, align 4
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end
  %6 = phi i16 [ %.pre, %land.lhs.true.if.end9_crit_edge ], [ %2, %if.end ]
  %cmp12 = icmp eq i16 %6, 61
  %alt_len = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt.06, i64 0, i32 4
  %7 = load i8, i8* %alt_len, align 1
  br i1 %cmp12, label %do.body, label %do.body29

do.body:                                          ; preds = %if.end9
  %cmp16.not = icmp eq i8 %7, 0
  br i1 %cmp16.not, label %if.end52, label %do.body22, !prof !12

do.body22:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/alternative.c\22; .popsection; .long 14472b - 14470b; .short 155; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !16
  unreachable

do.body29:                                        ; preds = %if.end9
  %orig_len = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt.06, i64 0, i32 3
  %8 = load i8, i8* %orig_len, align 2
  %cmp33.not = icmp eq i8 %7, %8
  br i1 %cmp33.not, label %if.end52, label %do.body43, !prof !12

do.body43:                                        ; preds = %do.body29
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/alternative.c\22; .popsection; .long 14472b - 14470b; .short 157; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !17
  unreachable

if.end52:                                         ; preds = %do.body29, %do.body
  %.b1 = load i1, i1* @__apply_alternatives.__already_done, align 1
  br i1 %.b1, label %if.end70, label %if.then65, !prof !12

if.then65:                                        ; preds = %if.end52
  store i1 true, i1* @__apply_alternatives.__already_done, align 1
  %call69 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)) #15
  %.pre8 = load i16, i16* %cpufeature, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end52
  %9 = phi i16 [ %.pre8, %if.then65 ], [ %6, %if.end52 ]
  %orig_offset = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt.06, i64 0, i32 0
  %10 = bitcast %struct.alt_instr* %alt.06 to i8*
  %11 = load i32, i32* %orig_offset, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext
  %12 = bitcast i8* %add.ptr to i32*
  %13 = ptrtoint i8* %add.ptr to i64
  %14 = load i64, i64* @kimage_voffset, align 8
  %15 = load i64, i64* @memstart_addr, align 8
  %16 = add i64 %15, %14
  %sub84 = sub i64 %13, %16
  %or = or i64 %sub84, -549755813888
  %17 = inttoptr i64 %or to i32*
  %orig_len85 = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt.06, i64 0, i32 3
  %18 = load i8, i8* %orig_len85, align 2
  %19 = lshr i8 %18, 2
  %div = zext i8 %19 to i32
  %cmp89 = icmp ult i16 %9, 61
  br i1 %cmp89, label %if.end96, label %if.else92

if.else92:                                        ; preds = %if.end70
  %alt_offset = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt.06, i64 0, i32 1
  %20 = bitcast i32* %alt_offset to i8*
  %21 = load i32, i32* %alt_offset, align 4
  %idx.ext94 = sext i32 %21 to i64
  %add.ptr95 = getelementptr i8, i8* %20, i64 %idx.ext94
  %22 = bitcast i8* %add.ptr95 to void (%struct.alt_instr*, i32*, i32*, i32)*
  br label %if.end96

if.end96:                                         ; preds = %if.end70, %if.else92
  %alt_cb.0 = phi void (%struct.alt_instr*, i32*, i32*, i32)* [ %22, %if.else92 ], [ @patch_alternative, %if.end70 ]
  call void %alt_cb.0(%struct.alt_instr* noundef %alt.06, i32* noundef %12, i32* noundef nonnull %17, i32 noundef %div) #12
  %23 = zext i8 %19 to i64
  %add.ptr100 = getelementptr i32, i32* %12, i64 %23
  %24 = ptrtoint i32* %add.ptr100 to i64
  call fastcc void @clean_dcache_range_nopatch(i64 noundef %13, i64 noundef %24) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %for.body, %if.end96
  %incdec.ptr = getelementptr %struct.alt_instr, %struct.alt_instr* %alt.06, i64 1
  %25 = load %struct.alt_instr*, %struct.alt_instr** %end, align 8
  %cmp = icmp ult %struct.alt_instr* %incdec.ptr, %25
  br i1 %cmp, label %for.body, label %if.then103

if.then103:                                       ; preds = %cleanup, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #11, !srcloc !18
  %call.i.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #12
  %cmp.i.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %cpus_have_const_cap.exit.i

if.then3.i.i:                                     ; preds = %if.then103
  %call.i1.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 8, i32 0)) #12
  %cmp1.i.i.i = icmp sgt i32 %call.i1.i.i, 0
  br i1 %cmp1.i.i.i, label %icache_inval_all_pou.exit, label %if.end.i

cpus_have_const_cap.exit.i:                       ; preds = %if.then103
  %call6.i.i = call fastcc i1 @cpus_have_cap(i32 noundef 8) #12
  br i1 %call6.i.i, label %icache_inval_all_pou.exit, label %if.end.i

if.end.i:                                         ; preds = %cpus_have_const_cap.exit.i, %if.then3.i.i
  call void asm sideeffect "ic\09ialluis", ""() #11, !srcloc !19
  call void asm sideeffect "dsb ish", "~{memory}"() #11, !srcloc !20
  br label %icache_inval_all_pou.exit

icache_inval_all_pou.exit:                        ; preds = %if.then3.i.i, %cpus_have_const_cap.exit.i, %if.end.i
  call void asm sideeffect "isb", "~{memory}"() #11, !srcloc !21
  call fastcc void @bitmap_or(i64* noundef %feature_mask) #13
  call fastcc void @bitmap_and() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #11, !srcloc !22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bitmap_complement(i64* nocapture noundef writeonly %dst) unnamed_addr #6 {
entry:
  %0 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @boot_capabilities, i64 0, i64 0), align 8
  %neg = xor i64 %0, -1
  store i64 %neg, i64* %dst, align 8
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap(i32 noundef %num) unnamed_addr #8 {
entry:
  %div.i = lshr i32 %num, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr [1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %num, 63
  %sh_prom.i = zext i32 %and.i to i64
  %1 = shl nuw i64 1, %sh_prom.i
  %2 = and i64 %0, %1
  %tobool = icmp ne i64 %2, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @patch_alternative(%struct.alt_instr* noundef %alt, i32* noundef %origptr, i32* nocapture noundef writeonly %updptr, i32 noundef %nr_inst) unnamed_addr #0 {
entry:
  %alt_offset = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt, i64 0, i32 1
  %0 = bitcast i32* %alt_offset to i8*
  %1 = load i32, i32* %alt_offset, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to i32*
  %cmp15 = icmp sgt i32 %nr_inst, 0
  br i1 %cmp15, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %nr_inst to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %add.ptr3 = getelementptr i32, i32* %origptr, i64 %indvars.iv
  %add.ptr5 = getelementptr i32, i32* %2, i64 %indvars.iv
  %call = call fastcc i32 @get_alt_insn(%struct.alt_instr* noundef %alt, i32* noundef %add.ptr3, i32* noundef %add.ptr5) #13
  %arrayidx = getelementptr i32, i32* %updptr, i64 %indvars.iv
  store i32 %call, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clean_dcache_range_nopatch(i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %call = call i64 @read_sanitised_ftr_reg(i32 noundef 1769504) #12
  %0 = trunc i64 %call to i32
  %1 = lshr i32 %0, 16
  %conv.i.i = and i32 %1, 15
  %shl = shl nuw nsw i32 4, %conv.i.i
  %2 = zext i32 %shl to i64
  %neg = sub nsw i64 0, %2
  %and = and i64 %neg, %start
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %cur.0 = phi i64 [ %and, %entry ], [ %add, %do.body ]
  call void asm sideeffect "dc civac, $0", "r,~{memory}"(i64 %cur.0) #11, !srcloc !23
  %add = add i64 %cur.0, %2
  %cmp = icmp ult i64 %add, %end
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bitmap_or(i64* nocapture noundef readonly %src2) unnamed_addr #6 {
entry:
  %0 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @applied_alternatives, i64 0, i64 0), align 8
  %1 = load i64, i64* %src2, align 8
  %or = or i64 %1, %0
  store i64 %or, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @applied_alternatives, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @bitmap_and() unnamed_addr #6 {
entry:
  %0 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @applied_alternatives, i64 0, i64 0), align 8
  %1 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %and = and i64 %0, 2305843009213693951
  %and4 = and i64 %and, %1
  store i64 %and4, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @applied_alternatives, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_alt_insn(%struct.alt_instr* noundef %alt, i32* noundef %insnptr, i32* noundef %altinsnptr) unnamed_addr #0 {
entry:
  %0 = load i32, i32* %altinsnptr, align 4
  %call = call i1 @aarch64_insn_is_branch_imm(i32 noundef %0) #12
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @aarch64_get_branch_offset(i32 noundef %0) #12
  %1 = ptrtoint i32* %altinsnptr to i64
  %conv = sext i32 %call1 to i64
  %add = add i64 %conv, %1
  %call2 = call fastcc i1 @branch_insn_requires_update(%struct.alt_instr* noundef %alt, i64 noundef %add) #13
  br i1 %call2, label %if.then3, label %if.end24

if.then3:                                         ; preds = %if.then
  %2 = ptrtoint i32* %insnptr to i64
  %sub = sub i64 %add, %2
  %conv4 = trunc i64 %sub to i32
  %call5 = call i32 @aarch64_set_branch_offset(i32 noundef %0, i32 noundef %conv4) #12
  br label %if.end24

if.else:                                          ; preds = %entry
  %and.i = and i32 %0, -1627389952
  %cmp.i = icmp eq i32 %and.i, -1879048192
  br i1 %cmp.i, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.else
  %call9 = call i32 @aarch64_insn_adrp_get_offset(i32 noundef %0) #12
  %3 = ptrtoint i32* %altinsnptr to i64
  %and = and i64 %3, 4294963200
  %4 = ptrtoint i32* %insnptr to i64
  %and12 = and i64 %4, 4294963200
  %add11 = sub nsw i64 %and, %and12
  %5 = trunc i64 %add11 to i32
  %conv14 = add i32 %call9, %5
  %call15 = call i32 @aarch64_insn_adrp_set_offset(i32 noundef %0, i32 noundef %conv14) #12
  br label %if.end24

if.else16:                                        ; preds = %if.else
  %call17 = call i1 @aarch64_insn_uses_literal(i32 noundef %0) #12
  br i1 %call17, label %do.body, label %if.end24

do.body:                                          ; preds = %if.else16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22arch/arm64/kernel/alternative.c\22; .popsection; .long 14472b - 14470b; .short 92; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !24
  unreachable

if.end24:                                         ; preds = %if.then, %if.then3, %if.then7, %if.else16
  %insn.1 = phi i32 [ %call15, %if.then7 ], [ %0, %if.else16 ], [ %call5, %if.then3 ], [ %0, %if.then ]
  ret i32 %insn.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @aarch64_insn_is_branch_imm(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_get_branch_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @branch_insn_requires_update(%struct.alt_instr* noundef %alt, i64 noundef %pc) unnamed_addr #10 {
entry:
  %alt_offset = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt, i64 0, i32 1
  %0 = bitcast i32* %alt_offset to i8*
  %1 = load i32, i32* %alt_offset, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %2 = ptrtoint i8* %add.ptr to i64
  %cmp.not = icmp ugt i64 %2, %pc
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %alt_len = getelementptr inbounds %struct.alt_instr, %struct.alt_instr* %alt, i64 0, i32 4
  %3 = load i8, i8* %alt_len, align 1
  %conv = zext i8 %3 to i64
  %add = add i64 %conv, %2
  %cmp2 = icmp ult i64 %add, %pc
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_set_branch_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_insn_adrp_get_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarch64_insn_adrp_set_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @aarch64_insn_uses_literal(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @read_sanitised_ftr_reg(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree nounwind readonly }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind readonly }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }

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
!9 = !{i64 2153857870}
!10 = !{i64 2153866961}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153872444}
!14 = !{i64 2153875728}
!15 = !{i64 2149123801, i64 2149123848, i64 2149123854, i64 2149123891, i64 2149123909, i64 2149124836, i64 2149124884, i64 2149124932, i64 2149124995, i64 2149125044, i64 2149123987, i64 2149124012, i64 2149124038, i64 2149124044, i64 2149124081, i64 2149124087, i64 2149124137, i64 2149124183, i64 2149124216}
!16 = !{i64 2153861317}
!17 = !{i64 2153862776}
!18 = !{i64 2153866106}
!19 = !{i64 3942420}
!20 = !{i64 2153847497}
!21 = !{i64 2153866153}
!22 = !{i64 1868991}
!23 = !{i64 3539}
!24 = !{i64 2153859493}
