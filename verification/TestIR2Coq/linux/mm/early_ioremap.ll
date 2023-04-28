; ModuleID = 'mm/early_ioremap.c'
source_filename = "mm/early_ioremap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_early_ioremap__252_98_check_early_ioremap_leak7:\09\09\09"
module asm ".long\09check_early_ioremap_leak - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }

@__setup_str_early_ioremap_debug_setup = internal constant [20 x i8] c"early_ioremap_debug\00", section ".init.rodata", align 1
@__setup_early_ioremap_debug_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__setup_str_early_ioremap_debug_setup, i32 0, i32 0), i32 (i8*)* @early_ioremap_debug_setup, i32 1 }, section ".init.setup", align 8
@prev_map = internal unnamed_addr global [7 x i8*] zeroinitializer, section ".init.data", align 8
@slot_virt = internal unnamed_addr global [7 x i64] zeroinitializer, section ".init.data", align 8
@__UNIQUE_ID___addressable_check_early_ioremap_leak253 = internal global i8* bitcast (i32 ()* @check_early_ioremap_leak to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [30 x i8] c"%s(%p, %08lx) not found slot\0A\00", align 1
@__func__.early_iounmap = private unnamed_addr constant [14 x i8] c"early_iounmap\00", align 1
@prev_size = internal unnamed_addr global [7 x i64] zeroinitializer, section ".init.data", align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%s(%p, %08lx) [%d] size not consistent %08lx\0A\00", align 1
@early_ioremap_debug = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s(%p, %08lx) [%d]\0A\00", align 1
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [118 x i8] c"\014Debug warning: early ioremap leak of %d areas detected.\0Aplease boot with early_ioremap_debug and report the dmesg.\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s(%pa, %08lx) not found slot\0A\00", align 1
@__func__.__early_ioremap = private unnamed_addr constant [16 x i8] c"__early_ioremap\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s(%pa, %08lx) [%d] => %08lx + %08lx\0A\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_check_early_ioremap_leak253 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_early_ioremap_debug_setup to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @early_ioremap_debug_setup(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i1 true, i1* @early_ioremap_debug, align 4
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local i64 @early_memremap_pgprot_adjust(i64 noundef %phys_addr, i64 noundef %size, i64 %prot.coerce) local_unnamed_addr #1 section ".init.text" {
entry:
  ret i64 %prot.coerce
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define dso_local void @early_ioremap_reset() local_unnamed_addr #0 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_ioremap_setup() local_unnamed_addr #1 section ".init.text" {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %for.body21.preheader, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr [7 x i8*], [7 x i8*]* @prev_map, i64 0, i64 %indvars.iv
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %for.cond, label %if.then, !prof !7

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 75; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !8
  br label %for.body21.preheader

for.body21.preheader:                             ; preds = %for.cond, %if.then
  br label %for.body21

for.body21:                                       ; preds = %for.body21.preheader, %for.body21
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body21 ], [ 0, %for.body21.preheader ]
  %sub.neg = shl nuw nsw i64 %indvars.iv41, 18
  %sub23 = add nuw nsw i64 %sub.neg, -8629534720
  %arrayidx25 = getelementptr [7 x i64], [7 x i64]* @slot_virt, i64 0, i64 %indvars.iv41
  store i64 %sub23, i64* %arrayidx25, align 8
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 7
  br i1 %exitcond44.not, label %for.end28, label %for.body21

for.end28:                                        ; preds = %for.body21
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @check_early_ioremap_leak() #1 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %count.037 = phi i32 [ 0, %entry ], [ %spec.select, %for.body ]
  %arrayidx = getelementptr [7 x i8*], [7 x i8*]* @prev_map, i64 0, i64 %indvars.iv
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool.not = icmp ne i8* %0, null
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %count.037, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %tobool2.not = icmp eq i32 %spec.select, 0
  br i1 %tobool2.not, label %if.end17, label %do.end, !prof !7

do.end:                                           ; preds = %for.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0), i32 noundef %spec.select) #4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 94; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !9
  br label %if.end17

if.end17:                                         ; preds = %do.end, %for.end
  %not.tobool2.not = xor i1 %tobool2.not, true
  %. = zext i1 %not.tobool2.not to i32
  ret i32 %.
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_iounmap(i8* noundef %addr, i64 noundef %size) local_unnamed_addr #1 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr [7 x i8*], [7 x i8*]* @prev_map, i64 0, i64 %indvars.iv
  %0 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp eq i8* %0, %addr
  br i1 %cmp1, label %if.end26, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.early_iounmap, i64 0, i64 0), i8* noundef %addr, i64 noundef %size) #4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 180; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !10
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv to i32
  %idxprom28190 = and i64 %indvars.iv, 4294967295
  %arrayidx29 = getelementptr [7 x i64], [7 x i64]* @prev_size, i64 0, i64 %idxprom28190
  %2 = load i64, i64* %arrayidx29, align 8
  %cmp30.not = icmp eq i64 %2, %size
  br i1 %cmp30.not, label %if.end67, label %do.end48, !prof !7

do.end48:                                         ; preds = %if.end26
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.early_iounmap, i64 0, i64 0), i8* noundef %addr, i64 noundef %size, i32 noundef %1, i64 noundef %2) #4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 185; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !11
  br label %cleanup

if.end67:                                         ; preds = %if.end26
  %.b186 = load i1, i1* @early_ioremap_debug, align 4
  br i1 %.b186, label %do.end86, label %if.end92, !prof !12

do.end86:                                         ; preds = %if.end67
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.early_iounmap, i64 0, i64 0), i8* noundef %addr, i64 noundef %size, i32 noundef %1) #4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 189; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !13
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.end67
  %cmp102 = icmp ult i8* %addr, inttoptr (i64 -8629534720 to i8*)
  br i1 %cmp102, label %if.then116, label %if.end128, !prof !12

if.then116:                                       ; preds = %if.end92
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 192; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !14
  br label %cleanup

if.end128:                                        ; preds = %if.end92
  %3 = ptrtoint i8* %addr to i64
  %and = and i64 %3, 4095
  %add = add i64 %size, 4095
  %add129 = add i64 %add, %and
  %shr = lshr i64 %add129, 12
  %conv131 = trunc i64 %shr to i32
  %cmp134.not193 = icmp eq i32 %conv131, 0
  br i1 %cmp134.not193, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end128
  %mul.neg = mul nsw i32 %1, -64
  %sub = add nsw i32 %mul.neg, 1476
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %nrpages.0196 = phi i32 [ %dec142, %while.body ], [ %conv131, %while.body.preheader ]
  %idx.0194 = phi i32 [ %dec, %while.body ], [ %sub, %while.body.preheader ]
  call void @__set_fixmap(i32 noundef %idx.0194, i64 noundef 0, i64 0) #4
  %dec = add i32 %idx.0194, -1
  %dec142 = add i32 %nrpages.0196, -1
  %cmp134.not = icmp eq i32 %dec142, 0
  br i1 %cmp134.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end128
  %arrayidx144 = getelementptr [7 x i8*], [7 x i8*]* @prev_map, i64 0, i64 %idxprom28190
  store i8* null, i8** %arrayidx144, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %do.end48, %do.end, %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fixmap(i32 noundef, i64 noundef, i64) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @early_ioremap(i64 noundef %phys_addr, i64 noundef %size) local_unnamed_addr #1 section ".init.text" {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !15
  %tobool.not = icmp eq i8 %0, 0
  %or4 = select i1 %tobool.not, i64 29273397577910035, i64 29273397577912083
  %call = call fastcc i8* @__early_ioremap(i64 noundef %phys_addr, i64 noundef %size, i64 %or4) #5
  ret i8* %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i8* @__early_ioremap(i64 noundef %phys_addr, i64 noundef %size, i64 %prot.coerce) unnamed_addr #1 section ".init.text" {
entry:
  %phys_addr.addr = alloca i64, align 8
  store i64 %phys_addr, i64* %phys_addr.addr, align 8
  %0 = load i32, i32* @system_state, align 4
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %if.then, label %for.body.preheader, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 109; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !16
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [7 x i8*], [7 x i8*]* @prev_map, i64 0, i64 %indvars.iv
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool16.not = icmp eq i8* %1, null
  br i1 %tobool16.not, label %if.end52, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %do.end, label %for.body

do.end:                                           ; preds = %for.inc
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__early_ioremap, i64 0, i64 0), i64* noundef nonnull %phys_addr.addr, i64 noundef %size) #4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 120; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !17
  br label %cleanup

if.end52:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  %add = add i64 %phys_addr, %size
  %sub = add i64 %add, -1
  %tobool54.not = icmp eq i64 %size, 0
  %cmp55 = icmp ult i64 %sub, %phys_addr
  %3 = or i1 %tobool54.not, %cmp55
  br i1 %3, label %if.then69, label %if.end81, !prof !12

if.then69:                                        ; preds = %if.end52
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 125; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !18
  br label %cleanup

if.end81:                                         ; preds = %if.end52
  %idxprom82219 = and i64 %indvars.iv, 4294967295
  %arrayidx83 = getelementptr [7 x i64], [7 x i64]* @prev_size, i64 0, i64 %idxprom82219
  store i64 %size, i64* %arrayidx83, align 8
  %and = and i64 %phys_addr, 4095
  %and84 = and i64 %phys_addr, -4096
  store i64 %and84, i64* %phys_addr.addr, align 8
  %add86 = add i64 %add, 4095
  %and87 = and i64 %add86, -4096
  %sub88 = sub i64 %and87, %and84
  %4 = and i64 %sub88, 17592186040320
  %cmp92 = icmp ugt i64 %4, 262144
  br i1 %cmp92, label %if.then106, label %if.end118, !prof !12

if.then106:                                       ; preds = %if.end81
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 140; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !19
  br label %cleanup

if.end118:                                        ; preds = %if.end81
  %shr = lshr exact i64 %sub88, 12
  %conv89 = trunc i64 %shr to i32
  %cmp122.not222 = icmp eq i32 %conv89, 0
  br i1 %cmp122.not222, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end118
  %mul.neg = mul nsw i32 %2, -64
  %sub120 = add nsw i32 %mul.neg, 1476
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %5 = phi i64 [ %add129, %while.body ], [ %and84, %while.body.preheader ]
  %nrpages.0225 = phi i32 [ %dec130, %while.body ], [ %conv89, %while.body.preheader ]
  %idx.0223 = phi i32 [ %dec, %while.body ], [ %sub120, %while.body.preheader ]
  call void @__set_fixmap(i32 noundef %idx.0223, i64 noundef %5, i64 %prot.coerce) #4
  %add129 = add i64 %5, 4096
  store i64 %add129, i64* %phys_addr.addr, align 8
  %dec = add i32 %idx.0223, -1
  %dec130 = add i32 %nrpages.0225, -1
  %cmp122.not = icmp eq i32 %dec130, 0
  br i1 %cmp122.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end118
  %.b216 = load i1, i1* @early_ioremap_debug, align 4
  br i1 %.b216, label %do.end149, label %if.end157, !prof !12

do.end149:                                        ; preds = %while.end
  %arrayidx151 = getelementptr [7 x i64], [7 x i64]* @slot_virt, i64 0, i64 %idxprom82219
  %6 = load i64, i64* %arrayidx151, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.__early_ioremap, i64 0, i64 0), i64* noundef nonnull %phys_addr.addr, i64 noundef %sub88, i32 noundef %2, i64 noundef %and, i64 noundef %6) #4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/early_ioremap.c\22; .popsection; .long 14472b - 14470b; .short 157; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #3, !srcloc !20
  br label %if.end157

if.end157:                                        ; preds = %do.end149, %while.end
  %arrayidx167 = getelementptr [7 x i64], [7 x i64]* @slot_virt, i64 0, i64 %idxprom82219
  %7 = load i64, i64* %arrayidx167, align 8
  %add168 = add i64 %7, %and
  %8 = inttoptr i64 %add168 to i8*
  %arrayidx170 = getelementptr [7 x i8*], [7 x i8*]* @prev_map, i64 0, i64 %idxprom82219
  store i8* %8, i8** %arrayidx170, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then106, %if.then69, %do.end, %if.end157
  %retval.0 = phi i8* [ %8, %if.end157 ], [ null, %do.end ], [ null, %if.then69 ], [ null, %if.then106 ]
  ret i8* %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @early_memremap(i64 noundef %phys_addr, i64 noundef %size) local_unnamed_addr #1 section ".init.text" {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !15
  %tobool.not = icmp eq i8 %0, 0
  %or3 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %call = call i64 @early_memremap_pgprot_adjust(i64 noundef %phys_addr, i64 noundef %size, i64 %or3) #5
  %call7 = call fastcc i8* @__early_ioremap(i64 noundef %phys_addr, i64 noundef %size, i64 %call) #5
  ret i8* %call7
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i8* @early_memremap_ro(i64 noundef %phys_addr, i64 noundef %size) local_unnamed_addr #1 section ".init.text" {
entry:
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !15
  %tobool.not = icmp eq i8 %0, 0
  %or5 = select i1 %tobool.not, i64 27021597764224899, i64 27021597764226947
  %call = call i64 @early_memremap_pgprot_adjust(i64 noundef %phys_addr, i64 noundef %size, i64 %or5) #5
  %call8 = call fastcc i8* @__early_ioremap(i64 noundef %phys_addr, i64 noundef %size, i64 %call) #5
  ret i8* %call8
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @copy_from_early_mem(i8* noundef %dest, i64 noundef %src, i64 noundef %size) local_unnamed_addr #1 section ".init.text" {
entry:
  %tobool.not27 = icmp eq i64 %size, 0
  br i1 %tobool.not27, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %size.addr.030 = phi i64 [ %sub7, %while.body ], [ %size, %entry ]
  %src.addr.029 = phi i64 [ %add6, %while.body ], [ %src, %entry ]
  %dest.addr.028 = phi i8* [ %add.ptr5, %while.body ], [ %dest, %entry ]
  %and = and i64 %src.addr.029, 4095
  %sub = sub nuw nsw i64 262144, %and
  %cmp = icmp ugt i64 %size.addr.030, %sub
  %spec.select = select i1 %cmp, i64 %sub, i64 %size.addr.030
  %and2 = and i64 %src.addr.029, -4096
  %add = add nuw nsw i64 %spec.select, %and
  %call = call i8* @early_memremap(i64 noundef %and2, i64 noundef %add) #5
  %add.ptr = getelementptr i8, i8* %call, i64 %and
  %call3 = call i8* @memcpy(i8* noundef %dest.addr.028, i8* noundef %add.ptr, i64 noundef %spec.select) #4
  call void @early_memunmap(i8* noundef %call, i64 noundef %add) #6
  %add.ptr5 = getelementptr i8, i8* %dest.addr.028, i64 %spec.select
  %add6 = add i64 %spec.select, %src.addr.029
  %sub7 = sub i64 %size.addr.030, %spec.select
  %tobool.not = icmp eq i64 %sub7, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @early_memunmap(i8* noundef %addr, i64 noundef %size) local_unnamed_addr #1 section ".init.text" {
entry:
  call void @early_iounmap(i8* noundef %addr, i64 noundef %size) #5
  ret void
}

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { cold nobuiltin "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2152904787}
!9 = !{i64 2152908152}
!10 = !{i64 2152925004}
!11 = !{i64 2152927064}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2152929040}
!14 = !{i64 2152934744}
!15 = !{i8 0, i8 2}
!16 = !{i64 2152914490}
!17 = !{i64 2152916444}
!18 = !{i64 2152918089}
!19 = !{i64 2152920557}
!20 = !{i64 2152922843}
