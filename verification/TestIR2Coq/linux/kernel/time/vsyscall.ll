; ModuleID = 'kernel/time/vsyscall.c'
source_filename = "kernel/time/vsyscall.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timezone = type { i32, i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i64, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.tk_read_base = type { %struct.clocksource*, i64, i64, i32, i32, i64, i64, i64 }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i32, i64, i8*, %struct.list_head, i32, i32, i32, i64, i32 (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.timespec64 = type { i64, i64 }

@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@timekeeper_lock = external dso_local global %struct.raw_spinlock, align 4
@vdso_data = external dso_local local_unnamed_addr global %struct.vdso_data*, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @update_vsyscall(%struct.timekeeper* nocapture noundef readonly %tk) local_unnamed_addr #0 {
entry:
  %dividend.addr.i = alloca i64, align 8
  %0 = load %struct.vdso_data*, %struct.vdso_data** @vdso_data, align 8
  %seq.i = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 0
  %1 = load i32, i32* %seq.i, align 8
  %add.i = add i32 %1, 1
  store volatile i32 %add.i, i32* %seq.i, align 8
  %seq12.i = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 1, i32 0
  %2 = load i32, i32* %seq12.i, align 8
  %add13.i = add i32 %2, 1
  store volatile i32 %add13.i, i32* %seq12.i, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !7
  %clock = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 0
  %3 = load %struct.clocksource*, %struct.clocksource** %clock, align 8
  %vdso_clock_mode = getelementptr inbounds %struct.clocksource, %struct.clocksource* %3, i64 0, i32 12
  %4 = load i32, i32* %vdso_clock_mode, align 8
  %clock_mode1 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 1
  store i32 %4, i32* %clock_mode1, align 4
  %clock_mode3 = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 1, i32 1
  store i32 %4, i32* %clock_mode3, align 4
  %xtime_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 2
  %5 = load i64, i64* %xtime_sec, align 8
  %sec = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 6, i32 0, i64 0, i32 0
  store i64 %5, i64* %sec, align 8
  %xtime_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 5
  %6 = load i64, i64* %xtime_nsec, align 8
  %nsec7 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 6, i32 0, i64 0, i32 1
  store i64 %6, i64* %nsec7, align 8
  %7 = load i64, i64* %xtime_sec, align 8
  %sec12 = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 6, i32 0, i64 5, i32 0
  store i64 %7, i64* %sec12, align 8
  %8 = load i64, i64* %xtime_nsec, align 8
  %shift = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 4
  %9 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %8, %sh_prom
  %nsec16 = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 6, i32 0, i64 5, i32 1
  store i64 %shr, i64* %nsec16, align 8
  %10 = load i64, i64* %xtime_sec, align 8
  %tv_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 0
  %11 = load i64, i64* %tv_sec, align 8
  %add = add i64 %11, %10
  %sec21 = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 6, i32 0, i64 6, i32 0
  store i64 %add, i64* %sec21, align 8
  %12 = load i64, i64* %xtime_nsec, align 8
  %13 = load i32, i32* %shift, align 4
  %sh_prom26 = zext i32 %13 to i64
  %shr27 = lshr i64 %12, %sh_prom26
  %tv_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 1
  %14 = load i64, i64* %tv_nsec, align 8
  %add29 = add i64 %shr27, %14
  %nsec30 = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 6, i32 0, i64 6, i32 1
  %15 = bitcast i64* %dividend.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15)
  store i64 %add29, i64* %dividend.addr.i, align 8
  %cmp1.i = icmp ugt i64 %add29, 999999999
  br i1 %cmp1.i, label %while.body.i, label %__iter_div_u64_rem.exit

while.body.i:                                     ; preds = %entry, %while.body.i
  %ret.02.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %entry ]
  %16 = phi i64 [ %sub.i, %while.body.i ], [ %add29, %entry ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %dividend.addr.i, i64 %16) #6, !srcloc !8
  %17 = load i64, i64* %dividend.addr.i, align 8
  %sub.i = add i64 %17, -1000000000
  store i64 %sub.i, i64* %dividend.addr.i, align 8
  %inc.i = add i32 %ret.02.i, 1
  %cmp.i = icmp ugt i64 %sub.i, 999999999
  br i1 %cmp.i, label %while.body.i, label %__iter_div_u64_rem.exit.loopexit

__iter_div_u64_rem.exit.loopexit:                 ; preds = %while.body.i
  %phi.cast = zext i32 %inc.i to i64
  br label %__iter_div_u64_rem.exit

__iter_div_u64_rem.exit:                          ; preds = %__iter_div_u64_rem.exit.loopexit, %entry
  %.lcssa.i = phi i64 [ %add29, %entry ], [ %sub.i, %__iter_div_u64_rem.exit.loopexit ]
  %ret.0.lcssa.i = phi i64 [ 0, %entry ], [ %phi.cast, %__iter_div_u64_rem.exit.loopexit ]
  store i64 %.lcssa.i, i64* %nsec30, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15)
  %18 = load i64, i64* %sec21, align 8
  %add33 = add i64 %18, %ret.0.lcssa.i
  store i64 %add33, i64* %sec21, align 8
  %hrtimer_res = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 9
  store volatile i32 4000000, i32* %hrtimer_res, align 8
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %__iter_div_u64_rem.exit
  call fastcc void @update_vdso_data(%struct.vdso_data* noundef %0, %struct.timekeeper* noundef %tk) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %__iter_div_u64_rem.exit
  %mask.i = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 3
  store i64 72057594037927935, i64* %mask.i, align 8
  %mask2.i = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 1, i32 3
  store i64 72057594037927935, i64* %mask2.i, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !9
  %19 = load i32, i32* %seq.i, align 8
  %add.i78 = add i32 %19, 1
  store volatile i32 %add.i78, i32* %seq.i, align 8
  %20 = load i32, i32* %seq12.i, align 8
  %add13.i80 = add i32 %20, 1
  store volatile i32 %add13.i80, i32* %seq12.i, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @update_vdso_data(%struct.vdso_data* nocapture noundef %vdata, %struct.timekeeper* nocapture noundef readonly %tk) unnamed_addr #2 {
entry:
  %cycle_last = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 2
  %0 = load i64, i64* %cycle_last, align 8
  %cycle_last1 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 2
  store i64 %0, i64* %cycle_last1, align 8
  %mask = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 1
  %1 = load i64, i64* %mask, align 8
  %mask4 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 3
  store i64 %1, i64* %mask4, align 8
  %mult = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 3
  %2 = load i32, i32* %mult, align 8
  %mult7 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 4
  store i32 %2, i32* %mult7, align 8
  %shift = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 4
  %3 = load i32, i32* %shift, align 4
  %shift10 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 5
  store i32 %3, i32* %shift10, align 4
  %cycle_last11 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1, i32 2
  %4 = load i64, i64* %cycle_last11, align 8
  %cycle_last13 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 1, i32 2
  store i64 %4, i64* %cycle_last13, align 8
  %mask15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1, i32 1
  %5 = load i64, i64* %mask15, align 8
  %mask17 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 1, i32 3
  store i64 %5, i64* %mask17, align 8
  %mult19 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1, i32 3
  %6 = load i32, i32* %mult19, align 8
  %mult21 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 1, i32 4
  store i32 %6, i32* %mult21, align 8
  %shift23 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1, i32 4
  %7 = load i32, i32* %shift23, align 4
  %shift25 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 1, i32 5
  store i32 %7, i32* %shift25, align 4
  %xtime_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 2
  %8 = load i64, i64* %xtime_sec, align 8
  %tv_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 0
  %9 = load i64, i64* %tv_sec, align 8
  %add = add i64 %9, %8
  %sec28 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 6, i32 0, i64 1, i32 0
  store i64 %add, i64* %sec28, align 8
  %xtime_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 0, i32 5
  %10 = load i64, i64* %xtime_nsec, align 8
  %tv_nsec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 4, i32 1
  %11 = load i64, i64* %tv_nsec, align 8
  %12 = load i32, i32* %shift, align 4
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %11, %sh_prom
  %add33 = add i64 %shl, %10
  %shl37147 = shl i64 1000000000, %sh_prom
  %cmp.not148 = icmp ult i64 %add33, %shl37147
  br i1 %cmp.not148, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %13 = phi i64 [ %inc, %while.body ], [ %add, %entry ]
  %shl37150 = phi i64 [ %shl37, %while.body ], [ %shl37147, %entry ]
  %nsec.0149 = phi i64 [ %sub, %while.body ], [ %add33, %entry ]
  %sub = sub i64 %nsec.0149, %shl37150
  %inc = add i64 %13, 1
  store i64 %inc, i64* %sec28, align 8
  %14 = load i32, i32* %shift, align 4
  %sh_prom36 = zext i32 %14 to i64
  %shl37 = shl i64 1000000000, %sh_prom36
  %cmp.not = icmp ult i64 %sub, %shl37
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %15 = phi i64 [ %add, %entry ], [ %inc, %while.body ]
  %nsec.0.lcssa = phi i64 [ %add33, %entry ], [ %sub, %while.body ]
  %nsec43 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 6, i32 0, i64 1, i32 1
  store i64 %nsec.0.lcssa, i64* %nsec43, align 8
  %tv_sec45 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 13, i32 0
  %16 = load i64, i64* %tv_sec45, align 8
  %add46 = add i64 %16, %15
  %tv_nsec48 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 13, i32 1
  %17 = load i64, i64* %tv_nsec48, align 8
  %18 = load i32, i32* %shift, align 4
  %sh_prom51 = zext i32 %18 to i64
  %shl52 = shl i64 %17, %sh_prom51
  %add53 = add i64 %shl52, %nsec.0.lcssa
  %sec57 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 6, i32 0, i64 7, i32 0
  store i64 %add46, i64* %sec57, align 8
  %19 = load i32, i32* %shift, align 4
  %sh_prom61151 = zext i32 %19 to i64
  %shl62152 = shl i64 1000000000, %sh_prom61151
  %cmp63.not153 = icmp ult i64 %add53, %shl62152
  br i1 %cmp63.not153, label %while.end72, label %while.body64

while.body64:                                     ; preds = %while.end, %while.body64
  %shl62156 = phi i64 [ %shl62, %while.body64 ], [ %shl62152, %while.end ]
  %nsec.1155 = phi i64 [ %sub69, %while.body64 ], [ %add53, %while.end ]
  %storemerge154 = phi i64 [ %inc71, %while.body64 ], [ %add46, %while.end ]
  %sub69 = sub i64 %nsec.1155, %shl62156
  %inc71 = add i64 %storemerge154, 1
  store i64 %inc71, i64* %sec57, align 8
  %20 = load i32, i32* %shift, align 4
  %sh_prom61 = zext i32 %20 to i64
  %shl62 = shl i64 1000000000, %sh_prom61
  %cmp63.not = icmp ult i64 %sub69, %shl62
  br i1 %cmp63.not, label %while.end72, label %while.body64

while.end72:                                      ; preds = %while.body64, %while.end
  %nsec.1.lcssa = phi i64 [ %add53, %while.end ], [ %sub69, %while.body64 ]
  %nsec73 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 6, i32 0, i64 7, i32 1
  store i64 %nsec.1.lcssa, i64* %nsec73, align 8
  %raw_sec = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 12
  %21 = load i64, i64* %raw_sec, align 8
  %sec77 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 1, i32 6, i32 0, i64 4, i32 0
  store i64 %21, i64* %sec77, align 8
  %xtime_nsec79 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 1, i32 5
  %22 = load i64, i64* %xtime_nsec79, align 8
  %nsec80 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 1, i32 6, i32 0, i64 4, i32 1
  store i64 %22, i64* %nsec80, align 8
  %23 = load i64, i64* %xtime_sec, align 8
  %tai_offset = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %tk, i64 0, i32 8
  %24 = load i32, i32* %tai_offset, align 8
  %conv = sext i32 %24 to i64
  %add85 = add i64 %23, %conv
  %sec86 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 6, i32 0, i64 11, i32 0
  store i64 %add85, i64* %sec86, align 8
  %25 = load i64, i64* %xtime_nsec, align 8
  %nsec89 = getelementptr %struct.vdso_data, %struct.vdso_data* %vdata, i64 0, i32 6, i32 0, i64 11, i32 1
  store i64 %25, i64* %nsec89, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @update_vsyscall_tz() local_unnamed_addr #3 {
entry:
  %0 = load %struct.vdso_data*, %struct.vdso_data** @vdso_data, align 8
  %1 = load i32, i32* getelementptr inbounds (%struct.timezone, %struct.timezone* @sys_tz, i64 0, i32 0), align 4
  %tz_minuteswest = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 7
  store i32 %1, i32* %tz_minuteswest, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.timezone, %struct.timezone* @sys_tz, i64 0, i32 1), align 4
  %tz_dsttime = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 8
  store i32 %2, i32* %tz_dsttime, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @vdso_update_begin() local_unnamed_addr #0 {
entry:
  %0 = load %struct.vdso_data*, %struct.vdso_data** @vdso_data, align 8
  %call1 = call fastcc i64 @__raw_spin_lock_irqsave() #7
  %seq.i = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 0
  %1 = load i32, i32* %seq.i, align 8
  %add.i = add i32 %1, 1
  store volatile i32 %add.i, i32* %seq.i, align 8
  %seq12.i = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 1, i32 0
  %2 = load i32, i32* %seq12.i, align 8
  %add13.i = add i32 %2, 1
  store volatile i32 %add13.i, i32* %seq12.i, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !7
  ret i64 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #7
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags() #7
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vdso_update_end(i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %0 = load %struct.vdso_data*, %struct.vdso_data** @vdso_data, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !9
  %seq.i = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %0, i64 0, i32 0
  %1 = load i32, i32* %seq.i, align 8
  %add.i = add i32 %1, 1
  store volatile i32 %add.i, i32* %seq.i, align 8
  %seq12.i = getelementptr %struct.vdso_data, %struct.vdso_data* %0, i64 1, i32 0
  %2 = load i32, i32* %seq12.i, align 8
  %add13.i = add i32 %2, 1
  store volatile i32 %add13.i, i32* %seq12.i, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #7
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #7
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #7
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @timekeeper_lock, i64 0, i32 0), i32 noundef %call11.i.i.i.i) #8
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #6, !srcloc !13
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #6, !srcloc !14
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #7
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !15

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #6, !srcloc !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #4 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @timekeeper_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.raw_spinlock, %struct.raw_spinlock* @timekeeper_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #6, !srcloc !17
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.raw_spinlock* @timekeeper_lock to i8*), i8 0) #6, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #6, !srcloc !19
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2151817812}
!8 = !{i64 916654}
!9 = !{i64 2151818095}
!10 = !{i64 2149578258}
!11 = !{i64 2149604101}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149246242, i64 2149246289, i64 2149246295, i64 2149246332, i64 2149246350, i64 2149247661, i64 2149247709, i64 2149247757, i64 2149247820, i64 2149247869, i64 2149246428, i64 2149246453, i64 2149246479, i64 2149246485, i64 2149247327, i64 2149247367, i64 2149247385, i64 2149247417, i64 2149247445, i64 2149247499, i64 2149247519, i64 2149247616, i64 2149246508, i64 2149246522, i64 2149246528, i64 2149246578, i64 2149246624, i64 2149246657}
!14 = !{i64 2149248421, i64 2149248468, i64 2149248474, i64 2149248511, i64 2149248529, i64 2149249472, i64 2149249520, i64 2149249568, i64 2149249631, i64 2149249680, i64 2149248607, i64 2149248632, i64 2149248658, i64 2149248664, i64 2149248701, i64 2149248707, i64 2149248757, i64 2149248803, i64 2149248836}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2149236478, i64 2149236525, i64 2149236531, i64 2149236568, i64 2149236586, i64 2149241988, i64 2149242036, i64 2149242084, i64 2149242147, i64 2149242196, i64 2149236664, i64 2149236689, i64 2149236715, i64 2149236721, i64 2149241654, i64 2149241694, i64 2149241712, i64 2149241744, i64 2149241772, i64 2149241826, i64 2149241846, i64 2149241943, i64 2149236744, i64 2149236758, i64 2149236764, i64 2149236814, i64 2149236860, i64 2149236893}
!17 = !{i64 2147901080, i64 2147901113, i64 2147901166, i64 2147901225, i64 2147901259, i64 2147901314, i64 2147901343, i64 2147901363}
!18 = !{i64 2149547400}
!19 = !{i64 2149252255, i64 2149252302, i64 2149252308, i64 2149252345, i64 2149252363, i64 2149253674, i64 2149253722, i64 2149253770, i64 2149253833, i64 2149253882, i64 2149252441, i64 2149252466, i64 2149252492, i64 2149252498, i64 2149253340, i64 2149253380, i64 2149253398, i64 2149253430, i64 2149253458, i64 2149253512, i64 2149253532, i64 2149253629, i64 2149252521, i64 2149252535, i64 2149252541, i64 2149252591, i64 2149252637, i64 2149252670}
