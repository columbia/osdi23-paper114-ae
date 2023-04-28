; ModuleID = 'test/gmdifftest.c'
source_filename = "test/gmdifftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [12 x i8] c"test_gmtime\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"test/gmdifftest.c\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"OPENSSL_gmtime_adj(&tm1, 0, offset)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tm1.tm_year\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tm2.tm_year\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"tm1.tm_mon\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"tm2.tm_mon\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"tm1.tm_mday\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"tm2.tm_mday\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"tm1.tm_hour\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"tm2.tm_hour\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"tm1.tm_min\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"tm2.tm_min\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"tm1.tm_sec\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"tm2.tm_sec\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"OPENSSL_gmtime_diff(&off_day, &off_sec, &o1, &tm1)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"toffset\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_gmtime, i32 noundef 1000, i32 noundef 0) #5
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gmtime(i32 noundef %offset) #0 {
entry:
  %conv = sext i32 %offset to i64
  %call = tail call fastcc i32 @check_time(i64 noundef %conv) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sub = sub nsw i32 0, %offset
  %conv1 = sext i32 %sub to i64
  %call2 = tail call fastcc i32 @check_time(i64 noundef %conv1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %mul = mul nsw i64 %conv, 1000
  %call6 = tail call fastcc i32 @check_time(i64 noundef %mul) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %mul11 = mul nsw i64 %conv1, 1000
  %call12 = tail call fastcc i32 @check_time(i64 noundef %mul11) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true8
  %mul16 = mul nsw i64 %conv, 1000000
  %call17 = tail call fastcc i32 @check_time(i64 noundef %mul16) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true14
  %mul21 = mul nsw i64 %conv1, 1000000
  %call22 = tail call fastcc i32 @check_time(i64 noundef %mul21) #6
  %tobool23 = icmp ne i32 %call22, 0
  %phi.cast = zext i1 %tobool23 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true14, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_time(i64 noundef %offset) unnamed_addr #0 {
entry:
  %tm1 = alloca %struct.tm, align 8
  %tm2 = alloca %struct.tm, align 8
  %o1 = alloca %struct.tm, align 8
  %off_day = alloca i32, align 4
  %off_sec = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %0 = bitcast %struct.tm* %tm1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #7
  %1 = bitcast %struct.tm* %tm2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #7
  %2 = bitcast %struct.tm* %o1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %2) #7
  %3 = bitcast i32* %off_day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  %4 = bitcast i32* %off_sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  %5 = bitcast i64* %t1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  %6 = bitcast i64* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7
  %call = call i64 @time(i64* noundef nonnull %t1) #5
  %7 = load i64, i64* %t1, align 8, !tbaa !3
  %add = add nsw i64 %7, %offset
  store i64 %add, i64* %t2, align 8, !tbaa !3
  %call1 = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %t2, %struct.tm* noundef nonnull %tm2) #5
  %call2 = call %struct.tm* @OPENSSL_gmtime(i64* noundef nonnull %t1, %struct.tm* noundef nonnull %tm1) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %2, i8* noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !7
  %call3 = call i32 @OPENSSL_gmtime_adj(%struct.tm* noundef nonnull %tm1, i32 noundef 0, i64 noundef %offset) #5
  %cmp = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm1, i64 0, i32 5
  %8 = load i32, i32* %tm_year, align 4, !tbaa !12
  %tm_year5 = getelementptr inbounds %struct.tm, %struct.tm* %tm2, i64 0, i32 5
  %9 = load i32, i32* %tm_year5, align 4, !tbaa !12
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 noundef %8, i32 noundef %9) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm1, i64 0, i32 4
  %10 = load i32, i32* %tm_mon, align 8, !tbaa !14
  %tm_mon9 = getelementptr inbounds %struct.tm, %struct.tm* %tm2, i64 0, i32 4
  %11 = load i32, i32* %tm_mon9, align 8, !tbaa !14
  %call10 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 noundef %10, i32 noundef %11) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm1, i64 0, i32 3
  %12 = load i32, i32* %tm_mday, align 4, !tbaa !15
  %tm_mday13 = getelementptr inbounds %struct.tm, %struct.tm* %tm2, i64 0, i32 3
  %13 = load i32, i32* %tm_mday13, align 4, !tbaa !15
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef %12, i32 noundef %13) #5
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm1, i64 0, i32 2
  %14 = load i32, i32* %tm_hour, align 8, !tbaa !16
  %tm_hour17 = getelementptr inbounds %struct.tm, %struct.tm* %tm2, i64 0, i32 2
  %15 = load i32, i32* %tm_hour17, align 8, !tbaa !16
  %call18 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef %14, i32 noundef %15) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm1, i64 0, i32 1
  %16 = load i32, i32* %tm_min, align 4, !tbaa !17
  %tm_min21 = getelementptr inbounds %struct.tm, %struct.tm* %tm2, i64 0, i32 1
  %17 = load i32, i32* %tm_min21, align 4, !tbaa !17
  %call22 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 noundef %16, i32 noundef %17) #5
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm1, i64 0, i32 0
  %18 = load i32, i32* %tm_sec, align 8, !tbaa !18
  %tm_sec25 = getelementptr inbounds %struct.tm, %struct.tm* %tm2, i64 0, i32 0
  %19 = load i32, i32* %tm_sec25, align 8, !tbaa !18
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 noundef %18, i32 noundef %19) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = call i32 @OPENSSL_gmtime_diff(i32* noundef nonnull %off_day, i32* noundef nonnull %off_sec, %struct.tm* noundef nonnull %o1, %struct.tm* noundef nonnull %tm1) #5
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv31) #5
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false28
  %20 = load i32, i32* %off_day, align 4, !tbaa !8
  %conv34 = sext i32 %20 to i64
  %mul = mul nsw i64 %conv34, 86400
  %21 = load i32, i32* %off_sec, align 4, !tbaa !8
  %conv35 = sext i32 %21 to i64
  %add36 = add nsw i64 %mul, %conv35
  %call37 = call i32 @test_long_eq(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 noundef %offset, i64 noundef %add36) #5
  %tobool38.not = icmp ne i32 %call37, 0
  %. = zext i1 %tobool38.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false20, %lor.lhs.false24, %lor.lhs.false28
  %retval.0 = phi i32 [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #3

declare dso_local %struct.tm* @OPENSSL_gmtime(i64* noundef, %struct.tm* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_gmtime_adj(%struct.tm* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OPENSSL_gmtime_diff(i32* noundef, i32* noundef, %struct.tm* noundef, %struct.tm* noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8, i64 16, i64 4, !8, i64 20, i64 4, !8, i64 24, i64 4, !8, i64 28, i64 4, !8, i64 32, i64 4, !8, i64 40, i64 8, !3, i64 48, i64 8, !10}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !9, i64 20}
!13 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !4, i64 40, !11, i64 48}
!14 = !{!13, !9, i64 16}
!15 = !{!13, !9, i64 12}
!16 = !{!13, !9, i64 8}
!17 = !{!13, !9, i64 4}
!18 = !{!13, !9, i64 0}
