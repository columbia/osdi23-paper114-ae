; ModuleID = 'kernel/time/time.c'
source_filename = "kernel/time/time.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timezone = type { i32, i32 }
%struct.pt_regs = type { %union.anon, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.timespec64 = type { i64, i64 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.old_timespec32 = type { i32, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.__kernel_itimerspec = type { %struct.__kernel_timespec, %struct.__kernel_timespec }
%struct.old_itimerspec32 = type { %struct.old_timespec32, %struct.old_timespec32 }

@do_sys_settimeofday64.firsttime = internal unnamed_addr global i1 false, align 4
@sys_tz = dso_local global %struct.timezone zeroinitializer, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_gettimeofday(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_gettimeofday(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_gettimeofday(i64 noundef %tv, i64 noundef %tz) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %tv to %struct.__kernel_old_timeval*
  %1 = inttoptr i64 %tz to %struct.timezone*
  %call = call fastcc i64 @__do_sys_gettimeofday(%struct.__kernel_old_timeval* noundef %0, %struct.timezone* noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_sys_settimeofday64(%struct.timespec64* noundef %tv, %struct.timezone* noundef %tz) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.timespec64* %tv, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc i1 @timespec64_valid_settod(%struct.timespec64* noundef nonnull %tv) #8
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call1 = call fastcc i32 @security_settime64(%struct.timespec64* noundef %tv, %struct.timezone* noundef %tz) #8
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq %struct.timezone* %tz, null
  br i1 %tobool5.not, label %if.end17, label %if.then6

if.then6:                                         ; preds = %if.end4
  %tz_minuteswest = getelementptr inbounds %struct.timezone, %struct.timezone* %tz, i64 0, i32 0
  %0 = load i32, i32* %tz_minuteswest, align 4
  %1 = add i32 %0, -901
  %2 = icmp ult i32 %1, -1801
  br i1 %2, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then6
  %3 = bitcast %struct.timezone* %tz to i64*
  %4 = load i64, i64* %3, align 4
  store i64 %4, i64* bitcast (%struct.timezone* @sys_tz to i64*), align 8
  call void @update_vsyscall_tz() #9
  %.b = load i1, i1* @do_sys_settimeofday64.firsttime, align 4
  br i1 %.b, label %if.end17, label %if.then12

if.then12:                                        ; preds = %if.end10
  store i1 true, i1* @do_sys_settimeofday64.firsttime, align 4
  br i1 %tobool.not, label %if.end17.thread, label %if.then19

if.end17.thread:                                  ; preds = %if.then12
  call void @timekeeping_warp_clock() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end10, %if.end4
  br i1 %tobool.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.then12, %if.end17
  %call20 = call i32 @do_settimeofday64(%struct.timespec64* noundef nonnull %tv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17.thread, %if.end17, %if.then6, %if.end, %land.lhs.true, %if.then19
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ -22, %land.lhs.true ], [ %call1, %if.end ], [ -22, %if.then6 ], [ 0, %if.end17 ], [ 0, %if.end17.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid_settod(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #2 {
entry:
  %call = call fastcc i1 @timespec64_valid(%struct.timespec64* noundef %ts) #8
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp ult i64 %0, 8277292036
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_settime64(%struct.timespec64* noundef %ts, %struct.timezone* noundef %tz) unnamed_addr #0 {
entry:
  %call = call i32 @cap_settime(%struct.timespec64* noundef %ts, %struct.timezone* noundef %tz) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_vsyscall_tz() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_warp_clock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_settimeofday64(%struct.timespec64* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_settimeofday(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_settimeofday(i64 noundef %0, i64 noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_settimeofday(i64 noundef %tv, i64 noundef %tz) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %tv to %struct.__kernel_old_timeval*
  %1 = inttoptr i64 %tz to %struct.timezone*
  %call = call fastcc i64 @__do_sys_settimeofday(%struct.__kernel_old_timeval* noundef %0, %struct.timezone* noundef %1) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_adjtimex(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_adjtimex(i64 noundef %0) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_adjtimex(i64 noundef %txc_p) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %txc_p to %struct.__kernel_timex*
  %call = call fastcc i64 @__do_sys_adjtimex(%struct.__kernel_timex* noundef %0) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @jiffies_to_msecs(i64 noundef %j) local_unnamed_addr #4 {
entry:
  %j.tr = trunc i64 %j to i32
  %conv = shl i32 %j.tr, 2
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @jiffies_to_usecs(i64 noundef %j) local_unnamed_addr #4 {
entry:
  %0 = trunc i64 %j to i32
  %conv = mul i32 %0, 4000
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @mktime64(i32 noundef %year0, i32 noundef %mon0, i32 noundef %day, i32 noundef %hour, i32 noundef %min, i32 noundef %sec) local_unnamed_addr #4 {
entry:
  %sub = add i32 %mon0, -2
  %cmp = icmp slt i32 %sub, 1
  %add = add i32 %mon0, 10
  %mon.0 = select i1 %cmp, i32 %add, i32 %sub
  %sub1 = sext i1 %cmp to i32
  %year.0 = add i32 %sub1, %year0
  %div = lshr i32 %year.0, 2
  %div2 = udiv i32 %year.0, 100
  %div4 = udiv i32 %year.0, 400
  %mul = mul i32 %mon.0, 367
  %div6 = udiv i32 %mul, 12
  %sub3 = sub i32 %day, %div2
  %add5 = add i32 %sub3, %div
  %add7 = add i32 %add5, %div4
  %add8 = add i32 %add7, %div6
  %conv = zext i32 %add8 to i64
  %mul9 = mul i32 %year.0, 365
  %conv10 = zext i32 %mul9 to i64
  %add11 = add nuw nsw i64 %conv, %conv10
  %0 = mul nuw nsw i64 %add11, 24
  %conv14 = zext i32 %hour to i64
  %mul13 = add nsw i64 %conv14, -17267976
  %add15 = add nsw i64 %mul13, %0
  %mul16 = mul nsw i64 %add15, 60
  %conv17 = zext i32 %min to i64
  %add18 = add nsw i64 %mul16, %conv17
  %mul19 = mul nsw i64 %add18, 60
  %conv20 = zext i32 %sec to i64
  %add21 = add nsw i64 %mul19, %conv20
  ret i64 %add21
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local [2 x i64] @ns_to_kernel_old_timeval(i64 noundef %nsec) local_unnamed_addr #5 {
entry:
  %call = call [2 x i64] @ns_to_timespec64(i64 noundef %nsec) #8
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  %div = sdiv i64 %call.fca.1.extract, 1000
  %.fca.1.insert = insertvalue [2 x i64] %call, i64 %div, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local [2 x i64] @ns_to_timespec64(i64 noundef %nsec) local_unnamed_addr #5 {
entry:
  %rem = alloca i32, align 4
  %0 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %rem, align 4, !annotation !7
  %cmp = icmp sgt i64 %nsec, 0
  br i1 %cmp, label %if.then, label %if.else, !prof !8

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @div_u64_rem(i64 noundef %nsec, i32 noundef 1000000000, i32* noundef nonnull %rem) #8
  %1 = load i32, i32* %rem, align 4
  %conv2 = sext i32 %1 to i64
  br label %if.end15

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i64 %nsec, 0
  br i1 %cmp3, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.else
  %sub6 = xor i64 %nsec, -1
  %call7 = call fastcc i64 @div_u64_rem(i64 noundef %sub6, i32 noundef 1000000000, i32* noundef nonnull %rem) #8
  %sub9 = xor i64 %call7, -1
  %2 = load i32, i32* %rem, align 4
  %conv11 = sext i32 %2 to i64
  %sub13 = sub nsw i64 999999999, %conv11
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5, %if.then
  %retval.sroa.4.0 = phi i64 [ %conv2, %if.then ], [ %sub13, %if.then5 ], [ 0, %if.else ]
  %retval.sroa.0.0 = phi i64 [ %call, %if.then ], [ %sub9, %if.then5 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %retval.sroa.0.0, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %retval.sroa.4.0, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_normalized_timespec64(%struct.timespec64* nocapture noundef writeonly %ts, i64 noundef %sec, i64 noundef %nsec) local_unnamed_addr #0 {
entry:
  %nsec.addr = alloca i64, align 8
  store i64 %nsec, i64* %nsec.addr, align 8
  %cmp9 = icmp sgt i64 %nsec, 999999999
  br i1 %cmp9, label %while.body, label %while.cond1thread-pre-split

while.body:                                       ; preds = %entry, %while.body
  %sec.addr.010 = phi i64 [ %inc, %while.body ], [ %sec, %entry ]
  %0 = phi i64 [ %sub, %while.body ], [ %nsec, %entry ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %nsec.addr, i64 %0) #10, !srcloc !9
  %1 = load i64, i64* %nsec.addr, align 8
  %sub = add i64 %1, -1000000000
  store i64 %sub, i64* %nsec.addr, align 8
  %inc = add i64 %sec.addr.010, 1
  %cmp = icmp sgt i64 %sub, 999999999
  br i1 %cmp, label %while.body, label %while.cond1thread-pre-split

while.cond1thread-pre-split:                      ; preds = %while.body, %entry
  %.pr = phi i64 [ %nsec, %entry ], [ %sub, %while.body ]
  %sec.addr.0.lcssa = phi i64 [ %sec, %entry ], [ %inc, %while.body ]
  %cmp211 = icmp slt i64 %.pr, 0
  br i1 %cmp211, label %while.body3, label %while.end4

while.body3:                                      ; preds = %while.cond1thread-pre-split, %while.body3
  %sec.addr.112 = phi i64 [ %dec, %while.body3 ], [ %sec.addr.0.lcssa, %while.cond1thread-pre-split ]
  %2 = phi i64 [ %add, %while.body3 ], [ %.pr, %while.cond1thread-pre-split ]
  call void asm "", "=*rm,0"(i64* nonnull elementtype(i64) %nsec.addr, i64 %2) #10, !srcloc !10
  %3 = load i64, i64* %nsec.addr, align 8
  %add = add i64 %3, 1000000000
  store i64 %add, i64* %nsec.addr, align 8
  %dec = add i64 %sec.addr.112, -1
  %cmp2 = icmp slt i64 %add, 0
  br i1 %cmp2, label %while.body3, label %while.end4

while.end4:                                       ; preds = %while.body3, %while.cond1thread-pre-split
  %.lcssa = phi i64 [ %.pr, %while.cond1thread-pre-split ], [ %add, %while.body3 ]
  %sec.addr.1.lcssa = phi i64 [ %sec.addr.0.lcssa, %while.cond1thread-pre-split ], [ %dec, %while.body3 ]
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %sec.addr.1.lcssa, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %.lcssa, i64* %tv_nsec, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #7 {
entry:
  %conv = zext i32 %divisor to i64
  %div = udiv i64 %dividend, %conv
  %0 = mul i64 %div, %conv
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @__msecs_to_jiffies(i32 noundef %m) local_unnamed_addr #4 {
entry:
  %cmp = icmp slt i32 %m, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i64 @_msecs_to_jiffies(i32 noundef %m) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 4611686018427387902, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @_msecs_to_jiffies(i32 noundef %m) unnamed_addr #4 {
entry:
  %conv = zext i32 %m to i64
  %sub = add nuw nsw i64 %conv, 3
  %div = lshr i64 %sub, 2
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @__usecs_to_jiffies(i32 noundef %u) local_unnamed_addr #4 {
entry:
  %call = call i32 @jiffies_to_usecs(i64 noundef 4611686018427387902) #8
  %cmp = icmp ult i32 %call, %u
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i64 @_usecs_to_jiffies(i32 noundef %u) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 4611686018427387902, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @_usecs_to_jiffies(i32 noundef %u) unnamed_addr #4 {
entry:
  %conv = zext i32 %u to i64
  %sub = add nuw nsw i64 %conv, 3999
  %div = udiv i64 %sub, 4000
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @timespec64_to_jiffies(%struct.timespec64* nocapture noundef readonly %value) local_unnamed_addr #2 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %value, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %value, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp = icmp ugt i64 %0, 2199023254
  %.op = mul nuw nsw i64 %0, 4194304000
  %2 = mul i64 %1, 2251799814
  %sub.op = add i64 %2, 9007197004200186
  %sub.op.op = lshr i64 %sub.op, 29
  %3 = add i64 %sub.op.op, %.op
  %.op9 = lshr i64 %3, 24
  %shr3 = select i1 %cmp, i64 549755813750, i64 %.op9
  ret i64 %shr3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @jiffies_to_timespec64(i64 noundef %jiffies, %struct.timespec64* nocapture noundef writeonly %value) local_unnamed_addr #5 {
entry:
  %rem = alloca i32, align 4
  %0 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 0, i32* %rem, align 4, !annotation !7
  %mul = mul i64 %jiffies, 4000000
  %call = call fastcc i64 @div_u64_rem(i64 noundef %mul, i32 noundef 1000000000, i32* noundef nonnull %rem) #8
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %value, i64 0, i32 0
  store i64 %call, i64* %tv_sec, align 8
  %1 = load i32, i32* %rem, align 4
  %conv = zext i32 %1 to i64
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %value, i64 0, i32 1
  store i64 %conv, i64* %tv_nsec, align 8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @jiffies_to_clock_t(i64 noundef %x) local_unnamed_addr #5 {
entry:
  %mul = mul i64 %x, 4000000
  %call = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef 10000000) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) unnamed_addr #5 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* noundef nonnull %remainder) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @clock_t_to_jiffies(i64 noundef %x) local_unnamed_addr #5 {
entry:
  %cmp = icmp ugt i64 %x, 7378697629483820599
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %mul = mul i64 %x, 250
  %call = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef 100) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @jiffies_64_to_clock_t(i64 noundef %x) local_unnamed_addr #5 {
entry:
  %mul = mul i64 %x, 4000000
  %call = call fastcc i64 @div_u64(i64 noundef %mul, i32 noundef 10000000) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @nsec_to_clock_t(i64 noundef %x) local_unnamed_addr #5 {
entry:
  %call = call fastcc i64 @div_u64(i64 noundef %x, i32 noundef 10000000) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @jiffies64_to_nsecs(i64 noundef %j) local_unnamed_addr #4 {
entry:
  %mul = mul i64 %j, 4000000
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i64 @jiffies64_to_msecs(i64 noundef %j) local_unnamed_addr #4 {
entry:
  %mul = shl i64 %j, 2
  ret i64 %mul
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @nsecs_to_jiffies64(i64 noundef %n) local_unnamed_addr #5 {
entry:
  %call = call fastcc i64 @div_u64(i64 noundef %n, i32 noundef 4000000) #8
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local i64 @nsecs_to_jiffies(i64 noundef %n) local_unnamed_addr #5 {
entry:
  %call = call i64 @nsecs_to_jiffies64(i64 noundef %n) #8
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local [2 x i64] @timespec64_add_safe([2 x i64] %lhs.coerce, [2 x i64] %rhs.coerce) local_unnamed_addr #0 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %lhs.coerce.fca.0.extract = extractvalue [2 x i64] %lhs.coerce, 0
  %lhs.coerce.fca.1.extract = extractvalue [2 x i64] %lhs.coerce, 1
  %rhs.coerce.fca.0.extract = extractvalue [2 x i64] %rhs.coerce, 0
  %rhs.coerce.fca.1.extract = extractvalue [2 x i64] %rhs.coerce, 1
  %0 = bitcast %struct.timespec64* %retval to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %add = add i64 %rhs.coerce.fca.0.extract, %lhs.coerce.fca.0.extract
  %add3 = add i64 %rhs.coerce.fca.1.extract, %lhs.coerce.fca.1.extract
  call void @set_normalized_timespec64(%struct.timespec64* noundef nonnull %retval, i64 noundef %add, i64 noundef %add3) #8
  %tv_sec4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 0
  %1 = load i64, i64* %tv_sec4, align 8
  %cmp = icmp slt i64 %1, %lhs.coerce.fca.0.extract
  %cmp8 = icmp slt i64 %1, %rhs.coerce.fca.0.extract
  %2 = select i1 %cmp, i1 true, i1 %cmp8, !prof !11
  br i1 %2, label %if.then, label %entry.if.end_crit_edge, !prof !11

entry.if.end_crit_edge:                           ; preds = %entry
  %.phi.trans.insert = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 1
  %.fca.1.load.pre = load i64, i64* %.phi.trans.insert, align 8
  br label %if.end

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %tv_sec4, align 8
  %tv_nsec11 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %retval, i64 0, i32 1
  store i64 0, i64* %tv_nsec11, align 8
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %.fca.1.load = phi i64 [ 0, %if.then ], [ %.fca.1.load.pre, %entry.if.end_crit_edge ]
  %.fca.0.load = phi i64 [ 9223372036854775807, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_timespec64(%struct.timespec64* nocapture noundef writeonly %ts, %struct.__kernel_timespec* noundef %uts) local_unnamed_addr #0 {
entry:
  %kts = alloca %struct.__kernel_timespec, align 8
  %0 = bitcast %struct.__kernel_timespec* %kts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast %struct.__kernel_timespec* %uts to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 16) #9
  %conv = trunc i64 %call2.i to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, %struct.__kernel_timespec* %kts, i64 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  store i64 %2, i64* %tv_sec1, align 8
  %tv_nsec5 = getelementptr inbounds %struct.__kernel_timespec, %struct.__kernel_timespec* %kts, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec5, align 8
  %tv_nsec6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  store i64 %3, i64* %tv_nsec6, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @put_timespec64(%struct.timespec64* nocapture noundef readonly %ts, %struct.__kernel_timespec* noundef %uts) local_unnamed_addr #0 {
entry:
  %kts = alloca %struct.__kernel_timespec, align 8
  %0 = bitcast %struct.__kernel_timespec* %kts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, %struct.__kernel_timespec* %kts, i64 0, i32 0
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8
  store i64 %1, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, %struct.__kernel_timespec* %kts, i64 0, i32 1
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec2, align 8
  store i64 %2, i64* %tv_nsec, align 8
  %3 = bitcast %struct.__kernel_timespec* %uts to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %0, i64 noundef 16) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_old_timespec32(%struct.timespec64* nocapture noundef writeonly %ts, i8* noundef %uts) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %uts to %struct.old_timespec32*
  %call = call fastcc i32 @__get_old_timespec32(%struct.timespec64* noundef %ts, %struct.old_timespec32* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__get_old_timespec32(%struct.timespec64* nocapture noundef writeonly %ts64, %struct.old_timespec32* noundef %cts) unnamed_addr #0 {
entry:
  %ts = alloca i64, align 8, !annotation !7
  %0 = bitcast i64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i64 0, i64* %ts, align 8, !annotation !7
  %1 = bitcast %struct.old_timespec32* %cts to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 8) #9
  %conv = trunc i64 %call2.i to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tmpcast = bitcast i64* %ts to %struct.old_timespec32*, !annotation !7
  %tv_sec = bitcast i64* %ts to i32*
  %2 = load i32, i32* %tv_sec, align 8
  %conv1 = sext i32 %2 to i64
  %tv_sec2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts64, i64 0, i32 0
  store i64 %conv1, i64* %tv_sec2, align 8
  %tv_nsec = getelementptr inbounds %struct.old_timespec32, %struct.old_timespec32* %tmpcast, i64 0, i32 1
  %3 = load i32, i32* %tv_nsec, align 4
  %conv3 = sext i32 %3 to i64
  %tv_nsec4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts64, i64 0, i32 1
  store i64 %conv3, i64* %tv_nsec4, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @put_old_timespec32(%struct.timespec64* nocapture noundef readonly %ts, i8* noundef %uts) local_unnamed_addr #0 {
entry:
  %0 = bitcast i8* %uts to %struct.old_timespec32*
  %call = call fastcc i32 @__put_old_timespec32(%struct.timespec64* noundef %ts, %struct.old_timespec32* noundef %0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__put_old_timespec32(%struct.timespec64* nocapture noundef readonly %ts64, %struct.old_timespec32* noundef %cts) unnamed_addr #0 {
entry:
  %ts = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %ts to %struct.old_timespec32*, !annotation !7
  %0 = bitcast i64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %tv_sec = bitcast i64* %ts to i32*
  %tv_sec1 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts64, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.old_timespec32, %struct.old_timespec32* %tmpcast, i64 0, i32 1
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts64, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec2, align 8
  %conv3 = trunc i64 %2 to i32
  store i32 %conv3, i32* %tv_nsec, align 4
  %3 = bitcast %struct.old_timespec32* %cts to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %0, i64 noundef 8) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_itimerspec64(%struct.itimerspec64* nocapture noundef writeonly %it, %struct.__kernel_itimerspec* noundef %uit) local_unnamed_addr #0 {
entry:
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %it, i64 0, i32 0
  %it_interval1 = getelementptr inbounds %struct.__kernel_itimerspec, %struct.__kernel_itimerspec* %uit, i64 0, i32 0
  %call = call i32 @get_timespec64(%struct.timespec64* noundef %it_interval, %struct.__kernel_timespec* noundef %it_interval1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %it, i64 0, i32 1
  %it_value2 = getelementptr inbounds %struct.__kernel_itimerspec, %struct.__kernel_itimerspec* %uit, i64 0, i32 1
  %call3 = call i32 @get_timespec64(%struct.timespec64* noundef %it_value, %struct.__kernel_timespec* noundef %it_value2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @put_itimerspec64(%struct.itimerspec64* nocapture noundef readonly %it, %struct.__kernel_itimerspec* noundef %uit) local_unnamed_addr #0 {
entry:
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %it, i64 0, i32 0
  %it_interval1 = getelementptr inbounds %struct.__kernel_itimerspec, %struct.__kernel_itimerspec* %uit, i64 0, i32 0
  %call = call i32 @put_timespec64(%struct.timespec64* noundef %it_interval, %struct.__kernel_timespec* noundef %it_interval1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %it, i64 0, i32 1
  %it_value2 = getelementptr inbounds %struct.__kernel_itimerspec, %struct.__kernel_itimerspec* %uit, i64 0, i32 1
  %call3 = call i32 @put_timespec64(%struct.timespec64* noundef %it_value, %struct.__kernel_timespec* noundef %it_value2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @get_old_itimerspec32(%struct.itimerspec64* nocapture noundef writeonly %its, %struct.old_itimerspec32* noundef %uits) local_unnamed_addr #0 {
entry:
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %its, i64 0, i32 0
  %it_interval1 = getelementptr inbounds %struct.old_itimerspec32, %struct.old_itimerspec32* %uits, i64 0, i32 0
  %call = call fastcc i32 @__get_old_timespec32(%struct.timespec64* noundef %it_interval, %struct.old_timespec32* noundef %it_interval1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %its, i64 0, i32 1
  %it_value2 = getelementptr inbounds %struct.old_itimerspec32, %struct.old_itimerspec32* %uits, i64 0, i32 1
  %call3 = call fastcc i32 @__get_old_timespec32(%struct.timespec64* noundef %it_value, %struct.old_timespec32* noundef %it_value2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @put_old_itimerspec32(%struct.itimerspec64* nocapture noundef readonly %its, %struct.old_itimerspec32* noundef %uits) local_unnamed_addr #0 {
entry:
  %it_interval = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %its, i64 0, i32 0
  %it_interval1 = getelementptr inbounds %struct.old_itimerspec32, %struct.old_itimerspec32* %uits, i64 0, i32 0
  %call = call fastcc i32 @__put_old_timespec32(%struct.timespec64* noundef %it_interval, %struct.old_timespec32* noundef %it_interval1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %it_value = getelementptr inbounds %struct.itimerspec64, %struct.itimerspec64* %its, i64 0, i32 1
  %it_value2 = getelementptr inbounds %struct.old_itimerspec32, %struct.old_itimerspec32* %uits, i64 0, i32 1
  %call3 = call fastcc i32 @__put_old_timespec32(%struct.timespec64* noundef %it_value, %struct.old_timespec32* noundef %it_value2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_gettimeofday(%struct.__kernel_old_timeval* noundef %tv, %struct.timezone* noundef %tz) unnamed_addr #0 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %cmp.not = icmp eq %struct.__kernel_old_timeval* %tv, null
  br i1 %cmp.not, label %if.end39, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  call void @ktime_get_real_ts64(%struct.timespec64* noundef nonnull %ts) #9
  %1 = bitcast %struct.__kernel_old_timeval* %tv to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef nonnull %1, i64 noundef 8) #8
  %tobool2.not = icmp eq i64 %call, 0
  br i1 %tobool2.not, label %cleanup.thread, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %1) #8
  %2 = bitcast i8* %call4 to i64*
  %tv_sec8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %3 = load i64, i64* %tv_sec8, align 8
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %3, i64* %2, i32 -14, i32 0) #10, !srcloc !12
  %phi.cmp = icmp eq i32 %4, 0
  br i1 %phi.cmp, label %lor.lhs.false, label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.then3
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %tv, i64 0, i32 1
  %5 = bitcast i64* %tv_usec to i8*
  %call18 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 8) #8
  %tobool19.not = icmp eq i64 %call18, 0
  br i1 %tobool19.not, label %cleanup.thread, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false
  %call21 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #8
  %6 = bitcast i8* %call21 to i64*
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %7 = load i64, i64* %tv_nsec, align 8
  %div = sdiv i64 %7, 1000
  %8 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %div, i64* %6, i32 -14, i32 0) #10, !srcloc !13
  %phi.cmp70 = icmp eq i32 %8, 0
  br i1 %phi.cmp70, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false, %if.then, %if.then3, %if.then20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  br label %return

cleanup:                                          ; preds = %if.then20
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  br label %if.end39

if.end39:                                         ; preds = %cleanup, %entry
  %cmp40.not = icmp eq %struct.timezone* %tz, null
  br i1 %cmp40.not, label %if.end54, label %if.then49, !prof !8

if.then49:                                        ; preds = %if.end39
  %9 = bitcast %struct.timezone* %tz to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef nonnull %9, i8* noundef bitcast (%struct.timezone* @sys_tz to i8*), i64 noundef 8) #9
  %tobool51.not = icmp eq i64 %call2.i, 0
  br i1 %tobool51.not, label %if.end54, label %return

if.end54:                                         ; preds = %if.then49, %if.end39
  br label %return

return:                                           ; preds = %cleanup.thread, %if.then49, %if.end54
  %retval.1 = phi i64 [ 0, %if.end54 ], [ -14, %if.then49 ], [ -14, %cleanup.thread ]
  ret i64 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(%struct.timespec64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #10, !srcloc !14
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #10, !srcloc !15
  call void asm sideeffect "hint #20", "~{memory}"() #10, !srcloc !16
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @timespec64_valid(%struct.timespec64* nocapture noundef readonly %ts) unnamed_addr #2 {
entry:
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %cmp1 = icmp ult i64 %1, 1000000000
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_settime(%struct.timespec64* noundef, %struct.timezone* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_settimeofday(%struct.__kernel_old_timeval* noundef %tv, %struct.timezone* noundef %tz) unnamed_addr #0 {
entry:
  %new_ts = alloca %struct.timespec64, align 8
  %new_tz = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %new_tz to %struct.timezone*, !annotation !7
  %0 = bitcast %struct.timespec64* %new_ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %1 = bitcast i64* %new_tz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store i64 0, i64* %new_tz, align 8, !annotation !7
  %tobool.not = icmp eq %struct.__kernel_old_timeval* %tv, null
  br i1 %tobool.not, label %if.end50, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.__kernel_old_timeval* %tv to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef nonnull %2, i64 noundef 8) #8
  %tobool1.not = icmp eq i64 %call, 0
  br i1 %tobool1.not, label %cleanup, label %if.then2

if.then2:                                         ; preds = %if.then
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %2) #8
  %3 = bitcast i8* %call3 to i64*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %3, i32 -14, i32 0) #10, !srcloc !17
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult7 = extractvalue { i32, i64 } %4, 1
  %tv_sec8 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %new_ts, i64 0, i32 0
  store i64 %asmresult7, i64* %tv_sec8, align 8
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.then2
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, %struct.__kernel_old_timeval* %tv, i64 0, i32 1
  %5 = bitcast i64* %tv_usec to i8*
  %call19 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 8) #8
  %tobool20.not = icmp eq i64 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false
  %call22 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #8
  %6 = bitcast i8* %call22 to i64*
  %7 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:x}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i64* %6, i32 -14, i32 0) #10, !srcloc !18
  %asmresult27 = extractvalue { i32, i64 } %7, 0
  %asmresult28 = extractvalue { i32, i64 } %7, 1
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %new_ts, i64 0, i32 1
  %phi.cmp83 = icmp eq i32 %asmresult27, 0
  br i1 %phi.cmp83, label %if.end42, label %cleanup

if.end42:                                         ; preds = %if.then21
  %8 = icmp ugt i64 %asmresult28, 1000000
  br i1 %8, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end42
  %mul = mul nuw nsw i64 %asmresult28, 1000
  store i64 %mul, i64* %tv_nsec, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %entry
  %tobool51.not = icmp eq %struct.timezone* %tz, null
  br i1 %tobool51.not, label %if.end57, label %if.then52

if.then52:                                        ; preds = %if.end50
  %9 = bitcast %struct.timezone* %tz to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %1, i8* noundef nonnull %9, i64 noundef 8) #9
  %tobool54.not = icmp eq i64 %call2.i, 0
  br i1 %tobool54.not, label %if.end57, label %cleanup

if.end57:                                         ; preds = %if.then52, %if.end50
  %cond63 = phi %struct.timezone* [ %tmpcast, %if.then52 ], [ null, %if.end50 ]
  %new_ts. = select i1 %tobool.not, %struct.timespec64* null, %struct.timespec64* %new_ts
  %call64 = call i32 @do_sys_settimeofday64(%struct.timespec64* noundef %new_ts., %struct.timezone* noundef %cond63) #8
  %conv = sext i32 %call64 to i64
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then, %if.then52, %if.end42, %if.then2, %if.then21, %if.end57
  %retval.0 = phi i64 [ %conv, %if.end57 ], [ -14, %if.then21 ], [ -14, %if.then2 ], [ -22, %if.end42 ], [ -14, %if.then52 ], [ -14, %if.then ], [ -14, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_adjtimex(%struct.__kernel_timex* noundef %txc_p) unnamed_addr #0 {
entry:
  %txc = alloca %struct.__kernel_timex, align 8
  %0 = bitcast %struct.__kernel_timex* %txc to i8*
  call void @llvm.lifetime.start.p0i8(i64 208, i8* nonnull %0) #10
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false), !annotation !7
  %1 = bitcast %struct.__kernel_timex* %txc_p to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 208) #9
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @do_adjtimex(%struct.__kernel_timex* noundef nonnull %txc) #9
  %call2.i7 = call fastcc i64 @_copy_to_user(i8* noundef %1, i8* noundef nonnull %0, i64 noundef 208) #9
  %tobool3.not = icmp eq i64 %call2.i7, 0
  %2 = sext i32 %call1 to i64
  %conv = select i1 %tobool3.not, i64 %2, i64 -14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 208, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_adjtimex(%struct.__kernel_timex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #8
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !8

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #8
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #8
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #9
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

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
!9 = !{i64 12534}
!10 = !{i64 12615}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154920869, i64 2154920907, i64 2154920924, i64 2154920958, i64 2154920980, i64 2154921006, i64 2154921024, i64 2154921182, i64 2154921223, i64 2154921245, i64 2154921291}
!13 = !{i64 2154924855, i64 2154924893, i64 2154924910, i64 2154924944, i64 2154924966, i64 2154924992, i64 2154925010, i64 2154925168, i64 2154925209, i64 2154925231, i64 2154925277}
!14 = !{i64 4706412, i64 4706495, i64 4706719, i64 4706939, i64 4706962}
!15 = !{i64 4711114, i64 4711138}
!16 = !{i64 2152221892}
!17 = !{i64 2154938024, i64 2154938061, i64 2154938078, i64 2154938113, i64 2154938135, i64 2154938161, i64 2154938184, i64 2154938202, i64 2154938361, i64 2154938402, i64 2154938424, i64 2154938470}
!18 = !{i64 2154942201, i64 2154942238, i64 2154942255, i64 2154942290, i64 2154942312, i64 2154942338, i64 2154942361, i64 2154942379, i64 2154942538, i64 2154942579, i64 2154942601, i64 2154942647}
