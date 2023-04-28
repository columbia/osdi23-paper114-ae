; ModuleID = 'test/sm4_internal_test.c'
source_filename = "test/sm4_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SM4_KEY_st = type { [32 x i32] }

@.str = private unnamed_addr constant [13 x i8] c"test_sm4_ecb\00", align 1
@test_sm4_ecb.k = internal constant [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", align 16
@test_sm4_ecb.input = internal constant [16 x i8] c"\01#Eg\89\AB\CD\EF\FE\DC\BA\98vT2\10", align 16
@test_sm4_ecb.expected = internal constant [16 x i8] c"h\1E\DF4\D2\06\96^\86\B3\E9OSnBF", align 16
@test_sm4_ecb.expected_iter = internal constant [16 x i8] c"YR\98\C7\C6\FD'\1F\04\02\F8\04\C3=?f", align 16
@.str.1 = private unnamed_addr constant [25 x i8] c"test/sm4_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"expected_iter\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_sm4_ecb) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sm4_ecb() #0 {
entry:
  %key = alloca %struct.SM4_KEY_st, align 4
  %block = alloca [16 x i8], align 16
  %0 = bitcast %struct.SM4_KEY_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #5
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %block, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #5
  %call = call i32 @ossl_sm4_set_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_sm4_ecb.k, i64 0, i64 0), %struct.SM4_KEY_st* noundef nonnull %key) #4
  %call1 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_sm4_ecb.input, i64 0, i64 0), i64 noundef 16) #4
  call void @ossl_sm4_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %1, %struct.SM4_KEY_st* noundef nonnull %key) #4
  %call5 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_sm4_ecb.expected, i64 0, i64 0), i64 noundef 16) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.032 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call void @ossl_sm4_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %1, %struct.SM4_KEY_st* noundef nonnull %key) #4
  %inc = add nuw nsw i32 %i.032, 1
  %cmp.not = icmp eq i32 %inc, 999999
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !3

for.end:                                          ; preds = %for.body
  %call9 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_sm4_ecb.expected_iter, i64 0, i64 0), i64 noundef 16) #4
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %for.body15

for.body15:                                       ; preds = %for.end, %for.body15
  %i.133 = phi i32 [ %inc19, %for.body15 ], [ 0, %for.end ]
  call void @ossl_sm4_decrypt(i8* noundef nonnull %1, i8* noundef nonnull %1, %struct.SM4_KEY_st* noundef nonnull %key) #4
  %inc19 = add nuw nsw i32 %i.133, 1
  %cmp14.not = icmp eq i32 %inc19, 1000000
  br i1 %cmp14.not, label %for.end20, label %for.body15, !llvm.loop !5

for.end20:                                        ; preds = %for.body15
  %call22 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_sm4_ecb.input, i64 0, i64 0), i64 noundef 16) #4
  %tobool23.not = icmp ne i32 %call22, 0
  %. = zext i1 %tobool23.not to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end20, %for.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.end ], [ %., %for.end20 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @ossl_sm4_set_key(i8* noundef, %struct.SM4_KEY_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @ossl_sm4_encrypt(i8* noundef, i8* noundef, %struct.SM4_KEY_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @ossl_sm4_decrypt(i8* noundef, i8* noundef, %struct.SM4_KEY_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
