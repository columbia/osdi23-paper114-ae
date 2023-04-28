; ModuleID = 'crypto/provider.c'
source_filename = "crypto/provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_core_handle_st = type opaque
%struct.ossl_dispatch_st = type { i32, void ()* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_algorithm_st = type { i8*, i8*, %struct.ossl_dispatch_st*, i8* }
%struct.OSSL_PROVIDER_INFO = type { i8*, i8*, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)*, %struct.stack_st_INFOPAIR*, i8 }
%struct.stack_st_INFOPAIR = type opaque

@.str = private unnamed_addr constant [18 x i8] c"crypto/provider.c\00", align 1
@__func__.OSSL_PROVIDER_add_builtin = private unnamed_addr constant [26 x i8] c"OSSL_PROVIDER_add_builtin\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @OSSL_PROVIDER_try_load(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 noundef %retain_fallbacks) local_unnamed_addr #0 {
entry:
  %actual = alloca %struct.ossl_provider_st*, align 8
  %0 = bitcast %struct.ossl_provider_st** %actual to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %call = tail call %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 noundef 0) #5
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %if.then, label %if.end4.thread

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef null, i32 noundef 0) #5
  %cmp2 = icmp eq %struct.ossl_provider_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then
  %call5 = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef nonnull %call1, i32 noundef 1, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %land.lhs.true

if.end4.thread:                                   ; preds = %entry
  %call526 = tail call i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef nonnull %call, i32 noundef 1, i32 noundef 0) #5
  %tobool.not27 = icmp eq i32 %call526, 0
  br i1 %tobool.not27, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end4.thread, %if.end4
  %prov.029 = phi %struct.ossl_provider_st* [ %call, %if.end4.thread ], [ %call1, %if.end4 ]
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %prov.029) #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  store %struct.ossl_provider_st* %call1, %struct.ossl_provider_st** %actual, align 8, !tbaa !4
  %call9 = call i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef nonnull %call1, %struct.ossl_provider_st** noundef nonnull %actual, i32 noundef %retain_fallbacks) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %actual, align 8, !tbaa !4
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %call12 = call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef nonnull %call1) #5
  call void @ossl_provider_free(%struct.ossl_provider_st* noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4.thread, %land.lhs.true.if.end13_crit_edge, %if.then, %if.then11, %if.then6
  %retval.0 = phi %struct.ossl_provider_st* [ null, %if.then11 ], [ null, %if.then6 ], [ null, %if.then ], [ %.pre, %land.lhs.true.if.end13_crit_edge ], [ %call, %if.end4.thread ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.ossl_provider_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.ossl_provider_st* @ossl_provider_find(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @ossl_provider_new(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_provider_activate(%struct.ossl_provider_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_provider_free(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @ossl_provider_add_to_store(%struct.ossl_provider_st* noundef, %struct.ossl_provider_st** noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_disable_fallback_loading(%struct.ossl_lib_ctx_st* noundef %libctx) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_try_load(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.ossl_provider_st* [ %call1, %if.then ], [ null, %entry ]
  ret %struct.ossl_provider_st* %retval.0
}

declare i32 @ossl_provider_disable_fallback_loading(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_deactivate(%struct.ossl_provider_st* noundef %prov) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @ossl_provider_free(%struct.ossl_provider_st* noundef %prov) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @OSSL_PROVIDER_gettable_params(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_param_st* @ossl_provider_gettable_params(%struct.ossl_provider_st* noundef %prov) #5
  ret %struct.ossl_param_st* %call
}

declare %struct.ossl_param_st* @ossl_provider_gettable_params(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_get_params(%struct.ossl_provider_st* noundef %prov, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_get_params(%struct.ossl_provider_st* noundef %prov, %struct.ossl_param_st* noundef %params) #5
  ret i32 %call
}

declare i32 @ossl_provider_get_params(%struct.ossl_provider_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_algorithm_st* @OSSL_PROVIDER_query_operation(%struct.ossl_provider_st* noundef %prov, i32 noundef %operation_id, i32* noundef %no_cache) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_algorithm_st* @ossl_provider_query_operation(%struct.ossl_provider_st* noundef %prov, i32 noundef %operation_id, i32* noundef %no_cache) #5
  ret %struct.ossl_algorithm_st* %call
}

declare %struct.ossl_algorithm_st* @ossl_provider_query_operation(%struct.ossl_provider_st* noundef, i32 noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OSSL_PROVIDER_unquery_operation(%struct.ossl_provider_st* noundef %prov, i32 noundef %operation_id, %struct.ossl_algorithm_st* noundef %algs) local_unnamed_addr #0 {
entry:
  tail call void @ossl_provider_unquery_operation(%struct.ossl_provider_st* noundef %prov, i32 noundef %operation_id, %struct.ossl_algorithm_st* noundef %algs) #5
  ret void
}

declare void @ossl_provider_unquery_operation(%struct.ossl_provider_st* noundef, i32 noundef, %struct.ossl_algorithm_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_PROVIDER_get0_provider_ctx(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_provider_prov_ctx(%struct.ossl_provider_st* noundef %prov) #5
  ret i8* %call
}

declare i8* @ossl_provider_prov_ctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_dispatch_st* @OSSL_PROVIDER_get0_dispatch(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ossl_dispatch_st* @ossl_provider_get0_dispatch(%struct.ossl_provider_st* noundef %prov) #5
  ret %struct.ossl_dispatch_st* %call
}

declare %struct.ossl_dispatch_st* @ossl_provider_get0_dispatch(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_self_test(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_self_test(%struct.ossl_provider_st* noundef %prov) #5
  ret i32 %call
}

declare i32 @ossl_provider_self_test(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_get_capabilities(%struct.ossl_provider_st* noundef %prov, i8* noundef %capability, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_get_capabilities(%struct.ossl_provider_st* noundef %prov, i8* noundef %capability, i32 (%struct.ossl_param_st*, i8*)* noundef %cb, i8* noundef %arg) #5
  ret i32 %call
}

declare i32 @ossl_provider_get_capabilities(%struct.ossl_provider_st* noundef, i8* noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_add_builtin(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* noundef %init_fn) local_unnamed_addr #0 {
entry:
  %entry1 = alloca %struct.OSSL_PROVIDER_INFO, align 8
  %0 = bitcast %struct.OSSL_PROVIDER_INFO* %entry1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #4
  %cmp = icmp eq i8* %name, null
  %cmp2 = icmp eq i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %init_fn, null
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_PROVIDER_add_builtin, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 40) #5
  %call3 = call i8* @CRYPTO_strdup(i8* noundef nonnull %name, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #5
  %name4 = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry1, i64 0, i32 0
  store i8* %call3, i8** %name4, align 8, !tbaa !8
  %cmp6 = icmp eq i8* %call3, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.OSSL_PROVIDER_add_builtin, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.OSSL_PROVIDER_INFO, %struct.OSSL_PROVIDER_INFO* %entry1, i64 0, i32 2
  store i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)* %init_fn, i32 (%struct.ossl_core_handle_st*, %struct.ossl_dispatch_st*, %struct.ossl_dispatch_st**, i8**)** %init, align 8, !tbaa !11
  %call9 = call i32 @ossl_provider_info_add_to_store(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.OSSL_PROVIDER_INFO* noundef nonnull %entry1) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @ossl_provider_info_clear(%struct.OSSL_PROVIDER_INFO* noundef nonnull %entry1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then10, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then10 ], [ 1, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_provider_info_add_to_store(%struct.ossl_lib_ctx_st* noundef, %struct.OSSL_PROVIDER_INFO* noundef) local_unnamed_addr #2

declare void @ossl_provider_info_clear(%struct.OSSL_PROVIDER_INFO* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @OSSL_PROVIDER_get0_name(%struct.ossl_provider_st* noundef %prov) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ossl_provider_name(%struct.ossl_provider_st* noundef %prov) #5
  ret i8* %call
}

declare i8* @ossl_provider_name(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @OSSL_PROVIDER_do_all(%struct.ossl_lib_ctx_st* noundef %ctx, i32 (%struct.ossl_provider_st*, i8*)* noundef %cb, i8* noundef %cbdata) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_provider_doall_activated(%struct.ossl_lib_ctx_st* noundef %ctx, i32 (%struct.ossl_provider_st*, i8*)* noundef %cb, i8* noundef %cbdata) #5
  ret i32 %call
}

declare i32 @ossl_provider_doall_activated(%struct.ossl_lib_ctx_st* noundef, i32 (%struct.ossl_provider_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !5, i64 16}
