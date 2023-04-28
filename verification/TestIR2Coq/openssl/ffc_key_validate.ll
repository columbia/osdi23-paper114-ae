; ModuleID = 'crypto/ffc/ffc_key_validate.c'
source_filename = "crypto/ffc/ffc_key_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffc_params_st = type { %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i8*, i64, i32, i32, i32, i32, i32, i8*, i8* }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.ossl_lib_ctx_st = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_validate_public_key_partial(%struct.ffc_params_st* nocapture noundef readonly %params, %struct.bignum_st* noundef %pub_key, i32* nocapture noundef %ret) local_unnamed_addr #0 {
entry:
  store i32 0, i32* %ret, align 4, !tbaa !4
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #2
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %if.end24, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #2
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #2
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call1, i64 noundef 1) #2
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then23, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef nonnull %call1) #2
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then23.sink.split, label %if.end9

if.end9:                                          ; preds = %if.end5
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %0) #2
  %cmp11 = icmp eq %struct.bignum_st* %call10, null
  br i1 %cmp11, label %if.then23, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end9
  %call13 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %call1, i64 noundef 1) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then23, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12
  %call17 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef nonnull %call1) #2
  %cmp18 = icmp sgt i32 %call17, -1
  br i1 %cmp18, label %if.then23.sink.split, label %if.then23

if.then23.sink.split:                             ; preds = %if.end16, %if.end5
  %.sink44 = phi i32 [ 1, %if.end5 ], [ 2, %if.end16 ]
  %1 = load i32, i32* %ret, align 4, !tbaa !4
  %or20 = or i32 %1, %.sink44
  store i32 %or20, i32* %ret, align 4, !tbaa !4
  br label %if.then23

if.then23:                                        ; preds = %if.then23.sink.split, %if.end16, %if.end9, %lor.lhs.false12, %if.end, %lor.lhs.false
  %ok.0.ph = phi i32 [ 1, %if.end16 ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false12 ], [ 0, %if.end9 ], [ 0, %if.end ], [ 0, %if.then23.sink.split ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #2
  br label %if.end24

if.end24:                                         ; preds = %entry, %if.then23
  %ok.043 = phi i32 [ %ok.0.ph, %if.then23 ], [ 0, %entry ]
  ret i32 %ok.043
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_validate_public_key(%struct.ffc_params_st* nocapture noundef readonly %params, %struct.bignum_st* noundef %pub_key, i32* nocapture noundef %ret) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ffc_validate_public_key_partial(%struct.ffc_params_st* noundef %params, %struct.bignum_st* noundef %pub_key, i32* noundef %ret) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %q = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %cmp.not = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #2
  %cmp3 = icmp eq %struct.bignum_ctx* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then1
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call2) #2
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call2) #2
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !12
  %p = getelementptr inbounds %struct.ffc_params_st, %struct.ffc_params_st* %params, i64 0, i32 0
  %2 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !8
  %call9 = tail call i32 @BN_mod_exp(%struct.bignum_st* noundef nonnull %call6, %struct.bignum_st* noundef %pub_key, %struct.bignum_st* noundef %1, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef nonnull %call2) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then19, label %if.end12

if.end12:                                         ; preds = %lor.lhs.false
  %call13 = tail call i32 @BN_is_one(%struct.bignum_st* noundef nonnull %call6) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.then19

if.then15:                                        ; preds = %if.end12
  %3 = load i32, i32* %ret, align 4, !tbaa !4
  %or = or i32 %3, 4
  store i32 %or, i32* %ret, align 4, !tbaa !4
  br label %if.then19

if.then19:                                        ; preds = %if.end5, %if.then15, %lor.lhs.false, %if.end12
  %ok.0.ph = phi i32 [ 1, %if.end12 ], [ 0, %lor.lhs.false ], [ 0, %if.then15 ], [ 0, %if.end5 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call2) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call2) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end, %if.then19, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ok.0.ph, %if.then19 ], [ 0, %if.then1 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @BN_mod_exp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ffc_validate_private_key(%struct.bignum_st* noundef %upper, %struct.bignum_st* noundef %priv, i32* nocapture noundef %ret) local_unnamed_addr #0 {
entry:
  store i32 0, i32* %ret, align 4, !tbaa !4
  %call = tail call %struct.bignum_st* @BN_value_one() #2
  %call1 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %priv, %struct.bignum_st* noundef %call) #2
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %err.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %priv, %struct.bignum_st* noundef %upper) #2
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end, %entry
  %.sink11 = phi i32 [ 16, %entry ], [ 32, %if.end ]
  %0 = load i32, i32* %ret, align 4, !tbaa !4
  %or5 = or i32 %0, %.sink11
  store i32 %or5, i32* %ret, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %err.sink.split, %if.end
  %ok.0 = phi i32 [ 1, %if.end ], [ 0, %err.sink.split ]
  ret i32 %ok.0
}

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"ffc_params_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 8}
