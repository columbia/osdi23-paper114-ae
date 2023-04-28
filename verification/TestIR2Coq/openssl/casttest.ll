; ModuleID = 'test/casttest.c'
source_filename = "test/casttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast_key_st = type { [32 x i32], i32 }

@.str = private unnamed_addr constant [17 x i8] c"cast_test_vector\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cast_test_iterations\00", align 1
@k_len = internal unnamed_addr constant [3 x i32] [i32 16, i32 10, i32 5], align 4
@k = internal global [16 x i8] c"\01#Eg\124Vx#Eg\894Vx\9A", align 16
@in = internal global [8 x i8] c"\01#Eg\89\AB\CD\EF", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"test/casttest.c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"c[z]\00", align 1
@c = internal global [3 x [8 x i8]] [[8 x i8] c"#\8BO\E5\84~D\B2", [8 x i8] c"\EBjq\1A,\02'\1B", [8 x i8] c"z\C8\16\D1n\9B0."], align 16
@.str.5 = private unnamed_addr constant [42 x i8] c"CAST_ENCRYPT iteration %d failed (len=%d)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"CAST_DECRYPT iteration %d failed (len=%d)\00", align 1
@in_a = internal global [16 x i8] c"\01#Eg\124Vx#Eg\894Vx\9A", align 16
@in_b = internal global [16 x i8] c"\01#Eg\124Vx#Eg\894Vx\9A", align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"out_a\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"c_a\00", align 1
@c_a = internal global [16 x i8] c"\EE\A9\D0\A2I\FD;\A6\B3Co\B8\9Dm\CA\92", align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"out_b\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"c_b\00", align 1
@c_b = internal global [16 x i8] c"\B2\C9^\B0\0C1\ADq\80\AC\05\B8\E8=in", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @cast_test_vector, i32 noundef 3, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @cast_test_iterations) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast_test_vector(i32 noundef %z) #0 {
entry:
  %key = alloca %struct.cast_key_st, align 4
  %out = alloca [80 x i8], align 16
  %0 = bitcast %struct.cast_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 132, i8* nonnull %0) #5
  %1 = getelementptr inbounds [80 x i8], [80 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #5
  %idxprom = sext i32 %z to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @k_len, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !3
  call void @CAST_set_key(%struct.cast_key_st* noundef nonnull %key, i32 noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @k, i64 0, i64 0)) #4
  call void @CAST_ecb_encrypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 0), i8* noundef nonnull %1, %struct.cast_key_st* noundef nonnull %key, i32 noundef 1) #4
  %arraydecay4 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @c, i64 0, i64 %idxprom, i64 0
  %call = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef nonnull %arraydecay4, i64 noundef 8) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 noundef %z, i32 noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %testresult.0 = phi i32 [ 1, %entry ], [ 0, %if.then ]
  call void @CAST_ecb_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %1, %struct.cast_key_st* noundef nonnull %key, i32 noundef 0) #4
  %call10 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @in, i64 0, i64 0), i64 noundef 8) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 noundef %z, i32 noundef %2) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %testresult.1 = phi i32 [ %testresult.0, %if.end ], [ 0, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 132, i8* nonnull %0) #5
  ret i32 %testresult.1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @cast_test_iterations() #0 {
entry:
  %key = alloca %struct.cast_key_st, align 4
  %key_b = alloca %struct.cast_key_st, align 4
  %out_a = alloca [16 x i8], align 16
  %out_b = alloca [16 x i8], align 16
  %0 = bitcast %struct.cast_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 132, i8* nonnull %0) #5
  %1 = bitcast %struct.cast_key_st* %key_b to i8*
  call void @llvm.lifetime.start.p0i8(i64 132, i8* nonnull %1) #5
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %out_a, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %out_b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #5
  %call = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @in_a, i64 0, i64 0), i64 noundef 16) #4
  %call2 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @in_b, i64 0, i64 0), i64 noundef 16) #4
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* %out_a, i64 0, i64 8
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %out_b, i64 0, i64 8
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %l.020 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @CAST_set_key(%struct.cast_key_st* noundef nonnull %key_b, i32 noundef 16, i8* noundef nonnull %3) #4
  call void @CAST_ecb_encrypt(i8* noundef nonnull %2, i8* noundef nonnull %2, %struct.cast_key_st* noundef nonnull %key_b, i32 noundef 1) #4
  call void @CAST_ecb_encrypt(i8* noundef nonnull %arrayidx5, i8* noundef nonnull %arrayidx5, %struct.cast_key_st* noundef nonnull %key_b, i32 noundef 1) #4
  call void @CAST_set_key(%struct.cast_key_st* noundef nonnull %key, i32 noundef 16, i8* noundef nonnull %2) #4
  call void @CAST_ecb_encrypt(i8* noundef nonnull %3, i8* noundef nonnull %3, %struct.cast_key_st* noundef nonnull %key, i32 noundef 1) #4
  call void @CAST_ecb_encrypt(i8* noundef nonnull %arrayidx10, i8* noundef nonnull %arrayidx10, %struct.cast_key_st* noundef nonnull %key, i32 noundef 1) #4
  %inc = add nuw nsw i64 %l.020, 1
  %exitcond.not = icmp eq i64 %inc, 1000000
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !7

for.end:                                          ; preds = %for.body
  %call13 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @c_a, i64 0, i64 0), i64 noundef 16) #4
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call15 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @c_b, i64 0, i64 0), i64 noundef 16) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %testresult.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 132, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 132, i8* nonnull %0) #5
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @CAST_set_key(%struct.cast_key_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @CAST_ecb_encrypt(i8* noundef, i8* noundef, %struct.cast_key_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

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
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
