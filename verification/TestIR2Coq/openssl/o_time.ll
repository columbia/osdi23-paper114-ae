; ModuleID = 'crypto/o_time.c'
source_filename = "crypto/o_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

; Function Attrs: noinline nounwind uwtable
define %struct.tm* @OPENSSL_gmtime(i64* noundef %timer, %struct.tm* noundef %result) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.tm* @gmtime_r(i64* noundef %timer, %struct.tm* noundef %result) #7
  %cmp = icmp eq %struct.tm* %call, null
  %.result = select i1 %cmp, %struct.tm* null, %struct.tm* %result
  ret %struct.tm* %.result
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64* noundef, %struct.tm* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define i32 @OPENSSL_gmtime_adj(%struct.tm* nocapture noundef %tm, i32 noundef %off_day, i64 noundef %offset_sec) local_unnamed_addr #3 {
entry:
  %time_sec = alloca i32, align 4
  %time_year = alloca i32, align 4
  %time_month = alloca i32, align 4
  %time_day = alloca i32, align 4
  %time_jd = alloca i64, align 8
  %0 = bitcast i32* %time_sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %1 = bitcast i32* %time_year to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %2 = bitcast i32* %time_month to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %3 = bitcast i32* %time_day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8
  %4 = bitcast i64* %time_jd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  %call = call fastcc i32 @julian_adj(%struct.tm* noundef %tm, i32 noundef %off_day, i64 noundef %offset_sec, i64* noundef nonnull %time_jd, i32* noundef nonnull %time_sec) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %time_jd, align 8, !tbaa !4
  call fastcc void @julian_to_date(i64 noundef %5, i32* noundef nonnull %time_year, i32* noundef nonnull %time_month, i32* noundef nonnull %time_day) #9
  %6 = load i32, i32* %time_year, align 4, !tbaa !8
  %7 = add i32 %6, -10000
  %8 = icmp ult i32 %7, -8100
  br i1 %8, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %sub = add nsw i32 %6, -1900
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5
  store i32 %sub, i32* %tm_year, align 4, !tbaa !10
  %9 = load i32, i32* %time_month, align 4, !tbaa !8
  %sub4 = add nsw i32 %9, -1
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 4
  store i32 %sub4, i32* %tm_mon, align 8, !tbaa !13
  %10 = load i32, i32* %time_day, align 4, !tbaa !8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 3
  store i32 %10, i32* %tm_mday, align 4, !tbaa !14
  %11 = load i32, i32* %time_sec, align 4, !tbaa !8
  %div = sdiv i32 %11, 3600
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 2
  store i32 %div, i32* %tm_hour, align 8, !tbaa !15
  %div5 = sdiv i32 %11, 60
  %rem = srem i32 %div5, 60
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 1
  store i32 %rem, i32* %tm_min, align 4, !tbaa !16
  %rem6 = srem i32 %11, 60
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 0
  store i32 %rem6, i32* %tm_sec, align 8, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @julian_adj(%struct.tm* nocapture noundef readonly %tm, i32 noundef %off_day, i64 noundef %offset_sec, i64* nocapture noundef writeonly %pday, i32* nocapture noundef writeonly %psec) unnamed_addr #4 {
entry:
  %div = sdiv i64 %offset_sec, 86400
  %mul.neg = mul nsw i64 %div, -86400
  %sub = add i64 %mul.neg, %offset_sec
  %conv = trunc i64 %sub to i32
  %conv1 = sext i32 %off_day to i64
  %add = add nsw i64 %div, %conv1
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 2
  %0 = load i32, i32* %tm_hour, align 8, !tbaa !15
  %mul2 = mul nsw i32 %0, 3600
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 1
  %1 = load i32, i32* %tm_min, align 4, !tbaa !16
  %mul3 = mul nsw i32 %1, 60
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 0
  %2 = load i32, i32* %tm_sec, align 8, !tbaa !17
  %add4 = add i32 %mul2, %conv
  %add5 = add i32 %add4, %mul3
  %add6 = add i32 %add5, %2
  %cmp = icmp sgt i32 %add6, 86399
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc = add nsw i64 %add, 1
  %sub8 = add nsw i32 %add6, -86400
  br label %if.end13

if.else:                                          ; preds = %entry
  %cmp9 = icmp slt i32 %add6, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %dec = add nsw i64 %add, -1
  %add12 = add nsw i32 %add6, 86400
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %if.then
  %offset_day.0 = phi i64 [ %inc, %if.then ], [ %dec, %if.then11 ], [ %add, %if.else ]
  %offset_hms.0 = phi i32 [ %sub8, %if.then ], [ %add12, %if.then11 ], [ %add6, %if.else ]
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5
  %3 = load i32, i32* %tm_year, align 4, !tbaa !10
  %add14 = add nsw i32 %3, 1900
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 4
  %4 = load i32, i32* %tm_mon, align 8, !tbaa !13
  %add15 = add nsw i32 %4, 1
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4, !tbaa !14
  %call = tail call fastcc i64 @date_to_julian(i32 noundef %add14, i32 noundef %add15, i32 noundef %5) #9
  %add16 = add nsw i64 %call, %offset_day.0
  %cmp17 = icmp slt i64 %add16, 0
  br i1 %cmp17, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.end13
  store i64 %add16, i64* %pday, align 8, !tbaa !4
  store i32 %offset_hms.0, i32* %psec, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end20
  %retval.0 = phi i32 [ 1, %if.end20 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @julian_to_date(i64 noundef %jd, i32* nocapture noundef writeonly %y, i32* nocapture noundef writeonly %m, i32* nocapture noundef writeonly %d) unnamed_addr #5 {
entry:
  %add = add nsw i64 %jd, 68569
  %mul = shl nsw i64 %add, 2
  %div = sdiv i64 %mul, 146097
  %mul1 = mul nsw i64 %div, 146097
  %add2 = add nsw i64 %mul1, 3
  %div3.neg = sdiv i64 %add2, -4
  %sub = add i64 %div3.neg, %add
  %0 = mul i64 %sub, 4000
  %mul5 = add i64 %0, 4000
  %div6 = sdiv i64 %mul5, 1461001
  %mul7 = mul nsw i64 %div6, 1461
  %div8.neg = sdiv i64 %mul7, -4
  %sub9 = add i64 %sub, 31
  %add10 = add i64 %sub9, %div8.neg
  %mul11 = mul nsw i64 %add10, 80
  %div12 = sdiv i64 %mul11, 2447
  %mul13 = mul nsw i64 %div12, 2447
  %div14.neg = sdiv i64 %mul13, -80
  %sub15 = add i64 %div14.neg, %add10
  %conv = trunc i64 %sub15 to i32
  store i32 %conv, i32* %d, align 4, !tbaa !8
  %div16 = sdiv i64 %mul11, 26917
  %add17 = add nsw i64 %div12, 2
  %mul18.neg = mul nsw i64 %div16, -12
  %sub19 = add nsw i64 %add17, %mul18.neg
  %conv20 = trunc i64 %sub19 to i32
  store i32 %conv20, i32* %m, align 4, !tbaa !8
  %1 = mul nsw i64 %div, 100
  %mul22 = add nsw i64 %1, 4294962396
  %add23 = add nsw i64 %mul22, %div6
  %add24 = add nsw i64 %add23, %div16
  %conv25 = trunc i64 %add24 to i32
  store i32 %conv25, i32* %y, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define i32 @OPENSSL_gmtime_diff(i32* noundef writeonly %pday, i32* noundef writeonly %psec, %struct.tm* nocapture noundef readonly %from, %struct.tm* nocapture noundef readonly %to) local_unnamed_addr #3 {
entry:
  %from_sec = alloca i32, align 4
  %to_sec = alloca i32, align 4
  %from_jd = alloca i64, align 8
  %to_jd = alloca i64, align 8
  %0 = bitcast i32* %from_sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %1 = bitcast i32* %to_sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  %2 = bitcast i64* %from_jd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  %3 = bitcast i64* %to_jd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  %call = call fastcc i32 @julian_adj(%struct.tm* noundef %from, i32 noundef 0, i64 noundef 0, i64* noundef nonnull %from_jd, i32* noundef nonnull %from_sec) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @julian_adj(%struct.tm* noundef %to, i32 noundef 0, i64 noundef 0, i64* noundef nonnull %to_jd, i32* noundef nonnull %to_sec) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load i64, i64* %to_jd, align 8, !tbaa !4
  %5 = load i64, i64* %from_jd, align 8, !tbaa !4
  %sub = sub nsw i64 %4, %5
  %6 = load i32, i32* %to_sec, align 4, !tbaa !8
  %7 = load i32, i32* %from_sec, align 4, !tbaa !8
  %sub5 = sub nsw i32 %6, %7
  %cmp = icmp sgt i64 %sub, 0
  %cmp6 = icmp slt i32 %sub5, 0
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  %add = add nsw i32 %sub5, 86400
  %diff_sec.0 = select i1 %or.cond, i32 %add, i32 %sub5
  %dec = sext i1 %or.cond to i64
  %diff_day.0 = add nsw i64 %sub, %dec
  %cmp9 = icmp slt i64 %diff_day.0, 0
  %cmp11 = icmp sgt i32 %diff_sec.0, 0
  %or.cond26 = select i1 %cmp9, i1 %cmp11, i1 false
  %sub13 = add nsw i32 %diff_sec.0, -86400
  %diff_sec.1 = select i1 %or.cond26, i32 %sub13, i32 %diff_sec.0
  %tobool15.not = icmp eq i32* %pday, null
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end4
  %inc = zext i1 %or.cond26 to i64
  %diff_day.1 = add nsw i64 %diff_day.0, %inc
  %conv = trunc i64 %diff_day.1 to i32
  store i32 %conv, i32* %pday, align 4, !tbaa !8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end4
  %tobool18.not = icmp eq i32* %psec, null
  br i1 %tobool18.not, label %cleanup, label %if.then19

if.then19:                                        ; preds = %if.end17
  store i32 %diff_sec.1, i32* %psec, align 4, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then19, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 1, %if.then19 ], [ 1, %if.end17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @date_to_julian(i32 noundef %y, i32 noundef %m, i32 noundef %d) unnamed_addr #6 {
entry:
  %sub = add nsw i32 %m, -14
  %div = sdiv i32 %sub, 12
  %add = add i32 %div, %y
  %0 = mul i32 %add, 1461
  %mul = add i32 %0, 7012800
  %div2 = sdiv i32 %mul, 4
  %sub3 = add nsw i32 %m, -2
  %mul6.neg = mul nsw i32 %div, -12
  %sub7 = add i32 %sub3, %mul6.neg
  %mul8 = mul nsw i32 %sub7, 367
  %div9 = sdiv i32 %mul8, 12
  %add14 = add i32 %add, 4900
  %div15 = sdiv i32 %add14, 100
  %mul16 = mul nsw i32 %div15, 3
  %div17.neg = sdiv i32 %mul16, -4
  %add10 = add i32 %d, -32075
  %sub18 = add i32 %add10, %div2
  %add19 = add i32 %sub18, %div17.neg
  %sub20 = add i32 %add19, %div9
  %conv = sext i32 %sub20 to i64
  ret i64 %conv
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 20}
!11 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !5, i64 40, !12, i64 48}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!11, !9, i64 16}
!14 = !{!11, !9, i64 12}
!15 = !{!11, !9, i64 8}
!16 = !{!11, !9, i64 4}
!17 = !{!11, !9, i64 0}
