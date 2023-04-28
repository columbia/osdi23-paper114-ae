; ModuleID = 'kernel/time/timeconv.c'
source_filename = "kernel/time/timeconv.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64, i32, i32 }

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid writeonly
define dso_local void @time64_to_tm(i64 noundef %totalsecs, i32 noundef %offset, %struct.tm* nocapture noundef writeonly %result) local_unnamed_addr #0 {
entry:
  %u64tmp = alloca i64, align 8
  %remainder = alloca i32, align 4
  %0 = bitcast i64* %u64tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = bitcast i32* %remainder to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  store i32 0, i32* %remainder, align 4, !annotation !7
  %call = call fastcc i64 @div_s64_rem(i64 noundef %totalsecs, i32* noundef nonnull %remainder) #5
  %2 = load i32, i32* %remainder, align 4
  %conv = sext i32 %2 to i64
  %conv1 = sext i32 %offset to i64
  %add = add nsw i64 %conv, %conv1
  %cmp127 = icmp slt i64 %add, 0
  br i1 %cmp127, label %while.body.preheader, label %while.cond4.preheader

while.body.preheader:                             ; preds = %entry
  %smax = call i64 @llvm.smax.i64(i64 %add, i64 -86400)
  %3 = icmp ult i64 %add, -86400
  %umin = zext i1 %3 to i64
  %4 = add nsw i64 %add, %umin
  %5 = sub nsw i64 %smax, %4
  %6 = udiv i64 %5, 86400
  %7 = add nuw nsw i64 %6, %umin
  %8 = mul i64 %7, 86400
  %9 = add i64 %8, %conv
  %10 = add i64 %9, %conv1
  %11 = add i64 %10, 86400
  %12 = xor i64 %7, -1
  %13 = add i64 %call, %12
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.body.preheader, %entry
  %days.0.lcssa = phi i64 [ %call, %entry ], [ %13, %while.body.preheader ]
  %rem.0.lcssa = phi i64 [ %add, %entry ], [ %11, %while.body.preheader ]
  %cmp5131 = icmp sgt i64 %rem.0.lcssa, 86399
  br i1 %cmp5131, label %while.body7.preheader, label %while.end8

while.body7.preheader:                            ; preds = %while.cond4.preheader
  %14 = add nuw i64 %rem.0.lcssa, 86399
  %smin = call i64 @llvm.smin.i64(i64 %rem.0.lcssa, i64 172799)
  %15 = sub nuw i64 %14, %smin
  %16 = udiv i64 %15, 86400
  %.neg = mul nsw i64 %16, -86400
  %17 = add i64 %days.0.lcssa, %16
  %18 = add nsw i64 %rem.0.lcssa, -86400
  %19 = add nsw i64 %.neg, %18
  %20 = add i64 %17, 1
  br label %while.end8

while.end8:                                       ; preds = %while.body7.preheader, %while.cond4.preheader
  %days.1.lcssa = phi i64 [ %days.0.lcssa, %while.cond4.preheader ], [ %20, %while.body7.preheader ]
  %rem.1.lcssa = phi i64 [ %rem.0.lcssa, %while.cond4.preheader ], [ %19, %while.body7.preheader ]
  %rem.1.lcssa.frozen = freeze i64 %rem.1.lcssa
  %div = sdiv i64 %rem.1.lcssa.frozen, 3600
  %conv9 = trunc i64 %div to i32
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 2
  store i32 %conv9, i32* %tm_hour, align 8
  %21 = mul i64 %div, 3600
  %rem10.decomposed = sub i64 %rem.1.lcssa.frozen, %21
  %div11.lhs.trunc = trunc i64 %rem10.decomposed to i16
  %div11124 = sdiv i16 %div11.lhs.trunc, 60
  %conv12 = sext i16 %div11124 to i32
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 1
  store i32 %conv12, i32* %tm_min, align 4
  %22 = mul i16 %div11124, 60
  %rem13125.decomposed = sub i16 %div11.lhs.trunc, %22
  %conv14 = sext i16 %rem13125.decomposed to i32
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 0
  store i32 %conv14, i32* %tm_sec, align 8
  %add15 = add i64 %days.1.lcssa, 4
  %rem16 = srem i64 %add15, 7
  %conv17 = trunc i64 %rem16 to i32
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 6
  %cmp19 = icmp slt i32 %conv17, 0
  %add22 = add nsw i32 %conv17, 7
  %spec.select = select i1 %cmp19, i32 %add22, i32 %conv17
  store i32 %spec.select, i32* %tm_wday, align 8
  %add23 = shl i64 %days.1.lcssa, 2
  %add24 = add i64 %add23, -9223372036854291941
  store i64 %add24, i64* %u64tmp, align 8
  %call25 = call fastcc i64 @div64_u64_rem(i64 noundef %add24, i64* noundef nonnull %u64tmp) #5
  %23 = load i64, i64* %u64tmp, align 8
  %add29 = and i64 %23, 4294967292
  %conv30 = or i64 %add29, 3
  %mul31 = mul nuw nsw i64 %conv30, 2939745
  %shr = lshr i64 %mul31, 32
  %conv33 = trunc i64 %shr to i32
  %conv34 = trunc i64 %mul31 to i32
  %div36 = udiv i32 %conv34, 11758980
  %tobool.not = icmp eq i32 %conv33, 0
  %rem40 = and i32 %conv33, 3
  %tobool41.not = icmp eq i32 %rem40, 0
  %rem42 = and i64 %call25, 3
  %tobool43.not = icmp eq i64 %rem42, 0
  %cond.in = select i1 %tobool.not, i1 %tobool43.not, i1 %tobool41.not
  %mul37 = mul i64 %call25, 100
  %mul47 = mul nuw nsw i32 %div36, 2141
  %add48 = add nuw nsw i32 %mul47, 132377
  %shr49 = lshr i32 %add48, 16
  %div52.lhs.trunc = trunc i32 %add48 to i16
  %div52126 = udiv i16 %div52.lhs.trunc, 2141
  %cmp53 = icmp ugt i32 %conv34, -696719417
  %conv57 = zext i1 %cmp53 to i64
  %sub63 = add nsw i32 %shr49, -12
  %cond66 = select i1 %cmp53, i32 %sub63, i32 %shr49
  %narrow = add nuw nsw i16 %div52126, 1
  %add67 = zext i16 %narrow to i32
  %add74 = select i1 %cond.in, i32 60, i32 59
  %cond76 = select i1 %cmp53, i32 -306, i32 %add74
  %add77 = add nsw i32 %cond76, %div36
  %add39 = add i64 %mul37, -6313183731941900
  %add58 = add i64 %add39, %shr
  %sub78 = add i64 %add58, %conv57
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 5
  store i64 %sub78, i64* %tm_year, align 8
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 4
  store i32 %cond66, i32* %tm_mon, align 8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 3
  store i32 %add67, i32* %tm_mday, align 4
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %result, i64 0, i32 7
  store i32 %add77, i32* %tm_yday, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div_s64_rem(i64 noundef %dividend, i32* nocapture noundef writeonly %remainder) unnamed_addr #2 {
entry:
  %div = sdiv i64 %dividend, 86400
  %0 = mul i64 %div, 86400
  %rem.decomposed = sub i64 %dividend, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  store i32 %conv1, i32* %remainder, align 4
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i64 @div64_u64_rem(i64 noundef %dividend, i64* nocapture noundef writeonly %remainder) unnamed_addr #2 {
entry:
  %div = udiv i64 %dividend, 146097
  %0 = mul i64 %div, 146097
  %rem.decomposed = sub i64 %dividend, %0
  store i64 %rem.decomposed, i64* %remainder, align 8
  ret i64 %div
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

attributes #0 = { nofree noinline nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

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
