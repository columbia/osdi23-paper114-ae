; ModuleID = 'test/sysdefaulttest.c'
source_filename = "test/sysdefaulttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_ctx_st = type opaque
%struct.ossl_init_settings_st = type opaque
%struct.ssl_method_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"test/sysdefaulttest.c\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ctx = SSL_CTX_new(TLS_method())\00", align 1
@ctx = internal unnamed_addr global %struct.ssl_ctx_st* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"test_func\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SSL_CTX_get_min_proto_version(ctx)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"TLS1_2_VERSION\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"SSL_CTX_get_max_proto_version(ctx)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"min/max version setting incorrect\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @global_init() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @OPENSSL_init_ssl(i64 noundef 30272, %struct.ossl_init_settings_st* noundef null) #2
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

declare dso_local i32 @OPENSSL_init_ssl(i64 noundef, %struct.ossl_init_settings_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ssl_method_st* @TLS_method() #2
  %call1 = tail call %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef %call) #2
  store %struct.ssl_ctx_st* %call1, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %0 = bitcast %struct.ssl_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_func) #2
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_ctx_st* @SSL_CTX_new(%struct.ssl_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ssl_method_st* @TLS_method() local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_func() #0 {
entry:
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %0, i32 noundef 130, i64 noundef 0, i8* noundef null) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv, i32 noundef 771) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  %call2 = tail call i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef %1, i32 noundef 131, i64 noundef 0, i8* noundef null) #2
  %conv3 = trunc i64 %call2 to i32
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv3, i32 noundef 771) #2
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #2
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load %struct.ssl_ctx_st*, %struct.ssl_ctx_st** @ctx, align 8, !tbaa !3
  tail call void @SSL_CTX_free(%struct.ssl_ctx_st* noundef %0) #2
  ret void
}

declare dso_local void @SSL_CTX_free(%struct.ssl_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @SSL_CTX_ctrl(%struct.ssl_ctx_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
