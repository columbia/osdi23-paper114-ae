; ModuleID = 'test/rc2test.c'
source_filename = "test/rc2test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_key_st = type { [64 x i32] }

@.str = private unnamed_addr constant [9 x i8] c"test_rc2\00", align 1
@RC2key = internal global [4 x [16 x i8]] [[16 x i8] zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] zeroinitializer, [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16
@RC2plain = internal global [4 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"test/rc2test.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&RC2cipher[n][0]\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@RC2cipher = internal global [4 x [8 x i8]] [[8 x i8] c"\1C\19\8A\83\8D\F0(\B7", [8 x i8] c"!\82\9Cx\A9\F9\C0t", [8 x i8] c"\13\DB5\17\D3!\86\9E", [8 x i8] c"P\DC\01b\BDu\7F1"], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"&RC2plain[n][0]\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"buf2\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_rc2, i32 noundef 4, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rc2(i32 noundef %n) #0 {
entry:
  %key = alloca %struct.rc2_key_st, align 4
  %buf = alloca [8 x i8], align 1
  %buf2 = alloca [8 x i8], align 1
  %0 = bitcast %struct.rc2_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #4
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #4
  %idxprom = sext i32 %n to i64
  %arrayidx1 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* @RC2key, i64 0, i64 %idxprom, i64 0
  call void @RC2_set_key(%struct.rc2_key_st* noundef nonnull %key, i32 noundef 16, i8* noundef nonnull %arrayidx1, i32 noundef 0) #3
  %arrayidx4 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @RC2plain, i64 0, i64 %idxprom, i64 0
  call void @RC2_ecb_encrypt(i8* noundef nonnull %arrayidx4, i8* noundef nonnull %1, %struct.rc2_key_st* noundef nonnull %key, i32 noundef 1) #3
  %arrayidx7 = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @RC2cipher, i64 0, i64 %idxprom, i64 0
  %call = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %arrayidx7, i64 noundef 8, i8* noundef nonnull %1, i64 noundef 8) #3
  %tobool.not = icmp ne i32 %call, 0
  call void @RC2_ecb_encrypt(i8* noundef nonnull %1, i8* noundef nonnull %2, %struct.rc2_key_st* noundef nonnull %key, i32 noundef 0) #3
  %call15 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %arrayidx4, i64 noundef 8, i8* noundef nonnull %2, i64 noundef 8) #3
  %tobool16.not = icmp ne i32 %call15, 0
  %narrow = select i1 %tobool16.not, i1 %tobool.not, i1 false
  %testresult.1 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #4
  ret i32 %testresult.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @RC2_set_key(%struct.rc2_key_st* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @RC2_ecb_encrypt(i8* noundef, i8* noundef, %struct.rc2_key_st* noundef, i32 noundef) local_unnamed_addr #1

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
