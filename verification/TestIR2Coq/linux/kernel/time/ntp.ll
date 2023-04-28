; ModuleID = 'kernel/time/ntp.c'
source_filename = "kernel/time/ntp.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.timespec64 = type { i64, i64 }
%struct.audit_ntp_data = type {}

@tick_usec = dso_local local_unnamed_addr global i64 10000, align 8
@time_adjust = internal unnamed_addr global i64 0, align 8
@time_status = internal unnamed_addr global i32 64, align 4
@time_maxerror = internal unnamed_addr global i64 16000000, align 8
@time_esterror = internal unnamed_addr global i64 16000000, align 8
@tick_length_base = internal unnamed_addr global i64 0, align 8
@tick_length = internal unnamed_addr global i64 0, align 8
@time_offset = internal unnamed_addr global i64 0, align 8
@ntp_next_leap_sec = internal unnamed_addr global i64 9223372036854775807, align 8
@time_state = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\015Clock: inserting leap second 23:59:60 UTC\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\015Clock: deleting leap second 23:59:59 UTC\0A\00", align 1
@time_freq = internal unnamed_addr global i64 0, align 8
@time_constant = internal unnamed_addr global i64 2, align 8
@__setup_str_ntp_tick_adj_setup = internal constant [14 x i8] c"ntp_tick_adj=\00", section ".init.rodata", align 1
@__setup_ntp_tick_adj_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_ntp_tick_adj_setup, i32 0, i32 0), i32 (i8*)* @ntp_tick_adj_setup, i32 0 }, section ".init.setup", align 8
@tick_nsec = dso_local local_unnamed_addr global i64 0, align 8
@ntp_tick_adj = internal global i64 0, align 8
@time_reftime = internal unnamed_addr global i64 0, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_ntp_tick_adj_setup to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @ntp_clear() local_unnamed_addr #0 {
entry:
  store i64 0, i64* @time_adjust, align 8
  %0 = load i32, i32* @time_status, align 4
  %or = or i32 %0, 64
  store i32 %or, i32* @time_status, align 4
  store i64 16000000, i64* @time_maxerror, align 8
  store i64 16000000, i64* @time_esterror, align 8
  call fastcc void @ntp_update_frequency() #12
  %1 = load i64, i64* @tick_length_base, align 8
  store i64 %1, i64* @tick_length, align 8
  store i64 0, i64* @time_offset, align 8
  store i64 9223372036854775807, i64* @ntp_next_leap_sec, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @ntp_update_frequency() unnamed_addr #0 {
entry:
  %0 = load i64, i64* @tick_usec, align 8
  %shl = mul i64 %0, 429496729600000
  %1 = load i64, i64* @ntp_tick_adj, align 8
  %add = add i64 %shl, %1
  %2 = load i64, i64* @time_freq, align 8
  %add2 = add i64 %add, %2
  %call = call fastcc i64 @div_u64(i64 noundef %add2) #12
  %shr = lshr i64 %call, 32
  store i64 %shr, i64* @tick_nsec, align 8
  %call3 = call fastcc i64 @div_u64(i64 noundef %add2) #12
  %3 = load i64, i64* @tick_length_base, align 8
  %sub = sub i64 %call3, %3
  %4 = load i64, i64* @tick_length, align 8
  %add4 = add i64 %sub, %4
  store i64 %add4, i64* @tick_length, align 8
  store i64 %call3, i64* @tick_length_base, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @ntp_tick_length() local_unnamed_addr #1 {
entry:
  %0 = load i64, i64* @tick_length, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @ntp_get_next_leap() local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @time_state, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @time_status, align 4
  %and = and i32 %1, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* @ntp_next_leap_sec, align 8
  %call = call fastcc i64 @ktime_set(i64 noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ 9223372036854775807, %land.lhs.true ], [ 9223372036854775807, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs) unnamed_addr #3 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %mul, !prof !7
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @second_overflow(i64 noundef %secs) local_unnamed_addr #4 {
entry:
  %rem = alloca i32, align 4
  %0 = bitcast i32* %rem to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %rem, align 4, !annotation !8
  %1 = load i32, i32* @time_state, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb20
    i32 3, label %sw.bb35
    i32 4, label %sw.bb36
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* @time_status, align 4
  %and = and i32 %2, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* @time_state, align 4
  %call = call fastcc i64 @div_s64_rem(i64 noundef %secs, i32 noundef 86400, i32* noundef nonnull %rem) #12
  %add = add i64 %secs, 86400
  %3 = load i32, i32* %rem, align 4
  %conv = sext i32 %3 to i64
  %sub = sub i64 %add, %conv
  store i64 %sub, i64* @ntp_next_leap_sec, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %and1 = and i32 %2, 32
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %sw.epilog, label %if.then3

if.then3:                                         ; preds = %if.else
  store i32 2, i32* @time_state, align 4
  %add4 = add i64 %secs, 1
  %call5 = call fastcc i64 @div_s64_rem(i64 noundef %add4, i32 noundef 86400, i32* noundef nonnull %rem) #12
  %add6 = add i64 %secs, 86400
  %4 = load i32, i32* %rem, align 4
  %conv7 = sext i32 %4 to i64
  %sub8 = sub i64 %add6, %conv7
  store i64 %sub8, i64* @ntp_next_leap_sec, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %5 = load i32, i32* @time_status, align 4
  %and11 = and i32 %5, 16
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else14

if.then13:                                        ; preds = %sw.bb10
  store i64 9223372036854775807, i64* @ntp_next_leap_sec, align 8
  store i32 0, i32* @time_state, align 4
  br label %sw.epilog

if.else14:                                        ; preds = %sw.bb10
  %6 = load i64, i64* @ntp_next_leap_sec, align 8
  %cmp = icmp eq i64 %6, %secs
  br i1 %cmp, label %if.then16, label %sw.epilog

if.then16:                                        ; preds = %if.else14
  store i32 3, i32* @time_state, align 4
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0)) #14
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %7 = load i32, i32* @time_status, align 4
  %and21 = and i32 %7, 32
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else24

if.then23:                                        ; preds = %sw.bb20
  store i64 9223372036854775807, i64* @ntp_next_leap_sec, align 8
  store i32 0, i32* @time_state, align 4
  br label %sw.epilog

if.else24:                                        ; preds = %sw.bb20
  %8 = load i64, i64* @ntp_next_leap_sec, align 8
  %cmp25 = icmp eq i64 %8, %secs
  br i1 %cmp25, label %if.then27, label %sw.epilog

if.then27:                                        ; preds = %if.else24
  store i64 9223372036854775807, i64* @ntp_next_leap_sec, align 8
  store i32 4, i32* @time_state, align 4
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #14
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  store i64 9223372036854775807, i64* @ntp_next_leap_sec, align 8
  store i32 4, i32* @time_state, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %9 = load i32, i32* @time_status, align 4
  %and37 = and i32 %9, 48
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %sw.epilog

if.then39:                                        ; preds = %sw.bb36
  store i32 0, i32* @time_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %if.then39, %if.then23, %if.then27, %if.else24, %if.then13, %if.then16, %if.else14, %if.then, %if.then3, %if.else, %entry, %sw.bb35
  %leap.0 = phi i32 [ 0, %entry ], [ 0, %sw.bb36 ], [ 0, %if.then39 ], [ 0, %sw.bb35 ], [ 1, %if.then27 ], [ 0, %if.else24 ], [ 0, %if.then23 ], [ -1, %if.then16 ], [ 0, %if.else14 ], [ 0, %if.then13 ], [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.else ]
  %10 = load i64, i64* @time_maxerror, align 8
  %add41 = add i64 %10, 500
  store i64 %add41, i64* @time_maxerror, align 8
  %cmp42 = icmp sgt i64 %add41, 16000000
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.epilog
  store i64 16000000, i64* @time_maxerror, align 8
  %11 = load i32, i32* @time_status, align 4
  %or = or i32 %11, 64
  store i32 %or, i32* @time_status, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %sw.epilog
  %12 = load i64, i64* @tick_length_base, align 8
  %13 = load i64, i64* @time_offset, align 8
  %call46 = call fastcc i64 @ntp_offset_chunk(i64 noundef %13) #12
  %sub47 = sub i64 %13, %call46
  store i64 %sub47, i64* @time_offset, align 8
  %add48 = add i64 %call46, %12
  store i64 %add48, i64* @tick_length, align 8
  %14 = load i64, i64* @time_adjust, align 8
  %tobool49.not = icmp eq i64 %14, 0
  br i1 %tobool49.not, label %out, label %if.end51

if.end51:                                         ; preds = %if.end45
  %cmp52 = icmp sgt i64 %14, 500
  br i1 %cmp52, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end51
  %sub55 = add nsw i64 %14, -500
  store i64 %sub55, i64* @time_adjust, align 8
  %add56 = add i64 %add48, 8589934592000
  store i64 %add56, i64* @tick_length, align 8
  br label %out

if.end57:                                         ; preds = %if.end51
  %cmp58 = icmp slt i64 %14, -500
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end57
  %add61 = add nuw nsw i64 %14, 500
  store i64 %add61, i64* @time_adjust, align 8
  %sub62 = add i64 %add48, -8589934592000
  store i64 %sub62, i64* @tick_length, align 8
  br label %out

if.end63:                                         ; preds = %if.end57
  %15 = trunc i64 %14 to i32
  %div73 = shl nsw i32 %15, 2
  %div.sext = sext i32 %div73 to i64
  %shl = shl nsw i64 %div.sext, 32
  %add64 = add i64 %shl, %add48
  store i64 %add64, i64* @tick_length, align 8
  store i64 0, i64* @time_adjust, align 8
  br label %out

out:                                              ; preds = %if.end45, %if.end63, %if.then60, %if.then54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %leap.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, i32* nocapture noundef writeonly %remainder) unnamed_addr #5 {
entry:
  %0 = zext i32 %divisor to i64
  %div = sdiv i64 %dividend, %0
  %1 = mul i64 %div, %0
  %rem.decomposed = sub i64 %dividend, %1
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @ntp_offset_chunk(i64 noundef %offset) unnamed_addr #1 {
entry:
  %0 = load i64, i64* @time_constant, align 8
  %add = add i64 %0, 2
  %cmp = icmp slt i64 %offset, 0
  %sub = sub i64 0, %offset
  %shr = ashr i64 %sub, %add
  %sub1 = sub i64 0, %shr
  %shr2 = ashr i64 %offset, %add
  %cond = select i1 %cmp, i64 %sub1, i64 %shr2
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__do_adjtimex(%struct.__kernel_timex* nocapture noundef %txc, %struct.timespec64* nocapture noundef readonly %ts, i32* nocapture noundef %time_tai, %struct.audit_ntp_data* nocapture noundef readnone %ad) local_unnamed_addr #4 {
entry:
  %modes = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 0
  %0 = load i32, i32* %modes, align 8
  %and = and i32 %0, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @time_adjust, align 8
  %and2 = and i32 %0, 8192
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %offset = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 2
  %2 = load i64, i64* %offset, align 8
  store i64 %2, i64* @time_adjust, align 8
  call fastcc void @ntp_update_frequency() #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %offset5 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 2
  store i64 %1, i64* %offset5, align 8
  %.pre = load i32, i32* @time_status, align 4
  br label %if.end26

if.else:                                          ; preds = %entry
  %tobool7.not = icmp eq i32 %0, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.else
  call fastcc void @process_adjtimex_modes(%struct.__kernel_timex* noundef %txc, i32* noundef %time_tai) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else
  %3 = load i64, i64* @time_offset, align 8
  %mul = mul i64 %3, 250
  %cmp = icmp slt i64 %mul, 0
  %sub = sub i64 0, %mul
  %shr = ashr i64 %sub, 32
  %sub14 = sub nsw i64 0, %shr
  %shr16 = ashr i64 %mul, 32
  %cond = select i1 %cmp, i64 %sub14, i64 %shr16
  %offset17 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 2
  store i64 %cond, i64* %offset17, align 8
  %4 = load i32, i32* @time_status, align 4
  %and18 = and i32 %4, 8192
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end12
  %5 = trunc i64 %cond to i32
  %div155 = udiv i32 %5, 1000
  %div.zext = zext i32 %div155 to i64
  store i64 %div.zext, i64* %offset17, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end12, %if.then20, %if.end
  %6 = phi i32 [ %4, %if.end12 ], [ %4, %if.then20 ], [ %.pre, %if.end ]
  %7 = load i32, i32* @time_state, align 4
  %call = call fastcc i32 @is_error_status(i32 noundef %6) #12
  %tobool27.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool27.not, i32 %7, i32 5
  %8 = load i64, i64* @time_freq, align 8
  %shr31 = ashr i64 %8, 19
  %mul32 = mul i64 %shr31, 34359739
  %cmp35 = icmp slt i64 %mul32, 0
  %sub38 = sub i64 0, %mul32
  %shr40 = ashr i64 %sub38, 32
  %sub41 = sub nsw i64 0, %shr40
  %shr44 = ashr i64 %mul32, 32
  %cond46 = select i1 %cmp35, i64 %sub41, i64 %shr44
  %freq = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 3
  store i64 %cond46, i64* %freq, align 8
  %9 = load i64, i64* @time_maxerror, align 8
  %maxerror = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 4
  store i64 %9, i64* %maxerror, align 8
  %10 = load i64, i64* @time_esterror, align 8
  %esterror = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 5
  store i64 %10, i64* %esterror, align 8
  %status = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 6
  store i32 %6, i32* %status, align 8
  %11 = load i64, i64* @time_constant, align 8
  %constant = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 8
  store i64 %11, i64* %constant, align 8
  %precision = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 9
  store i64 1, i64* %precision, align 8
  %tolerance = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 10
  store i64 32768000, i64* %tolerance, align 8
  %12 = load i64, i64* @tick_usec, align 8
  %tick = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 12
  store i64 %12, i64* %tick, align 8
  %13 = load i32, i32* %time_tai, align 4
  %tai = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 22
  store i32 %13, i32* %tai, align 8
  call fastcc void @pps_fill_timex(%struct.__kernel_timex* noundef %txc) #12
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %14 = load i64, i64* %tv_sec, align 8
  %tv_sec47 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 11, i32 0
  store i64 %14, i64* %tv_sec47, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %15 = load i64, i64* %tv_nsec, align 8
  %tv_usec = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 11, i32 1
  store i64 %15, i64* %tv_usec, align 8
  %and49 = and i32 %6, 8192
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end26
  %16 = load i64, i64* %tv_nsec, align 8
  %div53 = sdiv i64 %16, 1000
  store i64 %div53, i64* %tv_usec, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end26
  %17 = load i64, i64* %tv_sec, align 8
  %18 = load i64, i64* @ntp_next_leap_sec, align 8
  %cmp58.not = icmp slt i64 %17, %18
  br i1 %cmp58.not, label %if.end93, label %if.then63, !prof !9

if.then63:                                        ; preds = %if.end56
  switch i32 %7, label %if.end93 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true75
    i32 3, label %land.lhs.true87
  ]

land.lhs.true:                                    ; preds = %if.then63
  %and66 = and i32 %6, 16
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end93, label %if.then68

if.then68:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* %tai, align 8
  %inc = add i32 %19, 1
  store i32 %inc, i32* %tai, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %tv_sec47, align 8
  br label %if.end93

land.lhs.true75:                                  ; preds = %if.then63
  %and76 = and i32 %6, 32
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end93, label %if.then78

if.then78:                                        ; preds = %land.lhs.true75
  %20 = load i32, i32* %tai, align 8
  %dec80 = add i32 %20, -1
  store i32 %dec80, i32* %tai, align 8
  %inc83 = add i64 %14, 1
  store i64 %inc83, i64* %tv_sec47, align 8
  br label %if.end93

land.lhs.true87:                                  ; preds = %if.then63
  %cmp89 = icmp eq i64 %17, %18
  %spec.select150 = select i1 %cmp89, i32 4, i32 %spec.select
  br label %if.end93

if.end93:                                         ; preds = %if.then63, %land.lhs.true, %if.then68, %land.lhs.true75, %if.then78, %land.lhs.true87, %if.end56
  %result.3 = phi i32 [ %spec.select, %if.end56 ], [ %spec.select150, %land.lhs.true87 ], [ %spec.select, %land.lhs.true75 ], [ 4, %if.then78 ], [ %spec.select, %land.lhs.true ], [ 3, %if.then68 ], [ %spec.select, %if.then63 ]
  ret i32 %result.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @process_adjtimex_modes(%struct.__kernel_timex* nocapture noundef readonly %txc, i32* nocapture noundef writeonly %time_tai) unnamed_addr #4 {
entry:
  %modes = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 0
  %0 = load i32, i32* %modes, align 8
  %and = and i32 %0, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @process_adj_status(%struct.__kernel_timex* noundef %txc) #12
  %.pre = load i32, i32* %modes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %and2 = and i32 %1, 8192
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load i32, i32* @time_status, align 4
  %or = or i32 %2, 8192
  store i32 %or, i32* @time_status, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %and7 = and i32 %1, 4096
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %3 = load i32, i32* @time_status, align 4
  %and10 = and i32 %3, -8193
  store i32 %and10, i32* @time_status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5
  %and13 = and i32 %1, 2
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end22, label %if.then15

if.then15:                                        ; preds = %if.end11
  %freq = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 3
  %4 = load i64, i64* %freq, align 8
  %mul = mul i64 %4, 65536000
  %cmp = icmp slt i64 %mul, 2147483648000000
  %cond = select i1 %cmp, i64 %mul, i64 2147483648000000
  %cmp17 = icmp sgt i64 %cond, -2147483648000000
  %cond21 = select i1 %cmp17, i64 %cond, i64 -2147483648000000
  store i64 %cond21, i64* @time_freq, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end11
  %and24 = and i32 %1, 4
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  %maxerror = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 4
  %5 = load i64, i64* %maxerror, align 8
  store i64 %5, i64* @time_maxerror, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22
  %and29 = and i32 %1, 8
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  %esterror = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 5
  %6 = load i64, i64* %esterror, align 8
  store i64 %6, i64* @time_esterror, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  %and34 = and i32 %1, 32
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end53, label %if.then36

if.then36:                                        ; preds = %if.end32
  %constant = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 8
  %7 = load i64, i64* %constant, align 8
  %8 = load i32, i32* @time_status, align 4
  %and37 = and i32 %8, 8192
  %tobool38.not = icmp eq i32 %and37, 0
  %add = add i64 %7, 4
  %spec.select = select i1 %tobool38.not, i64 %add, i64 %7
  %cmp42 = icmp slt i64 %spec.select, 10
  %cond46 = select i1 %cmp42, i64 %spec.select, i64 10
  %cmp48 = icmp sgt i64 %cond46, 0
  %cond52 = select i1 %cmp48, i64 %cond46, i64 0
  store i64 %cond52, i64* @time_constant, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then36, %if.end32
  %and55 = and i32 %1, 128
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end64, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end53
  %constant57 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 8
  %9 = load i64, i64* %constant57, align 8
  %10 = icmp ult i64 %9, 100001
  br i1 %10, label %if.then62, label %if.end64

if.then62:                                        ; preds = %land.lhs.true
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %time_tai, align 4
  %.pre116 = load i32, i32* %modes, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true, %if.end53
  %11 = phi i32 [ %.pre116, %if.then62 ], [ %1, %land.lhs.true ], [ %1, %if.end53 ]
  %and66 = and i32 %11, 1
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end64
  %offset = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 2
  %12 = load i64, i64* %offset, align 8
  call fastcc void @ntp_update_offset(i64 noundef %12) #12
  %.pre117 = load i32, i32* %modes, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64
  %13 = phi i32 [ %.pre117, %if.then68 ], [ %11, %if.end64 ]
  %and71 = and i32 %13, 16384
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end69
  %tick = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 12
  %14 = load i64, i64* %tick, align 8
  store i64 %14, i64* @tick_usec, align 8
  %.pre118 = load i32, i32* %modes, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69
  %15 = phi i32 [ %.pre118, %if.then73 ], [ %13, %if.end69 ]
  %and76 = and i32 %15, 16387
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end74
  call fastcc void @ntp_update_frequency() #12
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @is_error_status(i32 noundef %status) unnamed_addr #3 {
entry:
  %and = and i32 %status, 4160
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pps_fill_timex(%struct.__kernel_timex* nocapture noundef writeonly %txc) unnamed_addr #5 {
entry:
  %ppsfreq = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 13
  store i64 0, i64* %ppsfreq, align 8
  %jitter = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 14
  store i64 0, i64* %jitter, align 8
  %shift = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 15
  store i32 0, i32* %shift, align 8
  %stabil = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 17
  store i64 0, i64* %stabil, align 8
  %jitcnt = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 18
  store i64 0, i64* %jitcnt, align 8
  %calcnt = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 19
  store i64 0, i64* %calcnt, align 8
  %errcnt = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 20
  store i64 0, i64* %errcnt, align 8
  %stbcnt = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 21
  store i64 0, i64* %stbcnt, align 8
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @ntp_tick_adj_setup(i8* noundef %str) #7 section ".init.text" {
entry:
  %call = call fastcc i32 @kstrtos64(i8* noundef %str) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i64, i64* @ntp_tick_adj, align 8
  %shl = shl i64 %0, 32
  store i64 %shl, i64* @ntp_tick_adj, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree noinline nosync nounwind null_pointer_is_valid optsize willreturn
define dso_local void @ntp_init() local_unnamed_addr #8 section ".init.text" {
entry:
  call void @ntp_clear() #12
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64(i64 noundef %dividend) unnamed_addr #9 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %call = call fastcc i64 @div_u64_rem(i64 noundef %dividend, i32* noundef nonnull %remainder) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_u64_rem(i64 noundef %dividend, i32* nocapture noundef writeonly %remainder) unnamed_addr #5 {
entry:
  %div = udiv i64 %dividend, 250
  %0 = mul i64 %div, 250
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @process_adj_status(%struct.__kernel_timex* nocapture noundef readonly %txc) unnamed_addr #4 {
entry:
  %0 = load i32, i32* @time_status, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 6
  %1 = load i32, i32* %status, align 8
  %and1 = and i32 %1, 1
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %land.lhs.true
  store i32 0, i32* @time_state, align 4
  store i32 64, i32* @time_status, align 4
  store i64 9223372036854775807, i64* @ntp_next_leap_sec, align 8
  br label %land.lhs.true5

if.end:                                           ; preds = %land.lhs.true, %entry
  %and3 = and i32 %0, 1
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %if.end10

land.lhs.true5:                                   ; preds = %if.end.thread, %if.end
  %2 = phi i32 [ 64, %if.end.thread ], [ %0, %if.end ]
  %status6 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 6
  %3 = load i32, i32* %status6, align 8
  %and7 = and i32 %3, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true5
  %call = call i64 @__ktime_get_real_seconds() #15
  store i64 %call, i64* @time_reftime, align 8
  %.pre = load i32, i32* @time_status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true5, %if.end
  %4 = phi i32 [ %.pre, %if.then9 ], [ %2, %land.lhs.true5 ], [ %0, %if.end ]
  %and11 = and i32 %4, 65280
  %status12 = getelementptr inbounds %struct.__kernel_timex, %struct.__kernel_timex* %txc, i64 0, i32 6
  %5 = load i32, i32* %status12, align 8
  %and13 = and i32 %5, -65281
  %or = or i32 %and13, %and11
  store i32 %or, i32* @time_status, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ntp_update_offset(i64 noundef %offset) unnamed_addr #4 {
entry:
  %0 = load i32, i32* @time_status, align 4
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i32 %0, 8192
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %cmp = icmp sgt i64 %offset, -1000000
  %cond = select i1 %cmp, i64 %offset, i64 -1000000
  %cmp5 = icmp slt i64 %cond, 1000000
  %cond9 = select i1 %cmp5, i64 %cond, i64 1000000
  %mul = mul nsw i64 %cond9, 1000
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end
  %offset.addr.0 = phi i64 [ %offset, %if.end ], [ %mul, %if.then3 ]
  %cmp12 = icmp sgt i64 %offset.addr.0, -500000000
  %cond16 = select i1 %cmp12, i64 %offset.addr.0, i64 -500000000
  %cmp18 = icmp slt i64 %cond16, 500000000
  %cond22 = select i1 %cmp18, i64 %cond16, i64 500000000
  %call = call i64 @__ktime_get_real_seconds() #15
  %1 = load i64, i64* @time_reftime, align 8
  %sub = sub i64 %call, %1
  %2 = load i32, i32* @time_status, align 4
  %and23 = and i32 %2, 128
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end28, label %if.then27, !prof !9

if.then27:                                        ; preds = %if.end10
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end10
  %secs.0 = phi i64 [ 0, %if.then27 ], [ %sub, %if.end10 ]
  %call29 = call i64 @__ktime_get_real_seconds() #15
  store i64 %call29, i64* @time_reftime, align 8
  %call30 = call fastcc i64 @ntp_update_offset_fll(i64 noundef %cond22, i64 noundef %secs.0) #12
  %3 = load i64, i64* @time_constant, align 8
  %4 = trunc i64 %3 to i32
  %sh_prom = add i32 %4, 3
  %shl = shl nuw i32 1, %sh_prom
  %conv31 = sext i32 %shl to i64
  %cmp32 = icmp sgt i64 %secs.0, %conv31
  br i1 %cmp32, label %if.then41, label %if.end46, !prof !7

if.then41:                                        ; preds = %if.end28
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end28
  %secs.1 = phi i64 [ %conv31, %if.then41 ], [ %secs.0, %if.end28 ]
  %mul47 = mul i64 %secs.1, %cond22
  %add48.neg = mul i64 %3, -2
  %sub50 = add i64 %add48.neg, 24
  %shl51 = shl i64 %mul47, %sub50
  %5 = load i64, i64* @time_freq, align 8
  %add52 = add i64 %5, %call30
  %add53 = add i64 %add52, %shl51
  %cmp55 = icmp slt i64 %add53, 2147483648000000
  %cond60 = select i1 %cmp55, i64 %add53, i64 2147483648000000
  %cmp62 = icmp sgt i64 %cond60, -2147483648000000
  %cond67 = select i1 %cmp62, i64 %cond60, i64 -2147483648000000
  store i64 %cond67, i64* @time_freq, align 8
  %shl68 = shl nsw i64 %cond22, 32
  %call69 = call fastcc i64 @div_s64(i64 noundef %shl68) #12
  store i64 %call69, i64* @time_offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @ntp_update_offset_fll(i64 noundef %offset64, i64 noundef %secs) unnamed_addr #11 {
entry:
  %0 = load i32, i32* @time_status, align 4
  %and = and i32 %0, -16385
  store i32 %and, i32* @time_status, align 4
  %cmp = icmp slt i64 %secs, 256
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and1 = and i32 %0, 8
  %tobool = icmp eq i32 %and1, 0
  %cmp2 = icmp ult i64 %secs, 2049
  %or.cond = and i1 %cmp2, %tobool
  br i1 %or.cond, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %or = or i32 %0, 16384
  store i32 %or, i32* @time_status, align 4
  %shl = shl i64 %offset64, 30
  %call = call fastcc i64 @div64_s64(i64 noundef %shl, i64 noundef %secs) #12
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i64 [ %call, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_s64(i64 noundef %dividend) unnamed_addr #9 {
entry:
  %remainder = alloca i32, align 4
  %0 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %call = call fastcc i64 @div_s64_rem(i64 noundef %dividend, i32 noundef 250, i32* noundef nonnull %remainder) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_s64(i64 noundef %dividend, i64 noundef %divisor) unnamed_addr #3 {
entry:
  %div = sdiv i64 %dividend, %divisor
  ret i64 %div
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtos64(i8* noundef %s) unnamed_addr #4 {
entry:
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef 0, i64* noundef nonnull @ntp_tick_adj) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold mustprogress nofree noinline nosync nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
