; ModuleID = 'apps/lib/app_libctx.c'
source_filename = "apps/lib/app_libctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_lib_ctx_st = type opaque

@app_propq = internal unnamed_addr global i8* null, align 8
@app_libctx = internal unnamed_addr global %struct.ossl_lib_ctx_st* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to create null provider\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create library context\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @app_set_propq(i8* noundef %arg) local_unnamed_addr #0 {
entry:
  store i8* %arg, i8** @app_propq, align 8, !tbaa !4
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @app_get0_propq() local_unnamed_addr #1 {
entry:
  %0 = load i8*, i8** @app_propq, align 8, !tbaa !4
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @app_libctx, align 8, !tbaa !4
  ret %struct.ossl_lib_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_lib_ctx_st* @app_create_libctx() local_unnamed_addr #2 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @app_libctx, align 8, !tbaa !4
  %cmp = icmp eq %struct.ossl_lib_ctx_st* %0, null
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call i32 @app_provider_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.then
  %call2 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %return

if.end4:                                          ; preds = %if.then
  %call3 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #4
  store %struct.ossl_lib_ctx_st* %call3, %struct.ossl_lib_ctx_st** @app_libctx, align 8, !tbaa !4
  %cmp5 = icmp eq %struct.ossl_lib_ctx_st* %call3, null
  br i1 %cmp5, label %if.then6, label %return

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #4
  %.pre = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @app_libctx, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end4, %if.then6, %entry, %if.then1
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ null, %if.then1 ], [ %0, %entry ], [ %.pre, %if.then6 ], [ %call3, %if.end4 ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

declare i32 @app_provider_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @opt_printf_stderr(i8* noundef, ...) local_unnamed_addr #3

declare %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
