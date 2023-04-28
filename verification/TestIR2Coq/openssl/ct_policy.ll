; ModuleID = 'crypto/ct/ct_policy.c'
source_filename = "crypto/ct/ct_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_policy_eval_ctx_st = type { %struct.x509_st*, %struct.x509_st*, %struct.ctlog_store_st*, i64, %struct.ossl_lib_ctx_st*, i8* }
%struct.x509_st = type opaque
%struct.ctlog_store_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/ct/ct_policy.c\00", align 1
@__func__.CT_POLICY_EVAL_CTX_new_ex = private unnamed_addr constant [26 x i8] c"CT_POLICY_EVAL_CTX_new_ex\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 31) #5
  %0 = bitcast i8* %call to %struct.ct_policy_eval_ctx_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.CT_POLICY_EVAL_CTX_new_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx1 = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %libctx1 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %1, align 8, !tbaa !4
  %cmp2.not = icmp eq i8* %propq, null
  br i1 %cmp2.not, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #5
  %propq5 = getelementptr inbounds i8, i8* %call, i64 40
  %2 = bitcast i8* %propq5 to i8**
  store i8* %call4, i8** %2, align 8, !tbaa !10
  %cmp7 = icmp eq i8* %call4, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then3
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.CT_POLICY_EVAL_CTX_new_ex, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #5
  br label %cleanup

if.end10:                                         ; preds = %if.then3, %if.end
  %call11 = tail call i64 @time(i64* noundef null) #5
  %3 = mul i64 %call11, 1000
  %mul = add i64 %3, 300000
  %epoch_time_in_ms = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %epoch_time_in_ms to i64*
  store i64 %mul, i64* %4, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  %retval.0 = phi %struct.ct_policy_eval_ctx_st* [ null, %if.then ], [ null, %if.then8 ], [ %0, %if.end10 ]
  ret %struct.ct_policy_eval_ctx_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ct_policy_eval_ctx_st* @CT_POLICY_EVAL_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret %struct.ct_policy_eval_ctx_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @CT_POLICY_EVAL_CTX_free(%struct.ct_policy_eval_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ct_policy_eval_ctx_st* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cert = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !12
  tail call void @X509_free(%struct.x509_st* noundef %0) #5
  %issuer = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !13
  tail call void @X509_free(%struct.x509_st* noundef %1) #5
  %propq = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 5
  %2 = load i8*, i8** %propq, align 8, !tbaa !10
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 66) #5
  %3 = bitcast %struct.ct_policy_eval_ctx_st* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @X509_free(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CT_POLICY_EVAL_CTX_set1_cert(%struct.ct_policy_eval_ctx_st* nocapture noundef writeonly %ctx, %struct.x509_st* noundef %cert) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef %cert) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cert1 = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 0
  store %struct.x509_st* %cert, %struct.x509_st** %cert1, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @X509_up_ref(%struct.x509_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CT_POLICY_EVAL_CTX_set1_issuer(%struct.ct_policy_eval_ctx_st* nocapture noundef writeonly %ctx, %struct.x509_st* noundef %issuer) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @X509_up_ref(%struct.x509_st* noundef %issuer) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %issuer1 = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 1
  store %struct.x509_st* %issuer, %struct.x509_st** %issuer1, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(%struct.ct_policy_eval_ctx_st* nocapture noundef writeonly %ctx, %struct.ctlog_store_st* noundef %log_store) local_unnamed_addr #3 {
entry:
  %log_store1 = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 2
  store %struct.ctlog_store_st* %log_store, %struct.ctlog_store_st** %log_store1, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @CT_POLICY_EVAL_CTX_set_time(%struct.ct_policy_eval_ctx_st* nocapture noundef writeonly %ctx, i64 noundef %time_in_ms) local_unnamed_addr #3 {
entry:
  %epoch_time_in_ms = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 3
  store i64 %time_in_ms, i64* %epoch_time_in_ms, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @CT_POLICY_EVAL_CTX_get0_cert(%struct.ct_policy_eval_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %cert = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 0
  %0 = load %struct.x509_st*, %struct.x509_st** %cert, align 8, !tbaa !12
  ret %struct.x509_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.x509_st* @CT_POLICY_EVAL_CTX_get0_issuer(%struct.ct_policy_eval_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %issuer = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 1
  %0 = load %struct.x509_st*, %struct.x509_st** %issuer, align 8, !tbaa !13
  ret %struct.x509_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ctlog_store_st* @CT_POLICY_EVAL_CTX_get0_log_store(%struct.ct_policy_eval_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %log_store = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 2
  %0 = load %struct.ctlog_store_st*, %struct.ctlog_store_st** %log_store, align 8, !tbaa !14
  ret %struct.ctlog_store_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @CT_POLICY_EVAL_CTX_get_time(%struct.ct_policy_eval_ctx_st* nocapture noundef readonly %ctx) local_unnamed_addr #4 {
entry:
  %epoch_time_in_ms = getelementptr inbounds %struct.ct_policy_eval_ctx_st, %struct.ct_policy_eval_ctx_st* %ctx, i64 0, i32 3
  %0 = load i64, i64* %epoch_time_in_ms, align 8, !tbaa !11
  ret i64 %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 32}
!5 = !{!"ct_policy_eval_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !6, i64 40}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!5, !6, i64 40}
!11 = !{!5, !9, i64 24}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !6, i64 8}
!14 = !{!5, !6, i64 16}
