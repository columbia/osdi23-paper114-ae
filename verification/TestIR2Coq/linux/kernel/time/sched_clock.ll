; ModuleID = 'kernel/time/sched_clock.c'
source_filename = "kernel/time/sched_clock.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_sched_clock__195_297_sched_clock_syscore_init6:\09\09\09"
module asm ".long\09sched_clock_syscore_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.clock_data = type { %struct.seqcount_latch_t, [2 x %struct.clock_read_data], i64, i64, i64 ()* }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.clock_read_data = type { i64, i64, i64, i64 ()*, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [8 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.syscore_ops = type { %struct.list_head, i32 ()*, void ()*, void ()* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@__param_str_irqtime = internal constant [8 x i8] c"irqtime\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@irqtime = internal global i32 -1, align 4
@__param_irqtime = internal constant %struct.kernel_param { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__param_str_irqtime, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 256, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @irqtime to i8*) } }, section "__param", align 8
@cd = internal global %struct.clock_data { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.clock_read_data] [%struct.clock_read_data { i64 0, i64 0, i64 0, i64 ()* @jiffy_sched_clock_read, i32 4000000, i32 0 }, %struct.clock_read_data zeroinitializer], i64 0, i64 0, i64 ()* @jiffy_sched_clock_read }, align 64
@sched_clock_timer = internal global %struct.hrtimer zeroinitializer, align 8
@.str = private unnamed_addr constant [74 x i8] c"\016sched_clock: %u bits at %lu%cHz, resolution %lluns, wraps every %lluns\0A\00", align 1
@__UNIQUE_ID___addressable_sched_clock_syscore_init196 = internal global i8* bitcast (i32 ()* @sched_clock_syscore_init to i8*), section ".discard.addressable", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@sched_clock_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, i32 ()* @sched_clock_suspend, void ()* @sched_clock_resume, void ()* null }, align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_sched_clock_syscore_init196 to i8*), i8* bitcast (%struct.kernel_param* @__param_irqtime to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local nonnull %struct.clock_read_data* @sched_clock_read_begin(i32* nocapture noundef writeonly %seq) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @raw_read_seqcount_latch() #8
  store i32 %call, i32* %seq, align 4
  %and = and i32 %call, 1
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr %struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 %idx.ext
  ret %struct.clock_read_data* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @raw_read_seqcount_latch() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 0, i32 0, i32 0), align 64
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_clock_read_retry(i32 noundef %seq) local_unnamed_addr #1 {
entry:
  %call = call fastcc i32 @read_seqcount_latch_retry(i32 noundef %seq) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqcount_latch_retry(i32 noundef %start) unnamed_addr #1 {
entry:
  %call1 = call fastcc i32 @do_read_seqcount_retry(i32 noundef %start) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @sched_clock() local_unnamed_addr #1 {
entry:
  %seq = alloca i32, align 4
  %0 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %seq, align 4, !annotation !7
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call = call %struct.clock_read_data* @sched_clock_read_begin(i32* noundef nonnull %seq) #8
  %read_sched_clock = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %call, i64 0, i32 3
  %1 = load i64 ()*, i64 ()** %read_sched_clock, align 8
  %call1 = call i64 %1() #10
  %epoch_cyc = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %call, i64 0, i32 1
  %2 = load i64, i64* %epoch_cyc, align 8
  %sched_clock_mask = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %call, i64 0, i32 2
  %3 = load i64, i64* %sched_clock_mask, align 8
  %epoch_ns = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %call, i64 0, i32 0
  %4 = load i64, i64* %epoch_ns, align 8
  %mult = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %call, i64 0, i32 4
  %5 = load i32, i32* %mult, align 8
  %shift = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %call, i64 0, i32 5
  %6 = load i32, i32* %shift, align 4
  %7 = load i32, i32* %seq, align 4
  %call3 = call i32 @sched_clock_read_retry(i32 noundef %7) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %sub = sub i64 %call1, %2
  %and = and i64 %sub, %3
  %call2 = call fastcc i64 @cyc_to_ns(i64 noundef %and, i32 noundef %5, i32 noundef %6) #8
  %add = add i64 %call2, %4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i64 %add
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @cyc_to_ns(i64 noundef %cyc, i32 noundef %mult, i32 noundef %shift) unnamed_addr #3 {
entry:
  %conv = zext i32 %mult to i64
  %mul = mul i64 %conv, %cyc
  %sh_prom = zext i32 %shift to i64
  %shr = lshr i64 %mul, %sh_prom
  ret i64 %shr
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @sched_clock_register(i64 ()* noundef %read, i32 noundef %bits, i64 noundef %rate) local_unnamed_addr #4 section ".init.text" {
entry:
  %new_mult = alloca i32, align 4
  %new_shift = alloca i32, align 4
  %rd = alloca %struct.clock_read_data, align 8
  %0 = bitcast i32* %new_mult to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %new_mult, align 4, !annotation !7
  %1 = bitcast i32* %new_shift to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %new_shift, align 4, !annotation !7
  %2 = bitcast %struct.clock_read_data* %rd to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #9
  %3 = load i64, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 3), align 32
  %cmp = icmp ugt i64 %3, %rate
  br i1 %cmp, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %call = call fastcc i64 @arch_local_irq_save() #8
  %conv5 = trunc i64 %rate to i32
  call void @clocks_calc_mult_shift(i32* noundef nonnull %new_mult, i32* noundef nonnull %new_shift, i32 noundef %conv5, i32 noundef 1000000000, i32 noundef 3600) #10
  %sub6 = sub i32 64, %bits
  %sh_prom = zext i32 %sub6 to i64
  %shr = lshr i64 -1, %sh_prom
  store i64 %rate, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 3), align 32
  %4 = load i32, i32* %new_mult, align 4
  %5 = load i32, i32* %new_shift, align 4
  %call7 = call i64 @clocks_calc_max_nsecs(i32 noundef %4, i32 noundef %5, i32 noundef 0, i64 noundef %shr, i64* noundef null) #10
  store i64 %call7, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 2), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef align 8 dereferenceable(40) bitcast (%struct.clock_read_data* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 0) to i8*), i64 40, i1 false)
  %call9 = call i64 %read() #10
  %6 = load i64 ()*, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 4), align 8
  %call10 = call i64 %6() #10
  %epoch_ns = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 0
  %7 = load i64, i64* %epoch_ns, align 8
  %epoch_cyc = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 1
  %8 = load i64, i64* %epoch_cyc, align 8
  %sub11 = sub i64 %call10, %8
  %sched_clock_mask = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 2
  %9 = load i64, i64* %sched_clock_mask, align 8
  %and12 = and i64 %sub11, %9
  %mult = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 4
  %10 = load i32, i32* %mult, align 8
  %shift = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 5
  %11 = load i32, i32* %shift, align 4
  %call13 = call fastcc i64 @cyc_to_ns(i64 noundef %and12, i32 noundef %10, i32 noundef %11) #8
  %add14 = add i64 %call13, %7
  store i64 ()* %read, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 4), align 8
  %read_sched_clock = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 3
  store i64 ()* %read, i64 ()** %read_sched_clock, align 8
  store i64 %shr, i64* %sched_clock_mask, align 8
  %12 = load i32, i32* %new_mult, align 4
  store i32 %12, i32* %mult, align 8
  %13 = load i32, i32* %new_shift, align 4
  store i32 %13, i32* %shift, align 4
  store i64 %call9, i64* %epoch_cyc, align 8
  store i64 %add14, i64* %epoch_ns, align 8
  call fastcc void @update_clock_read_data(%struct.clock_read_data* noundef nonnull %rd) #8
  %14 = load i32 (%struct.hrtimer*)*, i32 (%struct.hrtimer*)** getelementptr inbounds (%struct.hrtimer, %struct.hrtimer* @sched_clock_timer, i64 0, i32 2), align 8
  %cmp20.not = icmp eq i32 (%struct.hrtimer*)* %14, null
  br i1 %cmp20.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %do.body1
  %15 = load i64, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 2), align 8
  call fastcc void @hrtimer_start(i64 noundef %15) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.body1
  %cmp24 = icmp ugt i64 %rate, 3999999
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  %div = udiv i64 %rate, 1000000
  br label %if.end33

if.else:                                          ; preds = %if.end23
  %cmp27 = icmp ugt i64 %rate, 999
  br i1 %cmp27, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.else
  %div3096 = udiv i32 %conv5, 1000
  %div30.zext = zext i32 %div3096 to i64
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29, %if.then26
  %r.0 = phi i64 [ %div, %if.then26 ], [ %div30.zext, %if.then29 ], [ %rate, %if.else ]
  %r_unit.0 = phi i32 [ 77, %if.then26 ], [ 107, %if.then29 ], [ 32, %if.else ]
  %16 = load i32, i32* %new_mult, align 4
  %17 = load i32, i32* %new_shift, align 4
  %call34 = call fastcc i64 @cyc_to_ns(i64 noundef 1, i32 noundef %16, i32 noundef %17) #8
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 noundef %bits, i64 noundef %r.0, i32 noundef %r_unit.0, i64 noundef %call34, i64 noundef %call7) #11
  call fastcc void @arch_local_irq_restore(i64 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #8
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(i32* noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocks_calc_max_nsecs(i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_clock_read_data(%struct.clock_read_data* nocapture noundef readonly %rd) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.clock_read_data* %rd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 16 dereferenceable(40) bitcast (%struct.clock_read_data* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 1) to i8*), i8* noundef align 8 dereferenceable(40) %0, i64 40, i1 false)
  call fastcc void @raw_write_seqcount_latch() #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(40) bitcast (%struct.clock_read_data* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 0) to i8*), i8* noundef align 8 dereferenceable(40) %0, i64 40, i1 false)
  call fastcc void @raw_write_seqcount_latch() #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_start(i64 noundef %tim) unnamed_addr #1 {
entry:
  call void @hrtimer_start_range_ns(%struct.hrtimer* noundef nonnull @sched_clock_timer, i64 noundef %tim, i64 noundef 0, i32 noundef 9) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #9, !srcloc !8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @generic_sched_clock_init() local_unnamed_addr #4 section ".init.text" {
entry:
  %0 = load i64 ()*, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 4), align 8
  %cmp = icmp eq i64 ()* %0, @jiffy_sched_clock_read
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sched_clock_register(i64 ()* noundef nonnull @jiffy_sched_clock_read, i32 noundef 64, i64 noundef 250) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @update_sched_clock() #8
  call void @hrtimer_init(%struct.hrtimer* noundef nonnull @sched_clock_timer, i32 noundef 1, i32 noundef 9) #10
  store i32 (%struct.hrtimer*)* @sched_clock_poll, i32 (%struct.hrtimer*)** getelementptr inbounds (%struct.hrtimer, %struct.hrtimer* @sched_clock_timer, i64 0, i32 2), align 8
  %1 = load i64, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 2), align 8
  call fastcc void @hrtimer_start(i64 noundef %1) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i64 @jiffy_sched_clock_read() #0 {
entry:
  %0 = load volatile i64, i64* @jiffies, align 64
  %sub = add i64 %0, -4294892296
  ret i64 %sub
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @update_sched_clock() unnamed_addr #1 {
entry:
  %rd = alloca %struct.clock_read_data, align 8
  %0 = bitcast %struct.clock_read_data* %rd to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8* noundef align 8 dereferenceable(40) bitcast (%struct.clock_read_data* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 0) to i8*), i64 40, i1 false)
  %1 = load i64 ()*, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 4), align 8
  %call = call i64 %1() #10
  %epoch_ns = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 0
  %2 = load i64, i64* %epoch_ns, align 8
  %epoch_cyc = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 1
  %3 = load i64, i64* %epoch_cyc, align 8
  %sub = sub i64 %call, %3
  %sched_clock_mask = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 2
  %4 = load i64, i64* %sched_clock_mask, align 8
  %and = and i64 %sub, %4
  %mult = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 4
  %5 = load i32, i32* %mult, align 8
  %shift = getelementptr inbounds %struct.clock_read_data, %struct.clock_read_data* %rd, i64 0, i32 5
  %6 = load i32, i32* %shift, align 4
  %call1 = call fastcc i64 @cyc_to_ns(i64 noundef %and, i32 noundef %5, i32 noundef %6) #8
  %add = add i64 %call1, %2
  store i64 %add, i64* %epoch_ns, align 8
  store i64 %call, i64* %epoch_cyc, align 8
  call fastcc void @update_clock_read_data(%struct.clock_read_data* noundef nonnull %rd) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @sched_clock_poll(%struct.hrtimer* noundef %hrt) #1 {
entry:
  call fastcc void @update_sched_clock() #8
  %0 = load i64, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 2), align 8
  call fastcc void @hrtimer_forward_now(%struct.hrtimer* noundef %hrt, i64 noundef %0) #8
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sched_clock_suspend() #1 {
entry:
  call fastcc void @update_sched_clock() #8
  %call = call i32 @hrtimer_cancel(%struct.hrtimer* noundef nonnull @sched_clock_timer) #10
  store i64 ()* @suspended_sched_clock_read, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 0, i32 3), align 32
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(%struct.hrtimer* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i64 @suspended_sched_clock_read() #0 {
entry:
  %call = call fastcc i32 @raw_read_seqcount_latch() #8
  %and = and i32 %call, 1
  %idxprom = zext i32 %and to i64
  %epoch_cyc = getelementptr %struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 %idxprom, i32 1
  %0 = load i64, i64* %epoch_cyc, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @sched_clock_resume() #1 {
entry:
  %0 = load i64 ()*, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 4), align 8
  %call = call i64 %0() #10
  store i64 %call, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 0, i32 1), align 16
  %1 = load i64, i64* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 2), align 8
  call fastcc void @hrtimer_start(i64 noundef %1) #8
  %2 = load i64 ()*, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 4), align 8
  store i64 ()* %2, i64 ()** getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 1, i64 0, i32 3), align 32
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @sched_clock_syscore_init() #4 section ".init.text" {
entry:
  call void @register_syscore_ops(%struct.syscore_ops* noundef nonnull @sched_clock_ops) #10
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(i32 noundef %start) unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #9, !srcloc !9
  %call = call fastcc i32 @do___read_seqcount_retry(i32 noundef %start) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(i32 noundef %start) unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 0, i32 0, i32 0), align 64
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #9, !srcloc !10
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #9, !srcloc !11
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #9, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @raw_write_seqcount_latch() unnamed_addr #1 {
entry:
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !14
  %0 = load i32, i32* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 0, i32 0, i32 0), align 64
  %inc = add i32 %0, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.clock_data, %struct.clock_data* @cd, i64 0, i32 0, i32 0, i32 0), align 64
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(%struct.hrtimer* noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hrtimer_forward_now(%struct.hrtimer* noundef %timer, i64 noundef %interval) unnamed_addr #1 {
entry:
  %base = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %timer, i64 0, i32 3
  %0 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %base, align 8
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %0, i64 0, i32 6
  %1 = load i64 ()*, i64 ()** %get_time, align 16
  %call = call i64 %1() #10
  %call1 = call i64 @hrtimer_forward(%struct.hrtimer* noundef %timer, i64 noundef %call, i64 noundef %interval) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(%struct.hrtimer* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(%struct.syscore_ops* noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { cold nobuiltin nounwind "no-builtins" }
attributes #12 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2149229868, i64 2149229915, i64 2149229921, i64 2149229958, i64 2149229976, i64 2149231287, i64 2149231335, i64 2149231383, i64 2149231446, i64 2149231495, i64 2149230054, i64 2149230079, i64 2149230105, i64 2149230111, i64 2149230953, i64 2149230993, i64 2149231011, i64 2149231043, i64 2149231071, i64 2149231125, i64 2149231145, i64 2149231242, i64 2149230134, i64 2149230148, i64 2149230154, i64 2149230204, i64 2149230250, i64 2149230283}
!9 = !{i64 2150088365}
!10 = !{i64 2149223855, i64 2149223902, i64 2149223908, i64 2149223945, i64 2149223963, i64 2149225274, i64 2149225322, i64 2149225370, i64 2149225433, i64 2149225482, i64 2149224041, i64 2149224066, i64 2149224092, i64 2149224098, i64 2149224940, i64 2149224980, i64 2149224998, i64 2149225030, i64 2149225058, i64 2149225112, i64 2149225132, i64 2149225229, i64 2149224121, i64 2149224135, i64 2149224141, i64 2149224191, i64 2149224237, i64 2149224270}
!11 = !{i64 2149226034, i64 2149226081, i64 2149226087, i64 2149226124, i64 2149226142, i64 2149227085, i64 2149227133, i64 2149227181, i64 2149227244, i64 2149227293, i64 2149226220, i64 2149226245, i64 2149226271, i64 2149226277, i64 2149226314, i64 2149226320, i64 2149226370, i64 2149226416, i64 2149226449}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2149214091, i64 2149214138, i64 2149214144, i64 2149214181, i64 2149214199, i64 2149219601, i64 2149219649, i64 2149219697, i64 2149219760, i64 2149219809, i64 2149214277, i64 2149214302, i64 2149214328, i64 2149214334, i64 2149219267, i64 2149219307, i64 2149219325, i64 2149219357, i64 2149219385, i64 2149219439, i64 2149219459, i64 2149219556, i64 2149214357, i64 2149214371, i64 2149214377, i64 2149214427, i64 2149214473, i64 2149214506}
!14 = !{i64 2150101485}
!15 = !{i64 2150101557}
