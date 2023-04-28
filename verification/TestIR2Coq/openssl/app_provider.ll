; ModuleID = 'apps/lib/app_provider.c'
source_filename = "apps/lib/app_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.stack_st_OSSL_PROVIDER = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [105 x i8] c"%s: unable to load provider %s\0AHint: use -provider-path option or OPENSSL_MODULES environment variable.\0A\00", align 1
@bio_err = external local_unnamed_addr global %struct.bio_st*, align 8
@app_providers = internal unnamed_addr global %struct.stack_st_OSSL_PROVIDER* null, align 8
@provider_option_given = internal unnamed_addr global i1 false, align 4

; Function Attrs: noinline nounwind uwtable
define i32 @app_provider_load(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %provider_name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %provider_name) #3
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @opt_getprog() #3
  %call2 = tail call i32 (i8*, ...) @opt_printf_stderr(i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i8* noundef %call1, i8* noundef %provider_name) #3
  %0 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !4
  tail call void @ERR_print_errors(%struct.bio_st* noundef %0) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** @app_providers, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.stack_st_OSSL_PROVIDER* %1, null
  br i1 %cmp3, label %if.end6, label %lor.lhs.false

if.end6:                                          ; preds = %if.end
  %call5 = tail call fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new_null() #4
  store %struct.stack_st_OSSL_PROVIDER* %call5, %struct.stack_st_OSSL_PROVIDER** @app_providers, align 8, !tbaa !4
  %cmp7 = icmp eq %struct.stack_st_OSSL_PROVIDER* %call5, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end, %if.end6
  %2 = phi %struct.stack_st_OSSL_PROVIDER* [ %call5, %if.end6 ], [ %1, %if.end ]
  %call8 = tail call fastcc i32 @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef nonnull %2, %struct.ossl_provider_st* noundef nonnull %call) #4
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %cleanup

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  tail call void @app_providers_cleanup() #4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @opt_printf_stderr(i8* noundef, ...) local_unnamed_addr #1

declare i8* @opt_getprog() local_unnamed_addr #1

declare void @ERR_print_errors(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OSSL_PROVIDER* @sk_OSSL_PROVIDER_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #3
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OSSL_PROVIDER*
  ret %struct.stack_st_OSSL_PROVIDER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OSSL_PROVIDER_push(%struct.stack_st_OSSL_PROVIDER* noundef %sk, %struct.ossl_provider_st* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  %1 = bitcast %struct.ossl_provider_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @app_providers_cleanup() local_unnamed_addr #0 {
entry:
  %0 = load %struct.stack_st_OSSL_PROVIDER*, %struct.stack_st_OSSL_PROVIDER** @app_providers, align 8, !tbaa !4
  tail call fastcc void @sk_OSSL_PROVIDER_pop_free(%struct.stack_st_OSSL_PROVIDER* noundef %0) #4
  store %struct.stack_st_OSSL_PROVIDER* null, %struct.stack_st_OSSL_PROVIDER** @app_providers, align 8, !tbaa !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OSSL_PROVIDER_pop_free(%struct.stack_st_OSSL_PROVIDER* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OSSL_PROVIDER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.ossl_provider_st*)* @provider_free to void (i8*)*)) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @provider_free(%struct.ossl_provider_st* noundef %prov) #0 {
entry:
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @opt_provider(i32 noundef %opt) local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @provider_option_given, align 4
  store i1 true, i1* @provider_option_given, align 4
  switch i32 %opt, label %sw.epilog [
    i32 1600, label %cleanup
    i32 1604, label %cleanup
    i32 1601, label %sw.bb1
    i32 1602, label %sw.bb4
    i32 1603, label %sw.bb7
  ]

sw.bb1:                                           ; preds = %entry
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #3
  %call2 = tail call i8* @opt_arg() #3
  %call3 = tail call i32 @app_provider_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %call2) #4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call5 = tail call i8* @opt_arg() #3
  %call6 = tail call fastcc i32 @opt_provider_path(i8* noundef %call5) #4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %call8 = tail call i8* @opt_arg() #3
  %call9 = tail call i32 @app_set_propq(i8* noundef %call8) #3
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  store i1 %.b, i1* @provider_option_given, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %entry, %sw.epilog, %sw.bb7, %sw.bb4, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb1 ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %retval.0
}

declare %struct.ossl_lib_ctx_st* @app_get0_libctx() local_unnamed_addr #1

declare i8* @opt_arg() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @opt_provider_path(i8* noundef %path) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i8* %path, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %path, align 1, !tbaa !8
  %cmp1 = icmp eq i8 %0, 0
  %spec.store.select = select i1 %cmp1, i8* null, i8* %path
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %path.addr.0 = phi i8* [ %spec.store.select, %land.lhs.true ], [ null, %entry ]
  %call = tail call %struct.ossl_lib_ctx_st* @app_get0_libctx() #3
  %call3 = tail call i32 @OSSL_PROVIDER_set_default_search_path(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef %path.addr.0) #3
  ret i32 %call3
}

declare i32 @app_set_propq(i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @opt_provider_option_given() local_unnamed_addr #2 {
entry:
  %.b = load i1, i1* @provider_option_given, align 4
  %0 = zext i1 %.b to i32
  ret i32 %0
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare i32 @OSSL_PROVIDER_set_default_search_path(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{!6, !6, i64 0}
