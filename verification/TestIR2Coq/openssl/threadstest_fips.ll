; ModuleID = 'test/threadstest_fips.c'
source_filename = "test/threadstest_fips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"test_fips_rand_leak\00", align 1
@success = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"test/threadstest_fips.c\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"run_thread(&thread, thread_fips_rand_fetch)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"wait_for_thread(thread)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"md = EVP_MD_fetch(NULL, \22SHA2-256\22, NULL)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_fips_rand_leak) #4
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fips_rand_leak() #0 {
entry:
  %thread = alloca i64, align 8
  %0 = bitcast i64* %thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i1 true, i1* @success, align 4
  %call = call fastcc i32 @run_thread(i64* noundef nonnull %thread) #6
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %thread, align 8, !tbaa !3
  %call2 = call fastcc i32 @wait_for_thread(i64 noundef %1) #6
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv4) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %.b = load i1, i1* @success, align 4
  %conv10 = zext i1 %.b to i32
  %call11 = call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ %call11, %if.end8 ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_thread(i64* noundef %t) unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_create(i64* noundef %t, %union.pthread_attr_t* noundef null, i8* (i8*)* noundef nonnull @thread_run, i8* noundef bitcast (void ()* @thread_fips_rand_fetch to i8*)) #4
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal void @thread_fips_rand_fetch() #0 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* noundef null) #4
  %cmp = icmp ne %struct.evp_md_st* %call, null
  %conv = zext i1 %cmp to i32
  %call1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* @success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @wait_for_thread(i64 noundef %thread) unnamed_addr #0 {
entry:
  %call = tail call i32 @pthread_join(i64 noundef %thread, i8** noundef null) #4
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64* noundef, %union.pthread_attr_t* noundef, i8* (i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @thread_run(i8* nocapture noundef readonly %arg) #0 {
entry:
  %0 = bitcast i8* %arg to void ()*
  tail call void %0() #4
  ret i8* null
}

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare dso_local i32 @pthread_join(i64 noundef, i8** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
