; ModuleID = 'test/sm3_internal_test.c'
source_filename = "test/sm3_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SM3state_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

@.str = private unnamed_addr constant [9 x i8] c"test_sm3\00", align 1
@test_sm3.input1 = internal constant [3 x i8] c"abc", align 1
@test_sm3.expected1 = internal constant [32 x i8] c"f\C7\F0\F4b\EE\ED\D9\D1\F2\D4k\DC\10\E4\E2Ag\C4\87\\\F2\F7\A2)}\A0+\8FK\A8\E0", align 16
@test_sm3.input2 = internal constant [64 x i8] c"abcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcdabcd", align 16
@test_sm3.expected2 = internal constant [32 x i8] c"\DE\BE\9F\F9\22u\B8\A18`H\89\C1\8EZMo\DBp\E58~We)=\CB\A3\9C\0CW2", align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"test/sm3_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ossl_sm3_init(&ctx1)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ossl_sm3_update(&ctx1, input1, sizeof(input1))\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ossl_sm3_final(md1, &ctx1)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"md1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"expected1\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ossl_sm3_init(&ctx2)\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"ossl_sm3_update(&ctx2, input2, sizeof(input2))\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ossl_sm3_final(md2, &ctx2)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"md2\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"expected2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_sm3) #3
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sm3() #0 {
entry:
  %ctx1 = alloca %struct.SM3state_st, align 4
  %ctx2 = alloca %struct.SM3state_st, align 4
  %md1 = alloca [32 x i8], align 16
  %md2 = alloca [32 x i8], align 16
  %0 = bitcast %struct.SM3state_st* %ctx1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %0) #4
  %1 = bitcast %struct.SM3state_st* %ctx2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 108, i8* nonnull %1) #4
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %md1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4
  %3 = getelementptr inbounds [32 x i8], [32 x i8]* %md2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #4
  %call = call i32 @ossl_sm3_init(%struct.SM3state_st* noundef nonnull %ctx1) #3
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @ossl_sm3_update(%struct.SM3state_st* noundef nonnull %ctx1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @test_sm3.input1, i64 0, i64 0), i64 noundef 3) #3
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv4) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = call i32 @ossl_sm3_final(i8* noundef nonnull %2, %struct.SM3state_st* noundef nonnull %ctx1) #3
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv10) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call15 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_sm3.expected1, i64 0, i64 0), i64 noundef 32) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = call i32 @ossl_sm3_init(%struct.SM3state_st* noundef nonnull %ctx2) #3
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv19) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end
  %call23 = call i32 @ossl_sm3_update(%struct.SM3state_st* noundef nonnull %ctx2, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @test_sm3.input2, i64 0, i64 0), i64 noundef 64) #3
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv25) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call30 = call i32 @ossl_sm3_final(i8* noundef nonnull %3, %struct.SM3state_st* noundef nonnull %ctx2) #3
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv32) #3
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false28
  %call37 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_sm3.expected2, i64 0, i64 0), i64 noundef 32) #3
  %tobool38.not = icmp ne i32 %call37, 0
  %spec.select = zext i1 %tobool38.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false35, %if.end, %lor.lhs.false22, %lor.lhs.false28, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13
  %retval.0 = phi i32 [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false35 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 108, i8* nonnull %0) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm3_init(%struct.SM3state_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm3_update(%struct.SM3state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_sm3_final(i8* noundef, %struct.SM3state_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
